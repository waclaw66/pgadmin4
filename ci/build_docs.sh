#!/bin/sh

echo "################################################################################"
echo "Building docs..."
echo "################################################################################"
echo

. $WORKSPACE/pgadmin-venv/bin/activate

SPHINX_VER=""
if [ "$PYTHON_VERSION" = "2.6" -o "$PYTHON_VERSION" = "3.3" ]; then
    SPHINX_VER="==1.4.9"
fi

$WORKSPACE/pgadmin-venv/bin/pip install Sphinx$SPHINX_VER

cd $WORKSPACE/
make docs
