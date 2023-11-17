#!/bin/bash  -xv
# SPDX-FileCopyrightText: 2023 Kishin Mikami blackgodstone.k@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

###正の数字のみ###
out=$(./dispersion 1 2 3 4 )
[ "${out}" = 1.25 ] || ng ${LINENO}

###小数を含む###
out=$(./dispersion -1 3 )
[ "${out}" = 4.0 ] || ng ${LINENO}

###0を含む###
out=$(./dispersion 0 1 2 3 )
[ "${out}" = 1.25 ] || ng ${LINENO}

###小数を含む###
out=$(./dispersion 0.5 1.5 2.5 )
[ "${out}" = 0.6666666666666666 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
