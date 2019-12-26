#!/bin/bash

cmd_ctags() {
    ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__    \
        --file-scope=yes --languages=c,c++ --links=yes                      \
        --c-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                  \
        --c++-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                \
        --fields=+iaSl --extra=+q -R -f                                     \
        ${1} ${2}
}

source "../../funcs.sh"

gen_ctags() {
  echo "Tagging ${1} ==> ${2}"
  func_chk_rm ${2}
  cmd_ctags ${2} ${1}
}

TAGS_ROOT_PATH="${HOME}/.vim/tags"
func_chk_mkdir ${TAGS_ROOT_PATH}

gen_ctags "/usr/include" "${TAGS_ROOT_PATH}/usr_include.tags"
gen_ctags "/usr/local/include" "${TAGS_ROOT_PATH}/usr_local_include.tags"

if [ $(whoami) == gallencalade ]
then
    PRJS_ROOT_PATH="${HOME}/Documents/projects/"
    PRJS_OPENSOURCES_PATH="${PRJS_ROOT_PATH}/open-sources"
    TAGS_OS_PATH="${TAGS_ROOT_PATH}/os"
    func_chk_mkdir "${TAGS_OS_PATH}"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/libevent/" "${TAGS_OS_PATH}/libevent.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/spdlog/include" "${TAGS_OS_PATH}/spdlog.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/openmp/runtime/src" "${TAGS_OS_PATH}/openmp.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/rapidjson/include" "${TAGS_OS_PATH}/rapidjson.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/protobuf/src/google" "${TAGS_OS_PATH}/protobuf.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/googletest/googletest/include" "${TAGS_OS_PATH}/googletest.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/googletest/googlemock/include" "${TAGS_OS_PATH}/googlemock.tags"
    gen_ctags "${PRJS_OPENSOURCES_PATH}/boost_1_72_0/boost" "${TAGS_OS_PATH}/boost.tags"
fi

# ============================== PRINT ======================================= #
echo "Details of ${TAGS_ROOT_PATH}"
ls -hl ${TAGS_ROOT_PATH}
ls -hl ${TAGS_OS_PATH}
