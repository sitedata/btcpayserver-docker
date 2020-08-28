#!/bin/bash

# This file is automatically generated by the DockerFileBuildHelper tool, run DockerFileBuildHelper/update-repo.sh to update it
set -e
DOCKERFILE=""


# Build docker-compose-generator
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxamd64.Dockerfile
DOCKERFILE="docker-compose-generator/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="docker-compose-generator/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="docker-compose-generator/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-compose-generator:latest"
git clone https://github.com/btcpayserver/btcpayserver-docker docker-compose-generator
cd docker-compose-generator
git checkout dcg-latest
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-compose-generator:latest" .
cd - && cd ..


# Build docker-compose-builder
# https://raw.githubusercontent.com/btcpayserver/docker-compose-builder/v1.24.1/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-compose-builder/v1.24.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-compose-builder/v1.24.1/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-compose-builder:1.24.1"
git clone https://github.com/btcpayserver/docker-compose-builder docker-compose-builder
cd docker-compose-builder
git checkout v1.24.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-compose-builder:1.24.1" .
cd - && cd ..


# Build btglnd
# https://raw.githubusercontent.com/vutov/lnd/master/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building kamigawabul/btglnd:latest"
git clone https://github.com/vutov/lnd btglnd
cd btglnd
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "kamigawabul/btglnd:latest" .
cd - && cd ..


# Build docker-bitcoingold
# https://raw.githubusercontent.com/Vutov/docker-bitcoin/master/bitcoingold/0.15.2/Dockerfile
DOCKERFILE="bitcoingold/0.15.2/Dockerfile"
echo "Building kamigawabul/docker-bitcoingold:0.15.2"
git clone https://github.com/Vutov/docker-bitcoin docker-bitcoingold
cd docker-bitcoingold
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "kamigawabul/docker-bitcoingold:0.15.2" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="contrib/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="contrib/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lightning:v0.9.0-1"
git clone https://github.com/btcpayserver/lightning lightning
cd lightning
git checkout basedon-v0.9.0-1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lightning:v0.9.0-1" .
cd - && cd ..


# Build lightning-charge
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.19/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.19/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.19/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building shesek/lightning-charge:0.4.19-standalone"
git clone https://github.com/ElementsProject/lightning-charge lightning-charge
cd lightning-charge
git checkout v0.4.19
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shesek/lightning-charge:0.4.19-standalone" .
cd - && cd ..


# Build spark-wallet
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building shesek/spark-wallet:0.2.9-standalone"
git clone https://github.com/shesek/spark-wallet spark-wallet
cd spark-wallet
git checkout v0.2.9
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shesek/spark-wallet:0.2.9-standalone" .
cd - && cd ..


# Build c-lightning-rest
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.3.0/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.3.0/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.3.0/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building saubyk/c-lightning-rest:0.3.0"
git clone https://github.com/Ride-The-Lightning/c-lightning-REST c-lightning-rest
cd c-lightning-rest
git checkout v0.3.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "saubyk/c-lightning-rest:0.3.0" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.8.4"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.8.4
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.8.4" .
cd - && cd ..


# Build eclair
# https://raw.githubusercontent.com/ACINQ/eclair/v0.4.1/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building acinq/eclair:release-0.4.1"
git clone https://github.com/ACINQ/eclair eclair
cd eclair
git checkout v0.4.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "acinq/eclair:release-0.4.1" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.2/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.2/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.2/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.8.2"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.8.2
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.8.2" .
cd - && cd ..


# Build lnd
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lnd:v0.10.2-beta"
git clone https://github.com/btcpayserver/lnd lnd
cd lnd
git checkout basedon-v0.10.2-beta
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lnd:v0.10.2-beta" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.8.4/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.8.4"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.8.4
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.8.4" .
cd - && cd ..


# Build bitcoin
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.19.0.1/Bitcoin/0.19.0.1/linuxamd64.Dockerfile
DOCKERFILE="Bitcoin/0.19.0.1/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.19.0.1/Bitcoin/0.19.0.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Bitcoin/0.19.0.1/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.19.0.1/Bitcoin/0.19.0.1/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Bitcoin/0.19.0.1/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/bitcoin:0.19.0.1"
git clone https://github.com/btcpayserver/dockerfile-deps bitcoin
cd bitcoin
git checkout Bitcoin/0.19.0.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/bitcoin:0.19.0.1" .
cd - && cd ..


