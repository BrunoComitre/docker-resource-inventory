set -eou pipefail

ip=$(ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}')
# socat tcp-listen:5037,bind=android-dev,fork tcp:127.0.0.1:5037
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5037,bind=$ip,fork tcp:127.0.0.1:5037 &
socat tcp-listen:5554,bind=$ip,fork tcp:127.0.0.1:5554 &
socat tcp-listen:5555,bind=$ip,fork tcp:127.0.0.1:5555 &
socat tcp-listen:5556,bind=$ip,fork tcp:127.0.0.1:5556 &
socat tcp-listen:5557,bind=$ip,fork tcp:127.0.0.1:5557 &
socat tcp-listen:5558,bind=$ip,fork tcp:127.0.0.1:5558 &
socat tcp-listen:5559,bind=$ip,fork tcp:127.0.0.1:5559 &
socat tcp-listen:5560,bind=$ip,fork tcp:127.0.0.1:5560

sleep infinity
