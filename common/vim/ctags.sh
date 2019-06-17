#!/bin/bash

TAGS_PATH="${HOME}/.vim/tags"

if [ ! -d ${TAGS_PATH} ]
then
    echo "Making ${TAGS_PATH}"
    mkdir -p ${TAGS_PATH}
else
    echo "Folder exists: ${TAGS_PATH}"
fi

func_chk_rm() {
    if [ -f ${1} ]
    then
        echo "    Removing old ${1}"
        rm ${1}
    fi
}

func_ctags() {
    ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__    \
        --file-scope=yes --languages=c,c++ --links=yes                      \
        --c-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                  \
        --c++-kinds=+c+e+f+g+m+n+s+t+u+v+p+x                                \
        --fields=+iaSl --extra=+q -R -f                                     \
        ${1} ${2}
}


# =============================== LOCAL PATH ================================= #
# /usr/include
USR_INCLUDE="/usr/include"
USR_INCLUDE_TAGS="${TAGS_PATH}/usr_include.tags"
echo "Tagging ${USR_INCLUDE} ==> ${USR_INCLUDE_TAGS}"
func_chk_rm ${USR_INCLUDE_TAGS}
func_ctags ${USR_INCLUDE_TAGS} ${USR_INCLUDE}

# /usr/local/include
USR_LOCAL_INCLUDE="/usr/local/include"
USR_LOCAL_INCLUDE_TAGS="${TAGS_PATH}/usr_local_include.ctags"
echo "Tagging ${USR_LOCAL_INCLUDE} ==> ${USR_LOCAL_INCLUDE_TAGS}"
func_chk_rm ${USR_LOCAL_INCLUDE_TAGS}
func_ctags ${USR_LOCAL_INCLUDE_TAGS} ${USR_LOCAL_INCLUDE}

# ============================== LIBRARY PATH ================================ #
# STL
STL="${HOME}/Documents/projects/open_sources/STLport-5.2.1"
STL_TAGS="${TAGS_PATH}/stl.tags"
echo "Tagging ${STL} ==> ${STL_TAGS}"
func_chk_rm ${STL_TAGS}
func_ctags ${STL_TAGS} ${STL}

# ============================== PRINT ======================================= #
echo "Details of $HOME/.vim/*"
ls -hl ${TAGS_PATH}