# Build docker-bitcoinplus
# https://raw.githubusercontent.com/ChekaZ/docker/master/bitcoinplus/2.7.0/Dockerfile
DOCKERFILE="bitcoinplus/2.7.0/Dockerfile"
echo "Building chekaz/docker-bitcoinplus:2.7.0"
git clone https://github.com/ChekaZ/docker docker-bitcoinplus
cd docker-bitcoinplus
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "chekaz/docker-bitcoinplus:2.7.0" .
cd - && cd ..


# Build docker-bitcore
# https://raw.githubusercontent.com/dalijolijo/btcpayserver-docker-bitcore/master/docker-bitcored/Dockerfile
DOCKERFILE="docker-bitcored/Dockerfile"
echo "Building dalijolijo/docker-bitcore:0.15.2"
git clone https://github.com/dalijolijo/btcpayserver-docker-bitcore docker-bitcore
cd docker-bitcore
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "dalijolijo/docker-bitcore:0.15.2" .
cd - && cd ..


# Build btcpayserver
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.5.5/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.5.5/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.0.5.5/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building btcpayserver/btcpayserver:1.0.5.5$<BTCPAY_BUILD_CONFIGURATION>?"
git clone https://github.com/btcpayserver/btcpayserver btcpayserver
cd btcpayserver
git checkout v1.0.5.5
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btcpayserver:1.0.5.5$<BTCPAY_BUILD_CONFIGURATION>?" .
cd - && cd ..


# Build dash
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Dash/0.14.0.1/Dash/0.14.0.1/linuxamd64.Dockerfile
DOCKERFILE="Dash/0.14.0.1/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Dash/0.14.0.1/Dash/0.14.0.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dash/0.14.0.1/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Dash/0.14.0.1/Dash/0.14.0.1/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dash/0.14.0.1/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/dash:0.14.0.1"
git clone https://github.com/btcpayserver/dockerfile-deps dash
cd dash
git checkout Dash/0.14.0.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/dash:0.14.0.1" .
cd - && cd ..


# Build dogecoin
# https://raw.githubusercontent.com/rockstardev/docker-bitcoin/feature/dogecoin/dogecoin/1.10.0/Dockerfile
DOCKERFILE="dogecoin/1.10.0/Dockerfile"
echo "Building rockstardev/dogecoin:1.10.0"
git clone https://github.com/rockstardev/docker-bitcoin dogecoin
cd dogecoin
git checkout feature/dogecoin
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "rockstardev/dogecoin:1.10.0" .
cd - && cd ..


# Build docker-feathercoin
# https://raw.githubusercontent.com/ChekaZ/docker/master/feathercoin/0.16.3/Dockerfile
DOCKERFILE="feathercoin/0.16.3/Dockerfile"
echo "Building chekaz/docker-feathercoin:0.16.3"
git clone https://github.com/ChekaZ/docker docker-feathercoin
cd docker-feathercoin
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "chekaz/docker-feathercoin:0.16.3" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/Groestlcoin/lightning/v0.9.0/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/lightning:v0.9.0"
git clone https://github.com/Groestlcoin/lightning lightning
cd lightning
git checkout v0.9.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/lightning:v0.9.0" .
cd - && cd ..


# Build groestlcoin-lightning-charge
# https://raw.githubusercontent.com/Groestlcoin/groestlcoin-lightning-charge/v0.4.22/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/groestlcoin-lightning-charge:version-0.4.22"
git clone https://github.com/Groestlcoin/groestlcoin-lightning-charge groestlcoin-lightning-charge
cd groestlcoin-lightning-charge
git checkout v0.4.22
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/groestlcoin-lightning-charge:version-0.4.22" .
cd - && cd ..


# Build groestlcoin-spark
# https://raw.githubusercontent.com/Groestlcoin/groestlcoin-spark/v0.2.16/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/groestlcoin-spark:version-0.2.16"
git clone https://github.com/Groestlcoin/groestlcoin-spark groestlcoin-spark
cd groestlcoin-spark
git checkout v0.2.16
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/groestlcoin-spark:version-0.2.16" .
cd - && cd ..


