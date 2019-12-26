#!/bin/bash

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

source "../../funcs.sh"

gen_cscope() {
  echo "Cscoping ${1} ==> ${2}"
  func_chk_rm ${2}
  cmd_cscope ${1} ${2}
}

SCOPES_ROOT_PATH="${HOME}/.vim/scopes"
func_chk_mkdir ${SCOPES_ROOT_PATH}

gen_cscope "/usr/include" "${SCOPES_ROOT_PATH}/usr_include.scope"
gen_cscope "/usr/local/include" "${SCOPES_ROOT_PATH}/usr_local_include.scope"

if [ $(whoami) == gallencalade ]
then
    PRJS_ROOT_PATH="${HOME}/Documents/projects/"
    PRJS_OPENSOURCES_PATH="${PRJS_ROOT_PATH}/open-sources"
    SCOPES_OS_PATH="${SCOPES_ROOT_PATH}/os"
    func_chk_mkdir "${SCOPES_OS_PATH}"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/libevent" "${SCOPES_OS_PATH}/libevent.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/spdlog" "${SCOPES_OS_PATH}/spdlog.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/openmp" "${SCOPES_OS_PATH}/openmp.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/rapidjson" "${SCOPES_OS_PATH}/rapidjson.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/protobuf" "${SCOPES_OS_PATH}/protobuf.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/googletest" "${SCOPES_OS_PATH}/googletest.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/boost_1_72_0" "${SCOPES_OS_PATH}/boost.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/cryptopp" "${SCOPES_OS_PATH}/cryptopp.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/flatbuffers" "${SCOPES_OS_PATH}/flatbuffers.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/grpc" "${SCOPES_OS_PATH}/grpc.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/linux" "${SCOPES_OS_PATH}/linux.scope"
    gen_cscope "${PRJS_OPENSOURCES_PATH}/openssl" "${SCOPES_OS_PATH}/openssl.scope"
fi

# ============================== PRINT ======================================= #
echo "Details of ${SCOPES_ROOT_PATH}"
ls -hl ${SCOPES_ROOT_PATH}
ls -hl ${SCOPES_OS_PATH}
