#!/bin/bash  -xv
# SPDX-FileCopyrightText: 2023 Kishin Mikami blackgodstone.k@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

###正の数字のみ###
out=$(./ave 1 2 3 4 5)
[ "${out}" = 3.0 ] || ng ${LINENO}

###負の数も含む###
out=$(./ave -2 -1 1 2)
[ "${out}" = 0.0 ] || ng ${LINENO}

###0も含む###
out=$(./ave 0 1 2)
[ "${out}" = 1.0 ] || ng ${LINENO}

###少数も含む###
out=$(./ave 0.5 1.1 -2.5)
[ "${out}" = -0.3 ] || ng ${LINENO}

###アルファベット(小文字)を含む###
out=$(./ave 1 2 a 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

###アルファベット(大文字)を含む###
out=$(./ave 1 2 B 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

###ひらがなを含む###
out=$(./ave 1 2 あ 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
