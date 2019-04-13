# Datas e Substituição de Shell


* Datas
    * calendar
    * cal
    * date
        * date [options...] [+format]
        * date
            * Saída: Ter Set 25 10:33:19 BRT 2018
        * date '+%d.%m.%y'
            * Saída: 25.09.18
        * date '+%a, %d.%m.%Y'
            * Saída: Ter, 25.09.2018
        * date "+%H:%M"
            * Saída: 19:07
        * date "+%s"
            * Saída: 1537882750
            * Significa o número de segundos desde 01-01-1970 00:00:00 UTC


* Substituição de shell (também conhecido como substituição de comandos):
    * Sintaxe:
        * $(date)
        * `date`
    * O comando entre $() é executado e o seu resultado (o que o comando exibiria na tela) toma o seu lugar no script
    * Exemplos:
        * echo "A data de hoje é $(date +%d.%m.%y)"
            * Antes desta linha ser executada, o shell executa o comando date +%d.%m.%y, que imprimiria 26.09.18 na tela.
            * Em seguida, o shell substitui $(date +%d.%m.%y) por 26.09.18 na linha original
            * Esta se torna: echo "A data de hoje é 26.09.18"
            * E a saída do comando é: "A data de hoje é 26.09.18"
        * DIA="$(date +%d)"
        * MES="$(date +%m)"
        * ANO="$(date +%Y)"
        * echo "Estamos no dia ${DIA} de ${MES} do ano de ${ANO}."
        * ARQUIVOS="$(ls)"
    

