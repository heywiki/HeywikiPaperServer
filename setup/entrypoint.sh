#!/bin/bash

#You can only have one ENTRYPOINT and one CMD defined
#so we call it here...
bash /opt/minecraft/server-setup.sh
bash /opt/minecraft/server-run.sh
#tail -f /dev/null
