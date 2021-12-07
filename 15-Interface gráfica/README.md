# Interface gráfica no shell script usando o zenity

* Para criar um tipo de interface gráfica em nossos scripts shell utilizaremos o Zenity que é um software que já vem instalado em grande parte dos sistemas linux.
	* Para saber se o seu sistema possui o zenity basta digitar o comando: whereis zenity.
	* Caso o seu sistema não possua o zenity, basta emitir o comando: sudo apt-get install zenity.


* Sintaxe
	
  * A estrutura das possíveis caixas de diálogo do Zenity é simples, é baseada apenas em: 
  > Zenity "tipo de diálogo" "opções comuns" "opções específicas do diálogo"

### Tipos de caixa de diálogo e opções específicas:

* **--calendar**
  * Retorna a data escolhida.
  * Opções específicas:
    * --day="Dia": Especifica o dia que estará selecionado por padrão no calendário;
    * --month="Mês": Especifica o mês que estará selecionado por padrão no calendário;
    * --year="Ano": Especifica o ano que estará selecionado por padrão no calendário.
* **--file-selection**
  * Nessa caixa de diálogo o usuário poderá selecionar arquivos de um determinado diretórios.
  * Opções específicas:
    * --multiple: Possibilita a seleção de vários arquivos na caixa de diálogo;
    * --directory: Possibilita APENAS a seleção de diretórios na caixa de diálogo
    * --file-filter="filtro": Possibilita realizar um filtro dos arquivos que irão aparecer na caixa de diálogo;
    * --filename="NOME": Mostra o nome do arquivo a ser selecionado na caixa de diálogo;
* **--forms**
  * Cria um formulário.
  * Opções específicas:
    * --add-entry="Nome do campo": Cria um tipo de 'input' no formulário;
    * --add-password="Nome do campo": Cria um input para senhas no formulário;
    * --add-calendar="Nome do campo": Cria um input de calendário no formulário;
    * --separator="Separador na saída": Cria um separador para a saída do formulário, por exemplo: Se o separador for "," e forem criadas as entradas "Nome" e "Senha" a saída será: "nome", "senha" e assim por diante.
* **--list**
  * Cria uma lista de opções que podem ser selecionadas pelo usuário.
  * Opções específicas:
    * --column="Nome da coluna": Cria uma nova coluna para a lista
    * --print-column="Número da coluna": Especifica qual coluna será retornada, por padrão APENAS a coluna 1 é retornada, pode ser utilizado o "ALL" para que sejam retornadas todas as colunas.
* **--notification**
  * Literalmente apenas um ícone de notificação, sem áreas clicáveis.
* Message (que é dividida em: Error, Information, Question e Warning)
  * As mensagens --erro, --informação e --warning darão apenas a opção "OK";
  * A messagem --question criará sempre as opções "Sim" ou "Não"
* **--password**
  * Pode ser usada com a opção específica: --username.
  * Irá retornar o usuário e a senha separados por: "|"
* **--progress**
  * Apresenta o progresso referente à algo.
  * Opções específicas:
    * --percentage='valor': Valor onde o progesso irá iniciar;
    * --auto-close: O progresso será fechado quando chegar em 100%.
* **--text-entry**
  * Caixa de diálogo para inserir textos.
  * Opções específicas:
    * --text="Texto ou pergunta"
    * --entry-text="Texto de exemplo na caixa criada"
* **--text-information**
  * Cria um texto com informações, como por exemplo um texto de 'aceitação de termos'.
  * Opções específicas:
    * --checkbox="Texto": Cria uma caixa de seleção;
    * --font="Fonte": Especifica a fonte do texto;
    * --filename="Nome do arquivo": Especifica o arquivo que será carregado e exibido	
    * OBS: Retornará o valor $?=0 caso o usuário clique no "checkbox" e após clique em "OK" e retornará o valor $?=1 caso o usuário clique em "Cancelar"
	
