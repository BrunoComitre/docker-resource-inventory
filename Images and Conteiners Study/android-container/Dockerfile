FROM ubuntu:20.04

# Prevent Python from writing pyc files to disk (equivalent to python -B option)
ENV PYTHONDONWRITEBYCODE 1

# Prevent Python from buffering stdout and stderr (equivalent to python -u option)
ENV PYTHONUNBUFFERED 1

ENV DEBIAN_FRONTEND=noninteractive
RUN echo "debconf shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
    echo "debconf shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections

# Build everything here
WORKDIR /

SHELL ["/bin/sh", "-c"]

# Download JDK-8 and fix certificate issues | install Java and essential tools | support multiarch: i386 architecture
ARG JDK_VERSION=8
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y libncurses5:i386 libc6:i386 libstdc++6:i386 lib32gcc1 lib32ncurses6 lib32z1 zlib1g:i386 && \
    apt-get install -y libqt5dbus5:i386 libqt5widgets5:i386 libqt5network5:i386 libqt5gui5:i386 libqt5core5a:i386 && \
    apt-get install -y libxcb-xinerama0:i386 libxkbcommon-x11-0 libglu1 libpulse-dev libasound2 libvirt-daemon && \
    apt-get install -y libx11-6 libx11-xcb1 libssl-dev libxcb1-dev libx11-dev libgl1-mesa-dev libudev-dev libnss3 && \
    apt-get install -y libxcursor-dev libxcomposite-dev libxcomposite1 libxcursor1 libxi6 libxtst6 && \
    # Dependencies to create Android pkg
    apt-get install -y openjdk-${JDK_VERSION}-jdk openjdk-${JDK_VERSION}-jdk-headless gradle git wget curl nano && \
    apt-get install -y zip unzip bzip2 curl socat ant vim build-essential bash p7zip-full chrpath checkinstall && \
    apt-get install -y qt5-default qtbase5-private-dev qtdeclarative5-dev qtpositioning5-dev qtbase5-dev net-tools && \
    # Clean apt cache
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk${JDK_VERSION}-installer && \
    apt-get update && \
    apt-get install -y ca-certificates-java && \
    update-ca-certificates -f && \
    apt-get dist-upgrade -y

# Environments android pre-installed sdk tools/libs
ARG ANDROID_SDK_VERSION=4333796
ARG ANDROID_SDK_PACKAGES_EXTRA=""
ARG ANDROID_HOME="/opt/local/android-sdk"
ENV SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_VERSION}.zip"
ARG ANDROID_VERSION_28="28"
ARG ANDROID_SDK_PACKAGES_TOOL="platform-tools emulator tools"
ARG ANDROID_SDK_PACKAGES_EXTRAS="extras;android;m2repository extras;google;m2repository"
ARG ANDROID_PLATFORM_VERSION_28="platforms;android-${ANDROID_VERSION_28}"
ARG ANDROID_EMULATOR_PACKAGE_28="system-images;android-${ANDROID_VERSION_28};google_apis;x86_64"
ARG ANDROID_BUILD_TOOLS_VERSION_28="build-tools;28.0.3"
ARG ANDROID_SDK_PACKAGES_28="${ANDROID_EMULATOR_PACKAGE_28} ${ANDROID_PLATFORM_VERSION_28} ${ANDROID_BUILD_TOOLS_VERSION_28} ${ANDROID_SDK_PACKAGES_EXTRA}"

# Environments gradle
ARG GRADLE_DIST=bin
ARG GRADLE_VERSION="5.0"
ENV GRADLE_URL="https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-${GRADLE_DIST}.zip" \
    GRADLE_HOME="/opt/gradle/gradle-${GRADLE_VERSION}" \
    PATH="/opt/gradle/gradle-${GRADLE_VERSION}/bin:${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools"
# gradle caching
ENV GRADLE_USER_HOME=/cache
VOLUME $GRADLE_USER_HOME
ARG EMULATOR_NAME='test'

# Download and Install Gradle: https://services.gradle.org/distributions/
RUN curl -o gradle.zip -L "$GRADLE_URL" && \
    unzip -d /opt/gradle gradle.zip && \
    rm gradle.zip

# Download / install Qt
ADD https://code.qt.io/cgit/qbs/qbs.git/plain/scripts/install-qt.sh ./
RUN bash install-qt.sh --version 5.12.4 --target android --toolchain android_arm64_v8a qtbase qt3d qtdeclarative qtandroidextras qtconnectivity qtgamepad qtlocation qtmultimedia qtquickcontrols2 qtremoteobjects qtscxml qtsensors qtserialport qtsvg qtimageformats qttools qtspeech qtwebchannel qtwebsockets qtwebview qtxmlpatterns qttranslations && \
    bash install-qt.sh --version 5.12.6 --target android --toolchain android_arm64_v8a qtbase qt3d qtdeclarative qtandroidextras qtconnectivity qtgamepad qtlocation qtmultimedia qtquickcontrols2 qtremoteobjects qtscxml qtsensors qtserialport qtsvg qtimageformats qttools qtspeech qtwebchannel qtwebsockets qtwebview qtxmlpatterns qttranslations

# Set the QTDIR environment variable
ENV QTDIR="/opt/Qt/5.12.6/x86"

# Install [Android-tools-devel] Android SDK Manager Rebuilds: https://developer.android.com/studio#command-tools
RUN wget $SDK_URL -P /tmp && \
    unzip -d /opt/android /tmp/sdk-tools-linux-${ANDROID_SDK_VERSION}.zip
ENV ANDROID_HOME=/opt/android
ENV PATH "$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

# sdkmanager
RUN mkdir /root/.android/
RUN touch /root/.android/repositories.cfg
RUN yes Y | sdkmanager --licenses

RUN cd $ANDROID_HOME/licenses && \
    echo 8933bad161af4178b1185d1a37fbf41ea5269c55 > $ANDROID_HOME/licenses/android-sdk-license && \
    echo d56f5187479451eabf01fb78af6dfcb131a6481e >> $ANDROID_HOME/licenses/android-sdk-license && \
    echo 24333f8a63b6825ea9c5514f83c2829b004d1fee >> $ANDROID_HOME/licenses/android-sdk-license && \
    echo 84831b9409646a918e30573bab4c9c91346d8abd > $ANDROID_HOME/licenses/android-sdk-preview-license

RUN yes Y | sdkmanager --verbose --no_https ${ANDROID_SDK_PACKAGES_TOOL}
RUN yes Y | sdkmanager --verbose --no_https ${ANDROID_SDK_PACKAGES_EXTRAS}
RUN yes Y | sdkmanager --verbose --no_https ${ANDROID_SDK_PACKAGES_28}

# avdmanager
ENV EMULATOR_NAME_x86="android_x86_64"
RUN echo "no" | avdmanager --verbose create avd --force --name "${EMULATOR_NAME_x86}" --device "pixel" --package "${ANDROID_EMULATOR_PACKAGE_28}" --tag "google_apis" --abi "x86_64"
ENV LD_LIBRARY_PATH "$ANDROID_HOME/emulator/lib64:$ANDROID_HOME/emulator/lib64/qt/lib"

# clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apk/*

ADD start.sh /
RUN chmod +x start.sh

EXPOSE 5037 5038 5901 2222 5554 5555 5900 6080
