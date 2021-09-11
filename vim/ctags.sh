#!/bin/bash

cmd_ctags() {
    ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__    \
        --file-scope=yes --languages=c,c++ --links=yes                      \
        --c-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                  \
        --c++-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                \
        --fields=+iaSl --extra=+q -R -f                                     \
        ${1} ${2}
}

source "${PWD}/../scripts/funcs.sh"

gen_ctags() {
  echo "Tagging ${1} ==> ${2}"
  func_chk_rm ${2}
  cmd_ctags ${2} ${1}
}

TAGS_ROOT_PATH="${HOME}/.vim/tags"
func_chk_mkdir ${TAGS_ROOT_PATH}

gen_ctags "/usr/include" "${TAGS_ROOT_PATH}/usr_include.tags"
gen_ctags "/usr/local/include" "${TAGS_ROOT_PATH}/usr_local_include.tags"

# ============================== PRINT ======================================= #
echo "Details of ${TAGS_ROOT_PATH}"
ls -hl ${TAGS_ROOT_PATH}
