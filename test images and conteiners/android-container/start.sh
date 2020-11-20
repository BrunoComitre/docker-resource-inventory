#!/bin/bash

# Verifica se a Virtualização KVM & Virtualização Aninhada é suportada
function check_kvm() {
  cpu_support_hardware_acceleration=$(grep -cw ".*\(vmx\|svm\).*" /proc/cpuinfo)
  if [ "$cpu_support_hardware_acceleration" != 0 ]; then
    echo 1
  else
    echo 0
  fi
}

# disable_animation = Desativa as animações usando o adb shell - utilizado como funções do desenvolvedor
# keyboard_language =  DEsativa o teclado e ou personaliza o idioma local padrão

function config_emulator_settings() {
  adb shell "settings put global window_animation_scale 0.0"  # disable_animation (animação da janela)
  adb shell "settings put global transition_animation_scale 0.0"  # disable_animation (animação de transição)
  adb shell "settings put global animator_duration_scale 0.0"  # disable_animation (duranção de animação)
  adb shell "settings put global always_finish_activities 1"
  # adb shell "settings put secure show_ime_with_hard_keyboard 0"  # keyboard_language
  # adb shell "am broadcast -a com.android.intent.action.SET_LOCALE --es com.android.intent.extra.LOCALE EN"  # keyboard_language
  # adb shell "am broadcast -a com.android.intent.action.SET_LOCALE --es com.android.intent.extra.LOCALE PT"  # keyboard_language
}

# Opções de inicialização do Emulador
# -no-boot-anim = Desativando a animação de inicialização
# -acel auto = Determina automaticamente se a aceleração é compatível e usada quando possível (NÃO IMPLEMENTADO)
# -no-window -gpu off = Útil para executar o emulador sem servidores sem comando, mas podendo acessar por adb ou console
# -skin 1440x2880 = Caso queira deixar a tela com outras dimensões
# -memory 2048 = COnstrução da CI Server com 4GB de RAM
# -wipe-data = Exclua os dados do usuário e reinicie o emulador
# -no-snapshot = Inicia pelo estado inicial excluindo dados instantâneos quando o emulador for fechado
# -noaudio = Desabilite aúdio
# -camera-back none = Desabilite câmera traseira
# -camera-front none = Desabilite câmera frontal
# -no-snapshot-save = Mantém o estado inicial mantendo dados instantâneos quando o emulador for fechado
function wait_emulator_to_be_ready() {
  adb devices | grep emulator | cut -f1 | while read line; do adb -s $line emu kill; done
  emulator -avd "${EMULATOR_NAME_x86}" -verbose -no-boot-anim -noaudio -camera-back none -camera-front none -no-snapshot-save -wipe-data -no-snapshot -no-window -gpu off & # -read-only &
  boot_completed=false
  while [ "$boot_completed" == false ]; do
    status=$(adb wait-for-device shell getprop sys.boot_completed | tr -d '\r')
    echo "Boot Status: $status"

    if [ "$status" == "1" ]; then
      boot_completed=true
    else
      sleep 1
    fi
  done
}

function run_devices() {
  num_devices=0
  while [ $num_devices -lt 3 ]
  do
    avd_name="emu_${num_devices}"
    avdmanager --verbose create avd --force --name "${avd_name}" --device "pixel" --package "system-images;android-28;google_apis;x86_64" --tag "google_apis" --abi "x86_64"
    sh -c "emulator -avd "${avd_name}" -verbose -no-boot-anim -noaudio -camera-back none -camera-front none -no-snapshot-save -wipe-data -no-window -gpu swiftshader_indirect -read-only" &
    num_devices=$((num_devices+1))
    sleep 20
  done
}

function start_emulator_if_possible() {
  check_kvm=$(check_kvm)
  if [ "$check_kvm" != "1" ]; then
    echo "run emulator failed, nested virtualization is not supported"
    return
  else
    wait_emulator_to_be_ready
    sleep 1
    config_emulator_settings
  fi
}

start_emulator_if_possible

set -eou pipefail

socat tcp-listen:5037,bind=android-dev,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5554,bind=android-dev,fork tcp:127.0.0.1:5554 &
socat tcp-listen:5555,bind=android-dev,fork tcp:127.0.0.1:5555


ip=$(ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}')
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5554,bind=$ip,fork tcp:127.0.0.1:5554 &
socat tcp-listen:5555,bind=$ip,fork tcp:127.0.0.1:5555 &
socat tcp-listen:5556,bind=$ip,fork tcp:127.0.0.1:5556 &
socat tcp-listen:5557,bind=$ip,fork tcp:127.0.0.1:5557 &
socat tcp-listen:5558,bind=$ip,fork tcp:127.0.0.1:5558 &
socat tcp-listen:5559,bind=$ip,fork tcp:127.0.0.1:5559 &
socat tcp-listen:5560,bind=$ip,fork tcp:127.0.0.1:5560 &
adb logcat

sleep infinity
