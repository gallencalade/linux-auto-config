func_chk_rm() {
    if [ -f ${1} ]
    then
        rm ${1}
    fi
}

func_chk_mkdir() {
    if [ ! -d ${1} ]
    then
        mkdir -p ${1}
    fi
}
