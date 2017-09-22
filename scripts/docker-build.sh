#!/bin/sh
#-------------------------------------------------------------------------------
# Copyright (C) 2017 Create-Net / FBK.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Create-Net / FBK - initial API and implementation
#-------------------------------------------------------------------------------

set -e

# echo "Compiling mvn packages"
# ./scripts/mvn-build.sh

# echo "Build docker images"
# docker build . -f Dockerfile -t agile-iot/agile-core-armv7l
# docker build . -f Dockerfile.x86_64 -t agile-iot/agile-core-x86_64

docker build . -f Dockerfile -t opny/agile-core-armv7l
