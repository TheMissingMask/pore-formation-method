GRO="${1}"
sed -re "s/( *[0-9]+[A-Z]+ *D2[AB] *[0-9]+).*/\1   5.000   5.000   3.960/g" $GRO > ref.gro