* **--scale**
  * Cria uma escala onde o usuário pode optar por um valor dentro desta escala.
  * Opções específicas:
    * --min-value;
    * --max-value;
    * --value (Define o valor inicial)
* **--color-selection**
  * Possibilita a seleção de uma cor para o usuário.
  * Opções específicas:
    * --color="Valor": Setar o valor da cor inicia;
    * --show-palette: Mostra o palette de cores para o usuário selecionar.
    * OBS: Será retornado o valor da cor em rgb.

### Código de saída
* O zenity gera códigos de saída de acordo com o clique do usuário, cada clique representa um código, são eles:

  * Código de saída 0: O usuário clicou em "OK" ou "Fechar";
  * Código de saída 1: O usuário clico em "Cancelar" ou usou a janela para fechar o diálogo;
  * Código de saída -1: Ocorreu um erro inesperado;
  * Código de saída 5: O diálogo foi fechado porque o tempo foi esgotado.

### Opções comuns
* As opções comuns são as que irão editar a caixa de diálogo, são elas:
  * --title="título desejado" (opção referente ao título da caixa de diálogo)
  * --window-icon="caminho do ícone" (Altera o ícone exibido nas caixas de diálogo  "info", "warning", "question" e "error"
  * --widith="largura" (Largura da caixa de diálogo)
  * --heigh="altura" (Altura da caixa de diálogo)
  * --timeout="tempo" (Especifica o tempo em segundos em que a caixa de diálogos será fechada)

## Exemplos
* Os comandos do zenity podem ser executados na própria linha de comando, você pode utilizar isso para realizar os seus testes.

* Para criar um formulário e adicionar o nome e o número de um determinado usuário basta utilizar o comando:

  >zenity --forms --title="Novo usuário" --text="Adicione o nome e o número do novo usuário" --separator="," --add-entry="Nome" --add-entry="Número" 
* Lembrando: Neste caso utilizamos o --separator="," para que a saída seja separada por vírgula, ou seja, a saída será: "Nome", "Número". Por padrão a saída é separada por "|".



* Para criar uma lista onde o usuário poderá optar pelas opções, podemos usar o comando:

  >Zenity --list --title="Lista de dispositivos" --column="Dispositivos" --column="Marca" --separator="," --print-column="ALL" Celular Samsung Desktop Positivo Notebook Samsung

* Isso irá criar uma lista com 2 colunas, são elas: 

  * "Dispositivos" 
  * "Marca", 
* Serão inseridos nesta lista os dispositivos "Celular", "Desktop" e "Notebook" e as marcas inseridas são "Samsung" "Positivo" e "Samsung", os elementos são inseridos de forma sequencial, ou seja, insere o primeiro elemento no primeiro item da primeira coluna e o próximo elemento será inserido no primeiro item da segunda coluna e assim sucessivamente.


## Referências
http://www.bosontreinamentos.com.br/shell-script/zenity-exibindo-caixas-de-dialogo-com-scripts-do-shell-no-linux/

https://pt.linux-console.net/?p=808

https://help.gnome.org/users/zenity/stable/scale.html.uk

https://help.gnome.org/users/zenity/stable/progress.html.en

https://help.gnome.org/users/zenity/stable/forms.html.sl

https://help.gnome.org/users/zenity/stable/list.html.en

https://help.gnome.org/users/zenity/stable/password.html.en

https://help.gnome.org/users/zenity/stable/

https://help.gnome.org/users/zenity/stable/calendar.html.en

https://help.gnome.org/users/zenity/stable/notification.html.en

https://help.gnome.org/users/zenity/stable/message.html.en

https://help.gnome.org/users/zenity/stable/info.html.en

https://help.gnome.org/users/zenity/stable/question.html.en

https://help.gnome.org/users/zenity/stable/entry.html.en

https://help.gnome.org/users/zenity/stable/text.html.en

https://help.gnome.org/users/zenity/stable/color-selection.html.en
