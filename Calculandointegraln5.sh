#!/bin/bash
echo "Calculadora de integrais de polinômios com graus menor ou igual a 3(Método de Simpson) "
read x0
read x2
read f0
read f1 
read f2
#let x=(f0 + 4*f1 + f2)
echo "scale=2 ; k = ($x2 - $x0) / 2 ; if (k < 1) print 0; k" | bc
echo "scale=8 ; i = (($x2 - $x0) / 6)*($f0 +4*$f1 + $f2) ; if (i < 1) print 0; i" | bc

