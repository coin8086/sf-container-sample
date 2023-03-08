#!/bin/bash

set -ex

cd "$(dirname "${BASH_SOURCE[0]}")"

sfctl cluster select --endpoint http://localhost:19080
sfctl application delete --application-id mycontainer
sfctl application unprovision --application-type-name mycontainerType --application-type-version 1.0.0
sfctl store delete --content-path my_app