# Build eclair
# https://raw.githubusercontent.com/Groestlcoin/eclair/v0.3.3/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/eclair:v0.3.3"
git clone https://github.com/Groestlcoin/eclair eclair
cd eclair
git checkout v0.3.3
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/eclair:v0.3.3" .
cd - && cd ..


# Build lnd
# https://raw.githubusercontent.com/Groestlcoin/lnd/v0.10.0-grs/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/lnd:v0.10.0-grs"
git clone https://github.com/Groestlcoin/lnd lnd
cd lnd
git checkout v0.10.0-grs
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/lnd:v0.10.0-grs" .
cd - && cd ..


# Build docker-groestlcoin
# https://raw.githubusercontent.com/NicolasDorier/docker-bitcoin/master/groestlcoin/2.20.1/Dockerfile
DOCKERFILE="groestlcoin/2.20.1/Dockerfile"
echo "Building groestlcoin/docker-groestlcoin:2.20.1"
git clone https://github.com/NicolasDorier/docker-bitcoin docker-groestlcoin
cd docker-groestlcoin
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/docker-groestlcoin:2.20.1" .
cd - && cd ..


# Build elements
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.7/Elements/0.18.1.7/linuxamd64.Dockerfile
DOCKERFILE="Elements/0.18.1.7/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.7/Elements/0.18.1.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Elements/0.18.1.7/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.7/Elements/0.18.1.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Elements/0.18.1.7/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/elements:0.18.1.7"
git clone https://github.com/btcpayserver/dockerfile-deps elements
cd elements
git checkout Elements/0.18.1.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/elements:0.18.1.7" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="contrib/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="contrib/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lightning:v0.9.0-1"
git clone https://github.com/btcpayserver/lightning lightning
cd lightning
git checkout basedon-v0.9.0-1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lightning:v0.9.0-1" .
cd - && cd ..


# Build lnd
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.10.2-beta/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lnd:v0.10.2-beta"
git clone https://github.com/btcpayserver/lnd lnd
cd lnd
git checkout basedon-v0.10.2-beta
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lnd:v0.10.2-beta" .
cd - && cd ..


# Build litecoin
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Litecoin/0.17.1-1/Litecoin/0.17.1/linuxamd64.Dockerfile
DOCKERFILE="Litecoin/0.17.1/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Litecoin/0.17.1-1/Litecoin/0.17.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Litecoin/0.17.1/linuxarm32v7.Dockerfile"
echo "Building btcpayserver/litecoin:0.17.1-1"
git clone https://github.com/btcpayserver/dockerfile-deps litecoin
cd litecoin
git checkout Litecoin/0.17.1-1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/litecoin:0.17.1-1" .
cd - && cd ..


# Build docker-monacoin
# https://raw.githubusercontent.com/wakiyamap/docker-bitcoin/master/monacoin/0.17.1/Dockerfile
DOCKERFILE="monacoin/0.17.1/Dockerfile"
echo "Building wakiyamap/docker-monacoin:0.17.1"
git clone https://github.com/wakiyamap/docker-bitcoin docker-monacoin
cd docker-monacoin
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "wakiyamap/docker-monacoin:0.17.1" .
cd - && cd ..


# Build monero
# https://raw.githubusercontent.com/Kukks/monero-docker/x86_64/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building btcpayserver/monero:0.15.0.1-amd64"
git clone https://github.com/Kukks/monero-docker monero
cd monero
git checkout x86_64
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/monero:0.15.0.1-amd64" .
cd - && cd ..


# Build monero
# https://raw.githubusercontent.com/Kukks/monero-docker/x86_64/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building btcpayserver/monero:0.15.0.1-amd64"
git clone https://github.com/Kukks/monero-docker monero
cd monero
git checkout x86_64
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/monero:0.15.0.1-amd64" .
cd - && cd ..


# Build nbxplorer
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.40/Dockerfile.linuxamd64
DOCKERFILE="Dockerfile.linuxamd64"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.40/Dockerfile.linuxarm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.linuxarm32v7"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.40/Dockerfile.linuxarm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.linuxarm64v8"
echo "Building nicolasdorier/nbxplorer:2.1.40"
git clone https://github.com/dgarage/nbxplorer nbxplorer
cd nbxplorer
git checkout v2.1.40
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "nicolasdorier/nbxplorer:2.1.40" .
cd - && cd ..


