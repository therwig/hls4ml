#
# Export few environment variables to compile the example with Mentor's
# provided compiler and libraries.
#
# Usage:
# $ source envsetup.sh
#

# Base directory for CAD tools.
export CAD_PATH="/opt/cad"

# We do need Mentor Modelsim (simulator).
export PATH="${CAD_PATH}/msim/modeltech/bin":$PATH

####
# We do need licensing for this example.
####

# Mentor Graphics
export LM_LICENSE_FILE=${LM_LICENSE_FILE}:"1720@bioeecad.ee.columbia.edu"

export PS1="[msim] $PS1"
