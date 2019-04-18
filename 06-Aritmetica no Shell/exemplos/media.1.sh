#!/bin/bash

# Este script calcula a média final do seu semestre do curso.

read -p "digite a primeira nota: " n1
read -p "digite a primeira nota: " n2
read -p "digite a primeira nota: " n3

med=$( echo "scale=2; (${n1} + ${n2} + ${n3})/3" | bc )
echo "A sua média neste semestre foi ${med}" 