# Build letsencrypt-nginx-proxy-companion
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/letsencrypt-nginx-proxy-companion:1.12.2"
git clone https://github.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion letsencrypt-nginx-proxy-companion
cd letsencrypt-nginx-proxy-companion
git checkout v1.12.2
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/letsencrypt-nginx-proxy-companion:1.12.2" .
cd - && cd ..


# Build nginx
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
DOCKERFILE="stable/stretch/Dockerfile"
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="stable/stretch/Dockerfile"
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="stable/stretch/Dockerfile"
echo "Building nginx:1.16.0"
git clone https://github.com/nginxinc/docker-nginx nginx
cd nginx
git checkout 1.16.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "nginx:1.16.0" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.7"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.7" .
cd - && cd ..


# Build btcqbo
# https://raw.githubusercontent.com/JeffVandrewJr/btcqbo/v0.3.36/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building jvandrew/btcqbo:0.3.36"
git clone https://github.com/JeffVandrewJr/btcqbo btcqbo
cd btcqbo
git checkout v0.3.36
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "jvandrew/btcqbo:0.3.36" .
cd - && cd ..


# Build redis
# https://raw.githubusercontent.com/docker-library/redis/f1a8498333ae3ab340b5b39fbac1d7e1dc0d628c/5.0/Dockerfile
DOCKERFILE="5.0/Dockerfile"
echo "Building redis:5.0.2-alpine"
git clone https://github.com/docker-library/redis redis
cd redis
git checkout f1a8498333ae3ab340b5b39fbac1d7e1dc0d628c
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "redis:5.0.2-alpine" .
cd - && cd ..


# Build btctransmuter
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.55/Dockerfiles/amd64.Dockerfile
DOCKERFILE="Dockerfiles/amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.55/Dockerfiles/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfiles/arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.55/Dockerfiles/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfiles/arm64v8.Dockerfile"
echo "Building btcpayserver/btctransmuter:0.0.55"
git clone https://github.com/btcpayserver/btctransmuter btctransmuter
cd btctransmuter
git checkout v0.0.55
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btctransmuter:0.0.55" .
cd - && cd ..


# Build btcpayserver-configurator
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/amd64.Dockerfile
DOCKERFILE="Dockerfiles/amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfiles/arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfiles/arm64v8.Dockerfile"
echo "Building btcpayserver/btcpayserver-configurator:0.0.21"
git clone https://github.com/btcpayserver/btcpayserver-configurator btcpayserver-configurator
cd btcpayserver-configurator
git checkout v0.0.21
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btcpayserver-configurator:0.0.21" .
cd - && cd ..


# Build eps
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.0/EPS/0.2.0/linuxamd64.Dockerfile
DOCKERFILE="EPS/0.2.0/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.0/EPS/0.2.0/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="EPS/0.2.0/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.0/EPS/0.2.0/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="EPS/0.2.0/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/eps:0.2.0"
git clone https://github.com/btcpayserver/dockerfile-deps eps
cd eps
git checkout EPS/0.2.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/eps:0.2.0" .
cd - && cd ..


# Build electrumx
# https://raw.githubusercontent.com/lukechilds/docker-electrumx/master/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building lukechilds/electrumx:latest"
git clone https://github.com/lukechilds/docker-electrumx electrumx
cd electrumx
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "lukechilds/electrumx:latest" .
cd - && cd ..


# Build librepatron
# https://raw.githubusercontent.com/JeffVandrewJr/patron/v0.7.39/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building jvandrew/librepatron:0.7.39"
git clone https://github.com/JeffVandrewJr/patron librepatron
cd librepatron
git checkout v0.7.39
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "jvandrew/librepatron:0.7.39" .
cd - && cd ..


# Build isso
# https://raw.githubusercontent.com/JeffVandrewJr/isso/patron.22/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building jvandrew/isso:atron.22"
git clone https://github.com/JeffVandrewJr/isso isso
cd isso
git checkout patron.22
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "jvandrew/isso:atron.22" .
cd - && cd ..


