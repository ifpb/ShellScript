# Interface gráfica no shell script usando o Yad


* Para criar um tipo de interface gráfica em nossos scripts shell utilizaremos o yad que é uma ferramenta disponível no shell script do Linux que permite a criação de caixas de diálogo gráficas interativas. Ela pode ser usada para exibir informações, receber entrada do usuário e executar ações com base nas escolhas feitas.
 * O yad diferente do zenity (outra ferramenta de interface gráfica muito utilizada no linux) não vem instalado por padrão nos sistemas linux, então para instalar usaremos o seguinte comando:
   sudo apt install yad
 * caso queira verificar se o yad já foi instalado no linux, podemos digitar yad --version ou whereis yad.


* Sintaxe
  * A estrutura das possíveis caixas de diálogo do yad é simples, é baseada apenas em:
 > yad "tipo de diálogo" "opções específicas do diálogo"


### Alguns Tipos de caixa de diálogo e opções específicas, para ver todos os tipos acessar o link do campo "Referências":


* **--calendar**
 * Retorna a data escolhida.
 * Opções específicas:
   * --day="Dia": Especifica o dia que estará selecionado por padrão no calendário;
   * --month="Mês": Especifica o mês que estará selecionado por padrão no calendário;
   * --year="Ano": Especifica o ano que estará selecionado por padrão no calendário.
   * --date-format=PATTERN: Defina o formato para a data retornada.


* **--text**
 * Opções de seleção de formulário
 * Opções específicas:
   * --text-info : Exibir diálogo de texto informativo
   * --fore=COR : Usar cor específica para o texto
   * --back=COR : Use cor específica no fundo
   * --wrap : Ativar quebra de texto
   * --justify=TIPO : Definir justificação (left, right, center ou fill)




* **--entry**
 * Caixa de diálogo para inserir textos.
 * Opções específicas:
  * --entry-label=STRING: Defina o texto que aparecerá antes da caixa de input.
  * --entry-text=STRING : Define o texto de entrada inicial ou texto padrão da caixa de combinação.
  * --hide-text : Oculte o texto de entrada
  * --numeric : Caixa de entrada de dados com botão de rotação em vez da entrada de texto


* **--file**
 * Seleção de arquivos.
 * Opções específicas:
   * --filename=Nome_do_arquivo : O nome do arquivo definido aparecerá selecionado
   * --file-selection : Alias para --file
   * --multiple : Permite a seleção de vários arquivos
   * --directory : Selecionar somente diretório
   * --file-filter="*.txt" : Mostra somente os arquivos que baterem com o filtro especificado
 * **--form**
 * Opções de  formulário
 * Opções específicas:
   * --field="rótulo:tipo:opções" :  Define um campo no formulário. O rótulo é o texto exibido ao lado do campo, o tipo especifica o tipo de campo (como text, password, file, etc.), e as opções são usadas para personalizar o campo
   * --field-separator="Separador" :  Define o separador entre os campos no formulário. Por padrão, o separador é um espaço em branco,
   * --align=Tipo :  Defina o alinhamento dos rótulos de campo (left, center ou right)
   * --columns=Número : Defina o número de colunas no formulário
   * --scroll : Fazer um formulário com rolagem


* **--font**
 * Opções de seleção de font
 * Opções específicas:
   * --fontname=FONTNAME : Define a fonte do texto
   * --preview=TEXTO :  Definir sequência de texto para visualização
   * --separate-output : Saída separada da descrição da fonte




* **--list**
 * Opções de seleção de formulário
 * Opções específicas:
   * --column="rótulo" : Adiciona uma coluna com o rótulo especificado à lista. Você pode adicionar várias colunas, separando-as por vírgulas.
   * --text="texto": Define o texto a ser exibido acima da lista.
   * --separator="separador": Define o separador entre as colunas da lista. O padrão é uma guia. Por exemplo:
   * --print-column=N: Define o índice da coluna cujo valor será retornado ao selecionar uma opção. O valor será impresso na saída padrão. O índice da coluna começa em 1.


### Código de saída
* O yad gera códigos de saída de acordo com o clique do usuário, cada clique representa um código, são eles:


 * Código de saída 0: O usuário clicou em "OK";
 * Código de saída 1: O usuário clicou em "Cancelar" ou usou a janela para fechar o diálogo;
 * Código de saída 70: O diálogo foi fechado porque o tempo foi esgotado;
 * Código de saída 252:A caixa de diálogo foi fechada pressionando Esc ou usando as funções da janela para fechar a caixa de diálogo.


### Opções comuns
* As opções comuns são as que irão editar a caixa de diálogo, são elas:
 * --title="título desejado" (opção referente ao título da caixa de diálogo)
 * --window-icon="caminho do ícone" (Altera o ícone exibido nas caixas de diálogo  "info", "warning", "question" e "error")
 * --widith="largura" (Largura da caixa de diálogo)
 * --heigh="altura" (Altura da caixa de diálogo)
 * --timeout="tempo" (Especifica o tempo em segundos em que a caixa de diálogos será fechada)
 * --text-align=TYPE (Defina o tipo de justificação do texto da caixa de diálogo. TYPE pode ser esquerdo , direito , centralizado ou preenchido.)
 * --image=IMAGE (Defina a imagem da caixa de diálogo que aparece no lado esquerdo do texto da caixa de diálogo. IMAGE pode ser o nome do arquivo ou o nome do ícone do tema do ícone atual.)


## Exemplos
* Os comandos do yad podem ser executados na própria linha de comando, você pode utilizar isto para realizar os seus testes.


 * Para criar um formulário e adicionar o nome e o número de um determinado usuário como entrada, basta utilizar o comando:
 > yad --form --title="Informações do usuário" --field="Nome:text" --field="Idade:num" --field="Comida favorita?:text" --field-separator="-"
 * Lembrando: O --field="Nome:text" é respectivamente a mensagem que irá aparecer na tela e o tipo, que nesse caso é text e o --separator="-" para que a saída seja separada por vírgula, ou seja, a saída será: "Nome", "Número". Por padrão a saída é separada por "|"


 * Lista de alunos e cursos do IFPB
 > yad --list --title="Alunos-cursos do IFPB" --column="Aluno" --column="Curso" --separator="," Mariana "Redes de computadores" Pedro Administração Paulo "Engenharia de software" Ana "Redes de computadores"




## Referências


https://man.archlinux.org/man/extra/yad/yad.1.en
http://www.dicas-l.com.br/arquivo/yad_yet_another_dialog.php
