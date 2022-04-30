#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"


cmd_cscope() {
  find ${1} -not -type l      \
            -name "*\.h"   -o \
            -name "*\.hpp" -o \
            -name "*\.hxx" -o \
            -name "*\.c"   -o \
            -name "*\.cc"  -o \
            -name "*\.cpp" -o \
            -name "*\.cxx"    \
            | cscope -Rbq -f ${2} -i -
}

gen_cscope() {
  echo " - CScoping for ${1} to ${2}"
  func_rm ${2}
  cmd_cscope ${1} ${2}
  ls -hl ${2}
}

SCOPES_ROOT_PATH="${HOME}/.vim/scopes"
func_mkdir ${SCOPES_ROOT_PATH}

gen_cscope "/usr/include" "${SCOPES_ROOT_PATH}/usr_include.scope"

gen_cscope "/usr/local/include" "${SCOPES_ROOT_PATH}/usr_local_include.scope"