# Build pihole
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.0/Dockerfile_amd64
DOCKERFILE="Dockerfile_amd64"
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.0/Dockerfile_armhf
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile_armhf"
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.0/Dockerfile_arm64
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile_arm64"
echo "Building pihole/pihole:v5.0"
git clone https://github.com/pi-hole/docker-pi-hole pihole
cd pihole
git checkout v5.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "pihole/pihole:v5.0" .
cd - && cd ..


# Build python-teos
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/Dockerfile
DOCKERFILE="docker/Dockerfile"
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="docker/Dockerfile"
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="docker/Dockerfile"
echo "Building talaia/python-teos:latest"
git clone https://github.com/talaia-labs/python-teos python-teos
cd python-teos
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "talaia/python-teos:latest" .
cd - && cd ..


# Build thunderhub
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.9.8/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.9.8/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.9.8/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building apotdevin/thunderhub:v0.9.8"
git clone https://github.com/apotdevin/thunderhub thunderhub
cd thunderhub
git checkout v0.9.8
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "apotdevin/thunderhub:v0.9.8" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.7"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.7" .
cd - && cd ..


# Build tor
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxamd64.Dockerfile
DOCKERFILE="Tor/0.4.2.7/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Tor/0.4.2.7/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Tor/0.4.2.7/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/tor:0.4.2.7"
git clone https://github.com/btcpayserver/dockerfile-deps tor
cd tor
git checkout Tor/0.4.2.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/tor:0.4.2.7" .
cd - && cd ..


# Build tor
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxamd64.Dockerfile
DOCKERFILE="Tor/0.4.2.7/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Tor/0.4.2.7/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.2.7/Tor/0.4.2.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Tor/0.4.2.7/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/tor:0.4.2.7"
git clone https://github.com/btcpayserver/dockerfile-deps tor
cd tor
git checkout Tor/0.4.2.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/tor:0.4.2.7" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.7"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.7" .
cd - && cd ..


# Build docker-woocommerce
# https://raw.githubusercontent.com/btcpayserver/docker-woocommerce/v3.0.6-3/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building btcpayserver/docker-woocommerce:3.0.6-3"
git clone https://github.com/btcpayserver/docker-woocommerce docker-woocommerce
cd docker-woocommerce
git checkout v3.0.6-3
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-woocommerce:3.0.6-3" .
cd - && cd ..


# Build mariadb
# https://raw.githubusercontent.com/docker-library/mariadb/master/10.3/Dockerfile
DOCKERFILE="10.3/Dockerfile"
echo "Building mariadb:10.3"
git clone https://github.com/docker-library/mariadb mariadb
cd mariadb
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "mariadb:10.3" .
cd - && cd ..


# Build postgres
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
DOCKERFILE="9.6/Dockerfile"
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="9.6/Dockerfile"
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="9.6/Dockerfile"
echo "Building postgres:9.6.5"
git clone https://github.com/docker-library/postgres postgres
cd postgres
git checkout b7cb3c6eacea93be2259381033be3cc435649369
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "postgres:9.6.5" .
cd - && cd ..


# Build traefik
# https://raw.githubusercontent.com/containous/traefik-library-image/master/scratch/Dockerfile
DOCKERFILE="scratch/Dockerfile"
echo "Building traefik:latest"
git clone https://github.com/containous/traefik-library-image traefik
cd traefik
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "traefik:latest" .
cd - && cd ..


# Build docker-trezarcoin
# https://raw.githubusercontent.com/ChekaZ/docker/master/trezarcoin/1.2.0/Dockerfile
DOCKERFILE="trezarcoin/1.2.0/Dockerfile"
echo "Building chekaz/docker-trezarcoin:0.13.0"
git clone https://github.com/ChekaZ/docker docker-trezarcoin
cd docker-trezarcoin
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "chekaz/docker-trezarcoin:0.13.0" .
cd - && cd ..


# Build docker-viacoin
# https://raw.githubusercontent.com/viacoin/docker-viacoin/master/viacoin/0.15.2/docker-viacoin
DOCKERFILE="viacoin/0.15.2/docker-viacoin"
echo "Building romanornr/docker-viacoin:0.15.2"
git clone https://github.com/viacoin/docker-viacoin docker-viacoin
cd docker-viacoin
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "romanornr/docker-viacoin:0.15.2" .
cd - && cd ..


