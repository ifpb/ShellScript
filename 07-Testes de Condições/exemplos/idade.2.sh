#!/bin/bash

# Este script verifica se você já pode dirigir.

read -p "digite a sua idade: " idade

(( "${idade}" >= 18 )) && echo "Você já pode dirigir! Que fantástico!"
