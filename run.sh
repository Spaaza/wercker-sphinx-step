# /bin/bash
if [ -n "$WERCKER_SPHINX2_BASEDIR" ]; then
  WERCKER_SPHINX_OPTIONS=$WERCKER_SPHINX2_OPTIONS" --directory "${WERCKER_SPHINX2_BASEDIR}
fi

info "Installing Sphinx and other packages."
pip install --upgrade -e git+https://github.com/sphinx-doc/sphinx@v1.7.4#egg=sphinx-1_7_4 $WERCKER_SPHINX2_PACKAGES

if [ -e "requirements.txt" ]; then
  info "Installing required packages."
  pip install -r requirements.txt
fi

info "Compiling the document."
make $WERCKER_SPHINX2_TARGET $WERCKER_SPHINX2_OPTIONS
