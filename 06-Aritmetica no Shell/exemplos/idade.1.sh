#!/bin/bash

# Este script calcula a média final do seu semestre do curso.

read -p "digite a sua idade: " idade

bb=$(  bc <<<"obase=2; ${idade}" )
echo "A sua idade binária é ${bb}" 
