// ignore_for_file: empty_constructor_bodies

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DBFirestore {
  //List lista_techs = [];
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance; //recuperando instancia do FB

  firestore() {
    return _firestore;
  }

  // * Exportando ao banco
  addData() async {
    int i = 1;
    for (var element in data) {
      _firestore.collection('interview').doc(i.toString()).set(element);
      i += 1;
    }
  }

  // * CONSULTA SIMPLES: Recebe: uma linguaem | Retorna List Map com perguntas que a contém em "filtros:".
  /*
  Future queryTech(linguagem) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection("interview")
        .where("filtros", arrayContains: "$linguagem")
        //.orderBy("filtros: junior").orderBy("filtros: estágio").orderBy("filtros: senior").orderBy("filtros: pleno")
        .get();  //print("$linguagem");
    late var dados;
    for (DocumentSnapshot item in querySnapshot.docs) {
      dados = item.data(); print(dados);
      }
    return Future.value(dados);
    }     
    //dados as Map;
    //var list = []; //print(dados as Map); //
    //print(("${dados["pergunta"]}"));
    //list = dados.entries.map((e) => Customer(e.key, e.value)).toList();
    //print(dados);
    
 

  */

  // * CONSULTA COMPLEXA: SearchField

  // * Lista de linguagens:
  List lista_techs = [
    "PYTHON",
    "FLUTTER",
    'JAVA',
    'CSS',
    'ANGULAR',
    'HTML',
    'JAVASCRIPT',
    "RUBY"
  ];

  // * Lista de perguntas para subir ao banco:
  List<Map<String, dynamic>> data = [
    {
  "pergunta": "O que é Angular?",
  "resposta": "Angular é um framework para construção de aplicativos web, desenvolvido pela equipe do Google. Ele permite criar aplicativos web dinâmicos, SPA (Single Page Applications) e mobile com uma sintaxe clara e concisa em TypeScript, que é um superset do JavaScript. O Angular é baseado em componentes, onde cada componente possui seu próprio template HTML, estilo e comportamento, o que permite criar aplicativos modulares e escaláveis. Ele também oferece recursos como injeção de dependência, roteamento, validação de formulários e integração com o back-end de serviços web.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Para que serve o Angular?",
  "resposta": "O Angular é usado para criar aplicativos Web dinâmicos, escaláveis e de alto desempenho com recursos avançados de front-end, como vinculação de dados bidirecional, injeção de dependência, roteamento, criação de formulários, animações, testes automatizados e muito mais.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Nomeie os módulos que você deve importar para usar [(ngModel)] e formulários reactive.",
  "resposta": "FormsModule e Reactiveforms Module",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que são expressões angulares?",
  "resposta": "As expressões angulares são usadas no Angular para exibir valores de variáveis e executar operações aritméticas, lógicas e outras operações em HTML. Elas são escritas entre chaves duplas ({{ }}) e são avaliadas como JavaScript no contexto atual do componente. Elas podem ser usadas para exibir o valor de uma variável em um modelo HTML, bem como para executar operações em tempo real em dados de entrada.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que quer dizer compilação AOT?",
  "resposta": "AOT é a abreviação de compilação ahead-of-time. Para aplicações Angular, isso se refere a escrever o código da aplicação e compilá-lo no momento da construção, ou seja, antes que a aplicação seja executada no navegador. Essa é uma abordagem alternativa para a compilação just-in-time, em que a compilação de código é feita imediatamente antes de executar a aplicação no navegador. Você pode aumentar o desempenho da aplicação ao utilizar a compilação AOT./n Esse tipo de pergunta em entrevistas Angular avalia sua sagacidade e garante que você conhece abordagens alternativas para diferentes cenários.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Quando o modelo de dados é atualizado fora da Zone, como atualizar a visualização?",
  "resposta": "Os seguintes métodos podem ser utilizados para atualizar a visualização:/n O método ApplicationRef.prototype.run pode ajudar a atualizar a visualização executando a detecção de mudanças em toda a árvore de componentes;/n O método NgZone.prototype.run pode alcançar o mesmo resultado executando a detecção de mudanças na árvore completa de forma similar. O método run chama internamente o método tick, e a função a ser realizada é passada por parâmetro antes do tick;/n O método ChangeDetectorRef.prototype.detectChanges executa a detecção de mudanças no componente atual e em seus filhos.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Qual a diferença entre testes unitários e testes um-para-um? Mencione algumas ferramentas de teste para aplicativos Angular.",
  "resposta": "Quando se deseja verificar o funcionamento adequado de segmentos isolados, são usados testes unitários, também conhecidos como unit tests, que fazem a verificação desses segmentos. Por outro lado, quando se quer garantir que conjuntos inteiros de componentes estão funcionando corretamente e em sincronia, e que o aplicativo está funcionando como desejado, pode-se usar testes um-para-um. Simulações de interação do usuário são frequentemente usadas em testes um-para-um para garantir que os aplicativos estejam funcionando corretamente. Duas boas ferramentas de teste são Jasmine e Karma.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que são os templates em Angular?",
  "resposta": "Em Angular, um template é uma representação visual de como os dados devem ser exibidos na interface do usuário. Ele é definido com HTML, juntamente com algumas extensões especiais para Angular, como a inclusão de diretivas e binding de dados. Os templates são usados para definir a estrutura da página, a disposição dos elementos e o seu estilo, além de permitir a exibição de dados dinâmicos./n Seu uso permite que os desenvolvedores Angular criem interfaces de usuário ricas e dinâmicas, com lógica e interações complexas, de forma mais fácil e eficiente do que em outras abordagens de desenvolvimento de interfaces.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Quais são as principais vantagens do Angular sobre outros frameworks?",
  "resposta": "Algumas das principais vantagens do Angular sobre outros frameworks são:/n Grande ecossistema: Angular é um dos frameworks JavaScript mais populares e tem uma grande comunidade de desenvolvedores que contribuem para o seu ecossistema, criando bibliotecas, pacotes e soluções para diversos problemas./n MVC completo: O Angular é um framework completo que implementa o padrão Model-View-Controller (MVC), permitindo uma estrutura clara e organizada para o desenvolvimento de aplicações web./n Two-way data binding: O Angular suporta vinculação de dados bidirecional, o que significa que as alterações em um elemento da interface do usuário (UI) são automaticamente refletidas no modelo de dados e vice-versa./n Injeção de dependência: O Angular utiliza injeção de dependência para gerenciar a instância de objetos e seus relacionamentos, o que ajuda a tornar o código mais modular e fácil de testar./n Ferramentas de desenvolvimento: O Angular vem com um conjunto completo de ferramentas de desenvolvimento, como o Angular CLI, que simplifica o processo de criação e manutenção de projetos, além de facilitar o desenvolvimento de testes unitários e end-to-end.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Angular 2 vs AngularJS: qual a diferença?",
  "resposta": "Os dois são semelhantes. Ambos são frameworks front-end mantidos pela Google. No entanto, também tem suas diferenças já que o Angular 2 não é apenas uma versão atualizada do AngularJS. O Angular 2 é um novo framework escrito do zero. Portanto, se alguém estiver procurando atualizar ou mudar para o Angular 2 a partir do AngularJS, será necessário reescrever todo o código./n Nesta ou em outras perguntas de entrevista sobre o Angular 2, se você puder usar exemplos práticos ou experiências pessoais para responder à pergunta, isso será vantajoso e fará você se diferenciar da concorrência.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "Qual é a principal diferença entre expressões angulares e expressões JavaScript?",
  "resposta": "A principal diferença entre expressões angulares e expressões JavaScript é que as expressões angulares são avaliadas dentro do contexto do AngularJS, enquanto as expressões JavaScript são avaliadas dentro do contexto do navegador./n As expressões angulares são usadas principalmente em templates HTML e permitem que você incorpore valores dinâmicos em sua página. Por exemplo, você pode usar uma expressão angular para exibir o valor de uma variável ou para realizar uma operação matemática simples./n As expressões JavaScript, por outro lado, são escritas em JavaScript puro e são avaliadas pelo navegador. Elas são usadas para manipular o DOM e para realizar operações mais avançadas que as expressões angulares não podem realizar. Por exemplo, você pode usar expressões JavaScript para acessar o DOM e adicionar ou remover elementos da página.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "Como funciona o Transpiling no Angular?",
  "resposta": "Você já deve saber que quando o código-fonte de uma linguagem de programação é convertido em outra, o processo é chamado de Transpiling. No Angular, isso se refere principalmente à conversão de TypeScript para JavaScript. Como desenvolvedor, você pode escrever o código da sua aplicação Angular em TypeScript ou Dart e depois transpilá-lo para JavaScript para, então, executar a aplicação. Esse processo é interno e automático./n Esse é o tipo de pergunta de entrevista Angular que ajuda o entrevistador a entender a profundidade do seu conhecimento em desenvolvimento Angular.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "Para que são usados os módulos Core e Shared?",
  "resposta": "Para todos os módulos, componentes, etc. que não precisam ocorrer em uma única cópia para o aplicativo, mas devem ser importados em diferentes módulos, existe um módulo genérico chamado módulo Shared. Para armazenar serviços que precisam ocorrer em uma única cópia em todo o aplicativo, é usado um módulo Core. Por exemplo, quando a autorização do usuário para armazenamento de dados é necessária, a autorização do usuário aparece como um módulo core (central).",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que são controladores em Angular?",
  "resposta": "Em Angular, os controladores são classes que desempenham o papel de intermediários entre o modelo e a exibição de dados. Eles são responsáveis por gerenciar as informações da página, controlar a lógica de negócios e se comunicar com os serviços. Eles são criados usando a injeção de dependência, onde as dependências são declaradas como parâmetros no construtor da classe. Além disso, você ainda pode dividir os controladores em subcontroladores para organizar o código.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que são components, módulos e services em Angular?",
  "resposta": "Componentes (components), módulos e serviços (services) são todos elementos fundamentais do Angular e usados na construção de aplicações web modulares e escalares./n Componentes: são responsáveis por controlar a exibição de elementos de interface do usuário em uma página web. Cada componente é uma classe que contém metadados, como o seletor, o template e o estilo, que definem como o componente será renderizado na página. Eles também podem ter lógica de negócios associada./n Módulos: são conjuntos lógicos de componentes, serviços e outros módulos que podem ser agrupados e reutilizados em diferentes partes do aplicativo. Eles ajudam a organizar o código em pedaços menores e mais gerenciáveis. Cada aplicativo Angular tem pelo menos um módulo raiz, que é usado para inicializar o aplicativo./n Services: são classes que fornecem funcionalidades específicas para outras partes do aplicativo, como a busca de dados em um servidor, o compartilhamento de dados entre componentes ou a validação de formulários. Eles são injetados em componentes e outros serviços que os usam para realizar suas funções.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que é vinculação de propriedade e por que é importante no Angular 12?",
  "resposta": "A vinculação de propriedade (ou property binding) é uma das técnicas fundamentais do Angular para atualizar dinamicamente os valores das propriedades dos elementos HTML. Isso permite que os dados sejam exibidos e atualizados em tempo real na página, sem a necessidade de atualizar a página inteira./n A vinculação de propriedade é importante porque torna o desenvolvimento de aplicativos Angular mais eficiente, permitindo que as alterações de dados sejam exibidas de forma dinâmica. Além disso, ajuda a manter um código mais limpo e fácil de ler e reduz a necessidade de código JavaScript personalizado para atualizar manualmente os valores dos elementos HTML.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "O que é um provider em Angular?",
  "resposta": "Um provider é uma classe que fornece um valor ou uma instância de um objeto para a aplicação. Ele pode ser usado para injetar objetos em outros componentes ou serviços, e é a maneira mais comum de fornecer um objeto ou serviço para a aplicação./n Os providers podem ser definidos em vários níveis, como no módulo raiz (app.module.ts), em um módulo de funcionalidade ou em um componente específico. Além disso, existem três tipos de providers em Angular: provider de serviço, provider de fábrica e provider de valor.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "ANGULAR"
  ]
},
{
  "pergunta": "Qual a diferença entre BOM e DOM?",
  "resposta": "BOM (Browser Object Model) e DOM (Document Object Model) são duas coisas diferentes no contexto da web./n O BOM é a interface do navegador com o mundo exterior. Ele fornece objetos como window, navigator e location, que permitem que o JavaScript interaja com o navegador e a janela do navegador./n Já o DOM é a representação em memória do documento HTML, XML ou XHTML em um modelo orientado a objeto. O DOM é criado pelo navegador quando uma página é carregada. Ele permite que o JavaScript manipule os elementos HTML como objetos, permitindo que os desenvolvedores criem dinamicamente e interajam com o conteúdo da página, alterem o estilo da página e adicionem ou removam elementos do documento HTML.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "ANGULAR"
  ]
},

{
  "pergunta": "Quando o CSS foi criado e por quê?",
  "resposta": "O CSS foi desenvolvido em 1997 para ajudar os desenvolvedores da web a explicar o design visual das páginas on-line que estavam criando. Foi criado para viabilizar que os desenvolvedores isolassem a funcionalidade e o layout da programação de um site a partir de seu design gráfico, que antes não estava disponível./n O contraste entre estrutura e estilo permite que o HTML se concentre em seu objetivo principal — marcação de conteúdo — sem ter que considerar a arquitetura e a operação do site, frequentemente conhecido como a aparência e a sensação da página. ",
  "filtros": [
      "CSS",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que significa cascata?",
  "resposta": "O CSS mudou a maneira como as pessoas pensam sobre o web design e como percebem o conceito de criar um site. Antes do CSS, os componentes tinham que ser estilizados em linha ou na seção principal de uma página HTML. Isso foi alterado para refletir a forma em cascata do CSS. A seguir, estão os três processos básicos pelos quais o CSS entra em cascata:=/n Componentes - Vários elementos compartilharão um tipo de CSS./n Vários estilos em um único elemento — Vários estilos podem ser adicionados a um único recurso HTML para criar uma aparência completamente única./n Inúmeras páginas no mesmo formato — Para obter facilmente o estilo do modelo, a mesma folha de estilo pode ser adicionada a várias páginas HTML simultaneamente.",
  "filtros": [
      "CSS",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR"
  ]
},
{
  "pergunta": "Como você pode integrar o CSS em uma página HTML?",
  "resposta": "Existem três formas para incorporar um estilo CSS específico:=/n Você pode usar tags de estilo no título para incluir seu design na sua página HTML.=/n Você pode usar o estilo embutido para incluir seu próprio design./n O CSS deve ser gravado em um arquivo separado e vinculado à guia HTML.",
  "filtros": [
      "CSS",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR"
  ]
},
{
  "pergunta": "Como você descreveria um fluxo RGB?",
  "resposta": "RGB é um método de representação de cores comumente usado no CSS. Existem três fluxos nesta nomenclatura de cores: vermelho, verde e azul. As intensidades das três cores são representadas por valores variando de 0 a 256. Como resultado, o CSS pode lidar com uma ampla gama de cores em todo o espectro visual.",
  "filtros": [
      "CSS",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que é um modelo de caixa CSS e seus componentes?",
  "resposta": "O modelo de caixa CSS especifica as caixas retangulares que são formadas e solicitadas para itens na árvore de documentos com base no modelo de formatação visual. Cada caixa possui uma área de conteúdo (, como texto ou imagem ), além de áreas de preenchimento, borda e margem personalizáveis./n O modelo de caixa CSS é responsável pelo cálculo do seguinte:/n A proporção de espaço ocupado por um recurso de bloco./n Fronteiras e margens podem convergir ou colidir./n Dimensões de uma caixa.",
  "filtros": [
      "CSS",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR"
  ]
},
{
  "pergunta": "Como você descreveria a RWD?",
  "resposta": "RWD é uma abreviação de Responsive Web Design. Essa estratégia é usada para garantir que a página de layout fique ótima em todos os tamanhos e dispositivos de tela, incluindo smartphones, telefones, computadores desktop e laptops. Não é necessário criar páginas diferentes para cada dispositivo.",
  "filtros": [
      "CSS",
      "TECNICA",
      "FRONTEND",
      "PLENO"
  ]
},
{
  "pergunta": "Como você pode se beneficiar do uso de sprites CSS?",
  "resposta": "Quando uma página da web contém muitas imagens, pode demorar mais para carregar, pois cada imagem envia uma solicitação HTTP individualmente. Os sprites de CSS são usados para minimizar o tempo de carregamento de uma página da Web, agrupando vários ícones minúsculos em um único documento. Reduz solicitações HTTP e, portanto, o tempo de carregamento.",
  "filtros": [
      "CSS",
      "TECNICA",
      "FRONTEND",
      "PLENO"
  ]
},
{
  "pergunta": "Explique a Tweening.",
  "resposta": "Tweening é uma tecnologia crucial utilizada em todos os tipos de animação. É a técnica que gera quadros intermediários entre duas imagens. Tweening dá a impressão de que a primeira imagem cresceu espontaneamente na segunda. O módulo Transforms ( matricial, converter, girar e dimensionar ) do CSS3 pode ser usado para obter interpolação.",
  "filtros": [
      "CSS",
      "TECNICA",
      "FRONTEND",
      "PLENO"
  ]
},
{
  "pergunta": "Qual é a diferença entre CSS2 e CSS3?",
  "resposta": "A diferença fundamental entre CSS2 e CSS3 é que o CSS3 é dividido em seções distintas, que são chamadas de módulos. Os módulos CSS3 são suportados por uma gama maior de navegadores que os módulos CSS2. O CSS3 adiciona novos combinadores de irmãos gerais, encarregados de associar elementos de irmãos a determinados elementos.",
  "filtros": [
      "CSS",
      "TECNICA",
      "FRONTEND",
      "PLENO"
  ]
},
{
  "pergunta": "Qual é o papel de uma folha de estilos incorporada?",
  "resposta": "A folha de estilos incorporada nos ajuda a descobrir estilos em um único local em um documento HTML. Várias classes podem ser construídas usando uma folha de estilos incorporada para uso em vários estilos de tag em uma página da web. Os detalhes são importados sem a necessidade de download adicional.",
  "filtros": [
      "CSS",
      "TECNICA",
      "FRONTEND",
      "PLENO"
  ]
},
{
  "pergunta": "Por que o Flutter é preferido em relação a outras ferramentas de desenvolvimento de aplicativos móveis?",
  "resposta": "O Flutter é uma estrutura de interface do usuário móvel gratuita e de código aberto, lançada pelo Google em maio de 2017. O Flutter permite que você desenvolva um aplicativo móvel nativo usando apenas uma base de código. Isso significa que você pode criar dois aplicativos separados usando a mesma linguagem de programação e base de código (para iOS e Android)./n O Flutter é preferido em relação a outras ferramentas de desenvolvimento de aplicativos móveis, como Java e React Native, devido a uma infinidade de razões. Alguns deles são:/n O Flutter oferece suporte ao desenvolvimento multiplataforma/n A programação em Flutter é extremamente fácil e flexível/n O processo de construção no Flutter é muito mais rápido do que em todos os seus concorrentes",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que são pacotes e plugins no Flutter?",
  "resposta": "Um pacote é um conjunto de classes, interfaces e subpacotes que permitem aos usuários criar código modular que pode ser compartilhado facilmente. Em vez de começar do zero, o uso de pacotes pode ajudar a construir aplicativos rapidamente. No Flutter, você pode usar um pacote para adicionar novos widgets ou funcionalidades a um aplicativo./n Por outro lado, um plug-in é um software que aprimora a funcionalidade do seu aplicativo. Os plug-ins desempenham um papel crucial no ecossistema Flutter.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Quais são as limitações do Flutter?",
  "resposta": "Como o Flutter ainda é uma ferramenta relativamente nova, ele possui algumas limitações. Eles são os seguintes:/n O número de bibliotecas de terceiros é muito pequeno/n O tamanho da versão do Flutter é maior do que o esperado/n O Flutter precisa ser usado junto com outra linguagem OOP, Dart, que não pode competir com outras linguagens OOP, como Java, C #/n Devido à complexidade limitada do Flutter, as plataformas de anúncios móveis não o suportam/n Flutter ainda não é usado por um grande público",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Por que geralmente leva muito tempo para desenvolver um aplicativo Flutter?",
  "resposta": "Como o Flutter gera um arquivo IPA ou APK específico do dispositivo, a criação de um aplicativo Flutter leva muito mais tempo na primeira vez. Esse método, que normalmente leva muito tempo, usa Xcode e Gradle para criar um arquivo.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que são chaves e como usá-las?",
  "resposta": "Um conjunto de IDs para Widgets, Elements e SemanticsNodes compõem a classe chave. As chaves são responsáveis ​​por preservar o estado dos widgets quando são atualizados dentro da árvore de widgets. As chaves também podem ser usadas para modificar e reorganizar coleções de widgets do mesmo tipo e estados definidos./n Caso contrário, as chaves podem ser supérfluas para o código, mesmo que não sejam prejudiciais de forma alguma. As chaves são úteis quando você precisa editar uma árvore de widgets com widgets com estado, mas não quando a árvore é totalmente composta por widgets sem estado.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que é gestão de estado?",
  "resposta": "O gerenciamento de estado é crítico, esteja você desenvolvendo um aplicativo móvel ou um site da web. Um estado são os dados locais mantidos por um widget com estado que permite que ele se adapte a circunstâncias dinâmicas, como entrada interativa. O estado de um aplicativo é definido como qualquer coisa armazenada na memória do aplicativo durante sua execução.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Quais são os diferentes tipos de streams no Dart?",
  "resposta": "Os fluxos fornecem uma sequência assíncrona de dados. A programação assíncrona usa a ideia de fluxos. Eles se referem à sucessão assíncrona de ocorrências de dados de um programa. Colocamos um valor em uma extremidade e um ouvinte na outra, semelhante a um tubo. Vários ouvintes podem ser combinados em um único fluxo e, quando colocados no pipeline, todos obterão os mesmos dados. É possível utilizar o SteamController para estabelecer novos fluxos ou gerenciar os existentes. Existem dois tipos de fluxos:/n Fluxos de assinatura única Esses fluxos transmitem eventos em ordem cronológica. Eles são pensados ​​como sequências individuais dentro de uma totalidade maior. Quando a sequência na qual os eventos são recebidos importa, como ao ler um arquivo, esses fluxos são empregados. Ao longo da sequência, só pode haver um ouvinte e o evento não será acionado se não houver um./n Streams de transmissão Essas transmissões fornecem aos assinantes informações sobre os próximos eventos. Os assinantes podem começar a ouvir instantaneamente os eventos depois de se inscrever neles. Estes são fluxos flexíveis que permitem que vários ouvintes ouçam ao mesmo tempo. Além disso, mesmo depois de cancelar uma assinatura anterior, pode-se ouvir novamente.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que você quer dizer com animação interpolada?",
  "resposta": "Animação interpolada significa animação 'intermediária'. Como o nome sugere, você precisaria especificar o início e o fim de uma animação. A animação pode começar do início e passar por uma sequência de valores até chegar ao destino usando essa abordagem. A animação de interpolação também é usada para definir a velocidade e a duração da transição. A estrutura do widget facilitará o cálculo da transição do começo ao fim.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que é o arquivo pubspec.yaml?",
  "resposta": "Ao criar um projeto Flutter, um determinado tipo de arquivo é sempre incluído na parte superior do projeto. Esse arquivo é conhecido como arquivo pubspec.yaml, também chamado de 'pubspec'. Este arquivo contém informações sobre as dependências de um projeto, como pacotes e suas versões, tipos de letra e assim por diante. Ele garante que a versão do pacote seja a mesma na próxima vez que você criar o projeto. Você também pode colocar restrições no aplicativo. O arquivo de configuração deste projeto será muito utilizado ao trabalhar com o projeto Flutter. Esta especificação é escrita em YAML, uma linguagem de marcação legível por humanos.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que é Flutter?",
  "resposta": "Flutter é um kit de desenvolvimento de software (SDK) de código aberto usado para aplicativos de plataforma cruzada a partir de uma única base de código. O Flutter é usado principalmente para criar aplicativos multiplataforma compilados nativamente em iOS e Android sem problemas.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Flutter é desenvolvido por qual empresa?",
  "resposta": "Google",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Qual foi a primeira versão do Flutter executada em um sistema operacional Android?",
  "resposta": "Sky é a primeira versão do Flutter que rodava no sistema operacional Android. Foi anunciado na cúpula de desenvolvedores do Dart de 2015 com o objetivo declarado de ser capaz de renderizar consistentemente a 120 quadros por segundo.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Fale-me sobre o Flutter Provider.",
  "resposta": "Widgets são usados ​​para construir o provider. Dentro do provider, pode-se usar todos os objetos como se fossem parte dele com as novas subclasses de widget que ele cria. Principalmente, funciona no conceito de PUB-SUB, que significa um provider com muitos assinantes.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Quais são as vantagens de usar o Flutter?",
  "resposta": "Flutter tem muitas vantagens:/n Desenvolvimento rápido : com a ajuda do Flutter, você pode economizar muito tempo ao desenvolver software. Hot reload é um recurso de vibração com o qual você pode fazer alterações em seu código e ver os resultados em tempo real./n Interface de usuário flexível : o Flutter fornece ao seu aplicativo uma aparência elegante, bonita e moderna que certamente impressionará seus usuários./n Fornece desempenho nativo : os aplicativos do Flutter são executados de maneira mais rápida e suave nos dispositivos./n Widgets : ao criar seu aplicativo no Flutter, você obtém acesso a uma ampla variedade de widgets pré-carregados que podem ser utilizados em seu aplicativo./n Enorme suporte da comunidade : se você deseja alcançar um público global, o Flutter é para você porque oferece suporte à internacionalização. Com ele, você pode criar um aplicativo disponível em vários idiomas.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Qual é o objetivo do Navigator no Flutter e como ele é usado?",
  "resposta": "Navigator é um widget no Flutter que gerencia uma pilha de telas ou 'rotas' em um aplicativo. Ele é usado para navegar entre diferentes telas e para gerenciar o estado da pilha de navegação. Navigator é normalmente usado em conjunto com MaterialApp ou CupertinoApp para criar uma hierarquia de navegação para um aplicativo.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Você pode nos dar alguns exemplos de App State?Você pode nos dar alguns exemplos de App State?",
  "resposta": "Alguns exemplos de App State incluem:/n informações de login/n Notificações em um aplicativo de rede social/n Preferências de usuário",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Explicar os fluxos no Flutter?",
  "resposta": "Future e Stream são classes no Dart que definem a programação assíncrona. Ele se comporta de forma assíncrona, pois não retorna o próximo evento quando solicitado. Em vez disso, informa quando o próximo evento será retornado quando estiver pronto.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Qual é o ciclo de vida de um StatefulWidget?",
  "resposta": "O ciclo de vida de um StatefulWidget é o seguinte:/n createState /n initState/n didChangeDependencies/n build/n didUpdateWidget/n setState/n deactivate/n dispose",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Defina o termo livro de receitas.",
  "resposta": "Um livro de receitas fornece soluções de programação específicas para alguns problemas comuns enfrentados pelos desenvolvedores durante o processo de desenvolvimento. Cada receita pode ser usada independentemente durante o processo de desenvolvimento.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "O que é Arquitetura Flutter?",
  "resposta": "A arquitetura do Flutter é composta por três camadas:/n Flutter Framework Layer : Esta é a camada mais alta na arquitetura Flutter e inclui os widgets e os widgets Material Design. Ele também inclui APIs para animações, gestos e roteamento./n Camada do mecanismo : esta é a camada central da arquitetura do Flutter que contém o mecanismo de renderização, que lida com gráficos e renderização de texto. Também inclui a biblioteca de gráficos Skia, usada para desenhar gráficos na tela./n Camada da plataforma : esta é a camada mais baixa na arquitetura do Flutter e fornece acesso às APIs da plataforma nativa. Inclui plug-ins e pacotes que permitem que o Flutter interaja com o hardware e o software do dispositivo, como câmera, serviços de localização e sensores.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Você pode dar algumas razões pelas quais o Flutter é melhor do que suas alternativas?",
  "resposta": "Flutter tem várias vantagens sobre suas alternativas. Aqui estão algumas das principais razões pelas quais o Flutter é uma ótima opção para criar aplicativos móveis:/n O Flutter oferece um recurso de hot-reload que permite aos desenvolvedores ver as alterações em seu código instantaneamente, sem ter que esperar a recompilação do aplicativo./n O Flutter permite que você crie aplicativos que funcionam perfeitamente em várias plataformas, incluindo Android, iOS e web./n O Flutter oferece um rico conjunto de widgets personalizáveis, permitindo que os desenvolvedores criem designs bonitos e responsivos que se adaptam a diferentes tamanhos e orientações de tela./n O Flutter usa uma linguagem de programação compilada, Dart, que é otimizada para desempenho e é executada nativamente no dispositivo.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Explique como você publicará um aplicativo Flutter no Google Play/App Store?",
  "resposta": "Para implantar aplicativos Flutter na Google Play Store ou App Store, você precisará conhecer as diretrizes sugeridas por cada uma. Em ambos os casos, é importante garantir que seu aplicativo atenda aos requisitos e diretrizes da respectiva loja de aplicativos antes de enviá-lo para revisão. Isso inclui itens como conteúdo do aplicativo, privacidade dos dados do usuário, interface do usuário e muito mais./n Publicando na Google Play Store :/n Crie uma conta de desenvolvedor do Google Play/n Criar uma chave de assinatura/n Configurar seu aplicativo/n Envie seu aplicativo para análise/n Publique seu aplicativo/n Publicando na App Store :/n Crie uma conta de desenvolvedor da Apple/n Crie um certificado de assinatura e um perfil de provisionamento/n Configurar seu aplicativo/n Envie seu aplicativo para análise/n Publique seu aplicativo",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "PLENO",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Por que precisamos de diretórios separados para iOS e Android no Flutter?",
  "resposta": "Veja por que você precisaria de dois diretórios diferentes para arquivos Android e iOS no Flutter:/n Pasta Android: Você precisa de uma pasta Android para manter os arquivos de um projeto Android. Quando qualquer estrutura Flutter cria o código, o compilador converte o código Flutter em código nativo que é importado para projetos Android criando um aplicativo Android nativo./n iOS : armazena todos os arquivos para projetos Mac. Se você estiver criando um projeto para a plataforma iOS, a pasta iOS será usada. Os aplicativos iOS só podem ser desenvolvidos usando o Xcode IDE e o macOS no Flutter, e é por isso que você precisa da pasta iOS.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "SENIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Você pode explicar como usar o sistema de navegação integrado do Flutter para criar uma hierarquia de navegação de vários níveis?",
  "resposta": "O sistema de navegação do Flutter permite que você crie uma hierarquia de navegação de vários níveis usando o widget Navigator para gerenciar uma pilha de páginas. Você pode colocar novas páginas na pilha usando o método Navigator.push e removê-las usando o método Navigator.pop",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "SENIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Você pode descrever como usar o sistema de reconhecimento de gestos do Flutter para detectar a entrada do usuário?",
  "resposta": "O sistema de reconhecimento de gestos do Flutter fornece um conjunto de gestos predefinidos, como tocar, arrastar e dimensionar, que permitem detectar a entrada do usuário e reagir a ela. Você pode usar o widget GestureDetector para ouvir gestos e o método GestureDetector.onTap para lidar com toques. Você também pode criar gestos personalizados subclassificando a classe GestureRecognizer.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "SENIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "Você pode descrever em detalhes os IDEs do Flutter?",
  "resposta": "Alguns dos IDEs Flutter mais populares incluem o seguinte:/n O IntelliJ IDEA é rico em recursos, possui amplo suporte para vários idiomas e fornece assistência de codificação inteligente. A maioria dos desenvolvedores iniciantes provavelmente se daria bem com a Community Edition gratuita, mas a Ultimate Edition paga é necessária para acessar recursos adicionais./n O Android Studio funciona como o IntelliJ IDEA, mas apenas para Android. Ao contrário do último, porém, o Android Studio é gratuito e de código aberto. Com assistência de codificação inteligente e um depurador integrado, parece a melhor escolha ao programar para dispositivos Android./n O código do Visual Studio, ou simplesmente VS Code, é uma ferramenta gratuita apoiada pela Microsoft. Acelera o desenvolvimento e reduz o tempo de desenvolvimento. Funciona com Windows, macOS e Linux./n Como essa é uma das perguntas mais críticas da entrevista do Flutter para avaliar o conhecimento de um desenvolvedor, você também pode perguntar qual é o IDE favorito dele e a justificativa para escolher um.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "SENIOR",
      "FLUTTER",
      "MOBILE"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "SENIOR",
      "FLUTTER",
      "MOBILE"
  ]
},{
  "pergunta": "O que é HTML?",
  "resposta": "HTML é uma linguagem de marcação de hipertexto (do inglês 'HyperText Markup Language'). É a linguagem principal usada para criar páginas da web e outros tipos de conteúdo que podem ser exibidos em um navegador da web. A linguagem HTML usa marcações para definir elementos, como títulos, parágrafos, imagens, links e outros elementos que compõem uma página da web. Cada elemento é definido usando uma tag HTML, que é uma sequência de caracteres colocada entre colchetes angulares (< e >). As tags HTML fornecem informações para o navegador sobre como exibir o conteúdo na página da web. Por exemplo, a tag <img> é usada para inserir uma imagem na página e a tag <a> é usada para criar um link para outra página da web. Os arquivos HTML são geralmente criados usando um editor de texto simples e podem ser exibidos em qualquer navegador da web.",
  "filtros": [
    "HTML",
    "ESTAGIO",
    "TECNICA",
    "FRONTEND",
    "JUNIOR"
  ]
},
{
  "pergunta": "Qual é a diferença entre HTML e XHTML?",
  "resposta": "HTML (HyperText Markup Language) e XHTML (eXtensible HyperText Markup Language) são ambas linguagens de marcação usadas para criar páginas da web. A principal diferença entre as duas é a sintaxe utilizada para escrever o código. HTML é uma linguagem mais antiga e é menos rigorosa em relação às regras de sintaxe. Por exemplo, em HTML, as tags não precisam ser fechadas e o uso de letras maiúsculas ou minúsculas não faz diferença. Isso significa que o código HTML pode ser mais fácil de escrever e editar, mas pode ter mais erros. Por outro lado, XHTML é uma linguagem mais recente e mais rigorosa em relação às regras de sintaxe. O código XHTML deve ser escrito de acordo com as regras do XML, o que significa que todas as tags devem ser fechadas corretamente e as letras maiúsculas e minúsculas devem ser usadas corretamente. Isso torna o código XHTML mais estruturado e fácil de validar, o que pode ajudar a evitar erros de codificação. Em geral, a escolha entre HTML e XHTML depende das necessidades do projeto. Para projetos mais simples, como sites pessoais ou blogs, HTML pode ser mais adequado. Já para projetos mais complexos, como sites de comércio eletrônico ou aplicações web, XHTML pode ser uma escolha mais segura, garantindo maior integridade do código e melhorando a compatibilidade com diversos navegadores e plataformas.",
  "filtros": [
    "HTML",
    "XHTML",
    "ESTAGIO",
    "TECNICA",
    "FRONTEND",
    "JUNIOR"
  ]
},
{
  "pergunta": "O que é CSS?",
  "resposta": "CSS (Cascading Style Sheets) é uma linguagem de estilo usada para descrever a aparência e o formato de um documento escrito em HTML (HyperText Markup Language), incluindo a formatação de texto, cores, imagens, layout e outros elementos visuais. O CSS separa a apresentação do conteúdo do documento HTML, permitindo que os desenvolvedores criem estilos consistentes e reutilizáveis para todo o site. Isso significa que, em vez de formatar cada elemento visual individualmente dentro do HTML, o CSS permite criar estilos que afetam todo o site. Os estilos CSS são definidos em um arquivo separado, geralmente com a extensão .css, que é vinculado ao arquivo HTML por meio de uma tag <link>. Isso significa que o CSS pode ser alterado facilmente sem afetar o conteúdo do documento HTML. Ao separar o estilo da estrutura do documento, o CSS torna o desenvolvimento web mais eficiente e mais fácil de manter. Também permite que os desenvolvedores criem designs mais atraentes e sofisticados para sites, além de tornar as páginas da web mais acessíveis para pessoas com deficiência visual, permitindo a personalização da aparência das páginas.",
  "filtros": [
    "CSS",
    "ESTAGIO",
    "TECNICA",
    "FRONTEND",
    "JUNIOR"
  ]
},
{
  "pergunta": "O que é o Angular?",
  "resposta": "Angular é um framework JavaScript de código aberto criado e mantido pelo Google. Ele é usado para desenvolver aplicativos web e móveis baseados em componentes. O Angular oferece uma abordagem moderna e escalável para o desenvolvimento de aplicativos web do lado do cliente, que utiliza o padrão MVC (Model-View-Controller) para separar o modelo de dados da lógica de negócios e da apresentação. O Angular é construído com base em tecnologias modernas, como HTML, CSS e TypeScript, e é conhecido por sua capacidade de criar aplicativos web de página única (SPA) que carregam rapidamente e oferecem uma experiência de usuário suave e interativa. Ele inclui recursos avançados, como injeção de dependência, roteamento, validação de formulários, animações e muito mais. Uma das principais vantagens do Angular é a sua grande comunidade de desenvolvedores e suporte contínuo do Google, o que garante que o framework seja atualizado regularmente com novos recursos e correções de bugs. O Angular também é altamente personalizável, permitindo que os desenvolvedores criem componentes reutilizáveis e adaptem o framework às suas necessidades específicas. Em resumo, o Angular é uma poderosa ferramenta para o desenvolvimento de aplicativos web modernos, que oferece aos desenvolvedores uma abordagem estruturada e eficiente para a construção de aplicativos complexos e escaláveis.",
  "filtros": [
    "ANGULAR",
    "JAVASCRIPT",
    "ESTAGIO",
    "TECNICA",
    "FRONTEND",
    "JUNIOR"
  ]
},
{
  "pergunta": "frameworks front-end mais populares atualmente são?",
  "resposta": "React: uma biblioteca JavaScript de código aberto desenvolvida pelo Facebook, é focada em criar interfaces de usuário (UI) dinâmicas e eficientes. Ele utiliza o conceito de componentes e pode ser usado com outras bibliotecas e frameworks. Angular: um framework front-end desenvolvido pelo Google, ele permite a criação de aplicativos web complexos com uma arquitetura escalável e modular. Ele utiliza o conceito de componentes, diretivas e serviços para construir aplicações robustas. Vue: uma biblioteca JavaScript de código aberto, ela é voltada para a criação de interfaces de usuário reativas e progressivas. É fácil de aprender e pode ser integrada facilmente em outros projetos.",
  "filtros": [
    "REACT",
    "JAVASCRIPT",
    "FRONTEND",
    "ANGULAR",
    "VUE",
    "JUNIOR"
  ]
},
{
  "pergunta": "Como se manter atualizado em relação às novas tecnologias e tendências no desenvolvimento front-end?",
  "resposta": "O desenvolvimento front-end é um campo em constante evolução, e é importante se manter atualizado em relação às novas tecnologias e tendências. Aqui estão algumas maneiras de se manter atualizado: Leia blogs e artigos: existem muitos blogs e sites dedicados ao desenvolvimento front-end, como o CSS-Tricks, o Smashing Magazine e o A List Apart. Eles publicam regularmente artigos e tutoriais sobre as últimas tendências e tecnologias do desenvolvimento front-end. Assista vídeos e palestras: plataformas como o YouTube e o Vimeo têm muitos vídeos e palestras de desenvolvedores experientes compartilhando seus conhecimentos sobre as últimas tendências e tecnologias do desenvolvimento front-end. Participe de eventos e conferências: participar de eventos e conferências é uma ótima maneira de se manter atualizado em relação às tendências do desenvolvimento front-end e conhecer outros profissionais da área. Experimente novas tecnologias e ferramentas: tente experimentar novas tecnologias e ferramentas, como frameworks e bibliotecas, para se manter atualizado e expandir suas habilidades. Participe de comunidades on-line: participe de comunidades on-line de desenvolvedores front-end, como grupos no LinkedIn, Slack ou Reddit, para compartilhar conhecimentos e obter informações sobre as últimas tendências e tecnologias. Siga especialistas em mídias sociais: muitos especialistas em desenvolvimento front-end compartilham seus conhecimentos e opiniões nas mídias sociais, como o Twitter e o Instagram. Siga esses especialistas para ficar atualizado em relação às últimas tendências e tecnologias. Ao se manter atualizado em relação às últimas tendências e tecnologias do desenvolvimento front-end, você pode aprimorar suas habilidades e se tornar um profissional mais valioso para sua equipe e seus clientes.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "Como você planeja e organiza seu trabalho de desenvolvimento front-end?",
  "resposta": "Existem várias etapas no processo de planejamento e organização do trabalho de desenvolvimento front-end. Aqui estão algumas práticas recomendadas que você pode seguir: Compreender os requisitos do projeto: Antes de começar a trabalhar, é importante ter uma compreensão clara dos requisitos do projeto. Isso inclui a compreensão do escopo do projeto, dos objetivos de negócios, dos prazos e do orçamento.Compreender os requisitos do projeto: Antes de começar a trabalhar, é importante ter uma compreensão clara dos requisitos do projeto. Isso inclui a compreensão do escopo do projeto, dos objetivos de negócios, dos prazos e do orçamento. Definir as etapas do projeto: Depois de entender os requisitos do projeto, você deve definir as etapas do projeto e estabelecer um plano de ação. Isso envolve a criação de um cronograma de trabalho, a definição de marcos e a alocação de recursos necessários. Utilizar ferramentas de gerenciamento de projeto: Utilizar ferramentas de gerenciamento de projeto, como o Trello ou o Asana, pode ajudá-lo a manter o controle do projeto e a acompanhar as etapas do desenvolvimento. Criar wireframes e protótipos: Antes de começar a escrever código, é importante criar wireframes e protótipos para validar a usabilidade e a funcionalidade da interface do usuário. Utilizar metodologias ágeis: As metodologias ágeis, como o Scrum, ajudam a manter o foco nas entregas e a garantir que o trabalho esteja sendo entregue de forma iterativa e incremental. Testar e validar: Testar e validar continuamente seu trabalho é essencial para garantir que o código esteja funcionando corretamente e que a interface do usuário seja intuitiva e fácil de usar. Documentar o trabalho: Documentar o trabalho é importante para ajudar a manter a consistência e a rastreabilidade do código. Isso inclui a documentação de requisitos, testes e fluxos de trabalho. Revisar e refatorar o código: Revisar e refatorar o código regularmente ajuda a garantir que o código seja limpo, otimizado e fácil de manter. Em resumo, o planejamento e organização do trabalho de desenvolvimento front-end envolve a compreensão dos requisitos do projeto, a definição de etapas, a utilização de ferramentas de gerenciamento de projetos, a criação de wireframes e protótipos, a utilização de metodologias ágeis, a testagem e validação contínua, a documentação do trabalho e a revisão e refatoração do código.Em resumo, o planejamento e organização do trabalho de desenvolvimento front-end envolve a compreensão dos requisitos do projeto, a definição de etapas, a utilização de ferramentas de gerenciamento de projetos, a criação de wireframes e protótipos, a utilização de metodologias ágeis, a testagem e validação contínua, a documentação do trabalho e a revisão e refatoração do código.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "Como você lida com prazos apertados e situações de pressão no ambiente de trabalho?",
  "resposta": "Lidar com prazos apertados e situações de pressão é uma habilidade importante no ambiente de trabalho, especialmente no desenvolvimento front-end, onde os prazos muitas vezes são curtos. Aqui estão algumas estratégias que você pode utilizar para lidar com essas situações: Priorizar tarefas: Em situações de pressão, é importante priorizar as tarefas de acordo com sua importância e impacto no projeto. Focar nas tarefas mais críticas primeiro pode ajudar a garantir que o trabalho mais importante seja concluído dentro do prazo. Comunicar com a equipe: Comunicar-se abertamente com a equipe pode ajudar a aliviar a pressão e a encontrar soluções criativas para os desafios do projeto. Trabalhar em conjunto para definir prioridades e delegar tarefas pode ajudar a manter o projeto no caminho certo. Ser realista: É importante ser realista em relação aos prazos e às expectativas do projeto. Estar ciente dos recursos disponíveis e das limitações de tempo pode ajudar a definir expectativas realistas e a evitar frustrações desnecessárias. Utilizar ferramentas e recursos: Utilizar ferramentas e recursos para otimizar o tempo de trabalho pode ajudar a cumprir prazos apertados. Isso pode incluir a utilização de bibliotecas de código pré-existente, templates e ferramentas de automação. Gerenciar o tempo: Gerenciar o tempo de forma eficiente pode ajudar a evitar a procrastinação e a garantir que o trabalho esteja sendo concluído dentro do prazo. Focar nas tarefas mais importantes e limitar as distrações pode ajudar a manter o foco e a produtividade. Manter-se calmo e focado: Manter-se calmo e focado é fundamental em situações de pressão. Praticar técnicas de relaxamento, como respiração profunda, e manter o foco nas tarefas prioritárias pode ajudar a lidar com a pressão e a manter a clareza mental. Em resumo, lidar com prazos apertados e situações de pressão no ambiente de trabalho envolve priorizar tarefas, comunicar com a equipe, ser realista, utilizar ferramentas e recursos, gerenciar o tempo e manter-se calmo e focado.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "SENIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "O que é SQL injection?",
  "resposta": "SQL injection é um tipo de ataque cibernético que explora vulnerabilidades em sistemas de gerenciamento de banco de dados (DBMS) para obter acesso não autorizado ou controlar o banco de dados. Nesse tipo de ataque, o invasor usa técnicas para inserir instruções SQL maliciosas em uma entrada de formulário, string de consulta ou outras entradas do usuário em um aplicativo da web. Essas instruções são executadas pelo DBMS sem a devida validação e filtragem, permitindo que o invasor leia, modifique ou exclua dados do banco de dados. Os ataques de SQL injection podem causar graves danos aos sistemas e aos dados armazenados. Para evitá-los, é importante garantir que todas as entradas do usuário sejam devidamente validadas, filtradas e sanitizadas antes de serem usadas em consultas SQL. Além disso, é recomendável utilizar parâmetros de consulta e procedimentos armazenados para prevenir esse tipo de ataque.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "SQL",
    "TECNICA"
  ]
},
{
  "pergunta": "O que é escopo em JavaScript?",
  "resposta": "Escopo em JavaScript se refere ao contexto no qual as variáveis, funções e outros identificadores são definidos e acessíveis. O escopo é uma das características fundamentais da linguagem, pois afeta diretamente a visibilidade e a acessibilidade das variáveis e funções em um programa. Existem dois tipos de escopo em JavaScript: escopo global e escopo local. O escopo global é aquele em que as variáveis e funções são definidas fora de qualquer função, ou seja, estão disponíveis em todo o programa. Já o escopo local é aquele em que as variáveis e funções são definidas dentro de uma função, e só são acessíveis dentro dessa função. Uma variável declarada com a palavra-chave 'var' é definida no escopo da função em que ela é declarada enquanto uma variável declarada com a palavra-chave 'let' ou 'const' é definida no bloco em que ela é declarada (dentro de uma função ou dentro de um bloco de código delimitado por chaves). Entender o escopo em JavaScript é importante para evitar problemas como variáveis sendo acessadas ou modificadas inadvertidamente em partes do programa onde não deveriam estar disponíveis. Além disso, o uso correto do escopo pode ajudar a escrever um código mais organizado e modular.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "TECNICA"
  ]
},
{
  "pergunta": "Explique o CSS “box model” e os componentes de layout que o compõem.",
  "resposta": "O CSS Box Model é um conceito fundamental em design de layout da web que define a forma como os elementos HTML são renderizados em uma página da web. O modelo se refere à caixa retangular invisível que envolve cada elemento HTML, incluindo seu conteúdo, preenchimento, bordas e margens. O Box Model é composto pelos seguintes componentes: Conteúdo: é o próprio conteúdo do elemento, como texto, imagem ou outro tipo de conteúdo. Preenchimento (padding): é uma área transparente ao redor do conteúdo dentro da caixa. Ele pode ser configurado com um valor fixo em pixels ou uma porcentagem em relação ao tamanho da caixa. Borda (border): é uma linha que circunda a caixa. Ele pode ser configurado com um estilo, largura e cor personalizados. Margem (margin): é uma área transparente fora da borda da caixa. Ela pode ser configurada com um valor fixo em pixels ou uma porcentagem em relação ao tamanho da caixa. Esses componentes do Box Model afetam a maneira como os elementos são dimensionados, posicionados e alinhados em uma página da web. Por exemplo, se você aumentar o valor do preenchimento, o tamanho total da caixa do elemento aumentará e seu conteúdo será deslocado mais para o centro da caixa. Da mesma forma, se você aumentar o valor da margem, a caixa do elemento se tornará maior e haverá mais espaço em branco entre o elemento e os outros elementos em torno dele. O Box Model é um conceito importante para entender quando se trata de design de layout da web, pois permite que os desenvolvedores ajustem o posicionamento e o tamanho dos elementos em uma página de forma precisa e consistente.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "CSS",
    "TECNICA"
  ]
},
{
  "pergunta": "Como JavaScript e jQuery são diferentes?",
  "resposta": "JavaScript e jQuery são tecnologias diferentes, embora ambas sejam usadas para desenvolver aplicativos da web interativos. JavaScript é uma linguagem de programação de alto nível, interpretada e orientada a objetos que é usada para criar aplicativos da web interativos. Ela pode ser executada em qualquer navegador moderno sem a necessidade de instalar plugins ou outras tecnologias adicionais. jQuery, por outro lado, é uma biblioteca de JavaScript que fornece uma série de funcionalidades e recursos adicionais para simplificar o desenvolvimento de aplicativos da web interativos. Ele é usado para manipulação de DOM, eventos, animações e outras interações da interface do usuário, e pode ser usado em conjunto com JavaScript ou em substituição a ele. A principal diferença entre JavaScript e jQuery é que o jQuery é uma biblioteca que foi criada para tornar o desenvolvimento em JavaScript mais fácil e rápido. Ele fornece uma sintaxe mais simples e intuitiva para tarefas comuns, além de fornecer recursos como a manipulação do DOM e suporte a AJAX com menos código do que seria necessário em JavaScript puro. No entanto, vale lembrar que jQuery é uma biblioteca de JavaScript, ou seja, é construída em cima da linguagem JavaScript e utiliza suas funcionalidades. Portanto, para usar jQuery de forma efetiva, é importante ter uma boa compreensão de JavaScript e suas funcionalidades.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "O que é Cross-Site Scripting (XSS)?",
  "resposta": "É um ataque de injeção de client-side script (código malicioso) que se aproveita de brechas em aplicações web para se apropriar de dados no navegador.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "O que é Sass?",
  "resposta": "É uma linguagem de extensão do CSS, a sua ideia é adicionar recursos especiais como variáveis, mixins, funções, nested selectors. Tem o objetivo tornar o desenvolvimento mais simples e eficiente.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "CSS",
    "SASS",
    "TECNICA"
  ]
},
{
  "pergunta": "Qual o ponto de se usar Redux?",
  "resposta": "Com o redux é criado um state global, e todos os componentes tem acesso a esse state, isso elimina a necessidade de passar continuamente o state de um componente para outro.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "REDUX",
    "TECNICA"
  ]
},
{
  "pergunta": "Explique a diferença de null e undefined em JavaScript",
  "resposta": "Null é um valor primitivo que representa a ausência intencional de um valor, ja o undefined é um valor primitivo utilizado quando não se teve valor atribuído previamente.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "JAVASCRIPT",
    "TECNICA"
  ]
},
{
  "pergunta": "Liste as vantagens da arquitetura de microsserviços",
  "resposta": "Facilidade e rapidez na atualização e implantação dos serviços; Aumentar a flexibilidade da infraestrutura Escalabilidade; Estandardização de serviços; Redução de dívida técnica ;Desenvolvimento de práticas de DevOps e de colaboração do time",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "Quais são as vantagens do NoSQL sobre o RDBMS tradicional?",
  "resposta": "Escalabilidade;/n Grande volume de Dados;/n Flexibilidade no formato de dados;/n Menor custo",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "NOSQL",
    "RDBMS",
    "TECNICA"
  ]
},
{
  "pergunta": "O que é programação reativa?",
  "resposta": "É um paradigma de programação declarativo preocupado com os fluxos de dados e a propagação de mudança, reage a eventos disparados por interações do usuário ou situações comuns.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "TECNICA"
  ]
},
{
  "pergunta": "Qual o papel do HTML na indexação de páginas por buscadores?",
  "resposta": "Na indexação, se busca as páginas para o índice do motor de busca, motando o Pagerank, um ranking baseado numa fórmula desenvolvida pelo Google que considera também uma série de informações sobre o website para classificá-lo com uma pontuação de 0 a 10. O papel do HTML é muito influente nesse caso, quando mais semântico e bem escrito, melhor é o Pagerank, como os títulos das páginas, meta tags, heading tags, atributo alt em imagens e etc.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "HTML"
  ]
},
{
  "pergunta": "Cite 3 conceitos da Programação Orientada a Objetos aplicada ao JavaScript",
  "resposta": "Classe, herança e encapsulamento.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais os beneficios do TypeScript?",
  "resposta": "Adiciona tipagem estática a linguagem JavaScript, possibilita que a IDE incremente o IntelliSense, Utilizar funcionalidades do Javascript que ainda não estão disponíveis de forma nativa, transpilar o código para que o mesmo seja lido por todas as versões do browsers.",
  "filtros": [
    "FRONTEND",
    "JUNIOR",
    "JAVASCRIPT",
    "TYPESCRIPT"
  ]
},
{
  "pergunta": "Mencione qual é a diferença entre PUT e POST?",
  "resposta": "PUT/POST é um método Http. POST usado para criar um recurso, o PUT para alterar um recurso.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "POST",
    "PUT"
  ]
},
{
  "pergunta": "O que são atributos defer e assync em uma tag <script>?",
  "resposta": "Defer assim como occore com o async, com o defer o download do script é feito de forma assíncrona, mas sua execução ocorre apenas quando todo o processo de renderização estiver concluído.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "ASYNC",
    "DEFER"
  ]
},
{
  "pergunta": "O que significa SOLID? Quais são seus princípios?",
  "resposta": "SOLID São princípios e boas práticas de programação que melhore o design de software e arquitetura, seus princípios são:/n Single Responsiblity: Uma classe deve ter um, e somente um, motivo para mudar; /n Open-Closed: Objetos ou entidades devem estar abertos para extensão, mas fechados para modificação; /n Liskov Substitution: Uma classe derivada deve ser substituível por sua classe base/n Interface Segregation: Uma classe não deve ser forçada a implementar interfaces e métodos que não irão utilizar/n Dependency Inversion: Dependa de abstrações e não de implementações",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "SOLID"
  ]
},
{
  "pergunta": "O que é coerção em JavaScript?",
  "resposta": "É um processo de conversão de um valor de um tipo, para outro (como a conversão de string para number). Qualquer tipo, seja primitivo ou um objeto, é um sujeito válido para coerção de tipo.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "JAVASCRIPT"
  ]
},
{
  "pergunta": "Cite alguns sistemas de grid CSS",
  "resposta": "grid-template-columns, grid-template-rows, grid-template-areas, grid-template, grid-auto-columns, grid-auto-columns.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "CSS"
  ]
},
{
  "pergunta": "Quando devo usar as Arrow functions no ES6?",
  "resposta": "Para funções que não sejam métodos, Em funções mais curtas, e quando não precisar usar o contexto(this, arguments, super, new.target).",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "ES6"
  ]
},
{
  "pergunta": "Quando devemos usar generators no ES6?",
  "resposta": "Quando queremos uma função que pode ser executada, pausada e continuada em diferentes estágios da sua execução. Criar de maneira mais fácil iteradores e controlar o código assíncrono.",
  "filtros": [
    "FRONTEND",
    "PLENO",
    "ES6"
  ]
},
{
  "pergunta": "Cite algumas características de sistemas reativos",
  "resposta": "Flexíveis, desacoplados e escaláveis.",
  "filtros": [
    "FRONTEND",
    "PLENO"
  ]
},
{
  "pergunta": "Descreva a diferença entre a programação reativa e a programação imperativa",
  "resposta": "Programação reativa reage a eventos disparados por interações do usuário ou situações comuns. Já a programação imperativa é mais autoritária, diz como e o quê exatamente um programa ou rotina deve realizar.",
  "filtros": [
    "FRONTEND",
    "PLENO"
  ]
},
{
  "pergunta": "Imperativo vs Funcional vs Programação Reativa. Explique",
  "resposta": "Imperativo descreve exatamente como um programa ou rotina deve funcionar, controlando totalmente o estado do programa, A funcional usa a composição de funções puras evitando o compartilhamento de estados, dados mutáveis e efeitos colaterais, Programação reativa reage a eventos disparado pelo usuário ou situações comuns do programa.",
  "filtros": [
    "FRONTEND",
    "SENIOR"
  ]
},
{
  "pergunta": "Você pode explicar o que “git reset” faz?",
  "resposta": "Desfazer alterações locais no estado de um repositório git, gerenciando o estado interno do git como a árvore de commits(HEAD), o índice de staging e o diretório de trabalho.",
  "filtros": [
    "FRONTEND",
    "SENIOR"
  ]
},
{
  "pergunta": "Qual a diferença de Interface e Type no TypeScript?",
  "resposta": "Usar type é como se criasse um apelido para tipos primitivos. Interface para descrever uma forma de dados.",
  "filtros": [
    "FRONTEND",
    "SENIOR",
    "TYPESCRIPT"
  ]
},
{
  "pergunta": "O que é teste de unidade, teste de integração e quais são as diferenças entre eles?",
  "resposta": "Teste de unidade é quando os módulos são testados individualmente, no de integração os módulos são combinados e testados em grupo.",
  "filtros": [
    "FRONTEND",
    "SENIOR",
    "TESTE"
  ]
},
{
  "pergunta": "O que é Java? Como você descreveria a linguagem em algumas palavras?",
  "resposta": "Java é uma linguagem de programação de alto nível, orientada a objetos e projetada para ser portátil e independente de plataforma. Ela é compilada para um bytecode que é interpretado pela Máquina Virtual Java (JVM), o que significa que o código escrito em Java pode ser executado em qualquer plataforma que possua uma JVM instalada. Java é amplamente utilizada para desenvolver aplicativos de software de diversos tipos, incluindo aplicativos de desktop, aplicativos móveis, aplicativos da web e até mesmo sistemas operacionais. A linguagem é conhecida por sua sintaxe clara e concisa, sua facilidade de uso e sua grande quantidade de bibliotecas e frameworks disponíveis, tornando-a uma escolha popular para muitos desenvolvedores de software.",
  "filtros": [
      "BACKEND",
      "JUNIOR",
      "JAVA"
  ]
},
{
  "pergunta": "Quais são as diferenças entre uma classe abstrata e uma interface em Java?",
  "resposta": "Em Java, tanto as classes abstratas quanto as interfaces são usadas para criar tipos abstratos que podem ser implementados por outras classes. No entanto, existem algumas diferenças fundamentais entre elas:/n Implementação de métodos: uma classe abstrata pode ter métodos implementados, enquanto uma interface não pode. Todos os métodos de uma interface são abstratos e não têm corpo./n Herança: uma classe abstrata pode estender outra classe abstrata ou implementar uma ou mais interfaces, enquanto uma interface pode apenas estender outras interfaces./n Construtores: uma classe abstrata pode ter um construtor, enquanto uma interface não pode./n Níveis de acesso: os métodos e variáveis de uma interface são sempre públicos, enquanto uma classe abstrata pode ter membros com qualquer nível de acesso./n Finalidade: uma classe abstrata é usada quando há uma relação 'é um' entre a classe abstrata e suas subclasses, enquanto uma interface é usada para representar um conjunto de comportamentos que uma classe pode implementar, independentemente da sua hierarquia./n Em resumo, uma classe abstrata é mais apropriada quando se deseja fornecer uma implementação básica para subclasses e, ao mesmo tempo, permitir que subclasses forneçam sua própria implementação para métodos específicos. Já uma interface é mais apropriada quando se deseja fornecer um conjunto de comportamentos que uma classe pode implementar, independentemente de sua hierarquia.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que é polimorfismo em Java? Como ele funciona?",
  "resposta": "O polimorfismo é um conceito fundamental em programação orientada a objetos que permite que objetos de diferentes classes possam ser tratados como se fossem objetos da mesma classe. Em Java, o polimorfismo é implementado por meio de dois mecanismos: sobrecarga de métodos e sobrescrita de métodos./n A sobrecarga de métodos permite que você defina vários métodos com o mesmo nome, mas com diferentes parâmetros. Isso permite que você chame um método com diferentes tipos de argumentos e, assim, obter um comportamento diferente para cada tipo de argumento. O compilador Java seleciona o método correto para chamar com base nos tipos de argumentos fornecidos./n A sobrescrita de métodos, por sua vez, permite que você substitua um método definido em uma classe pai em uma classe filha. Isso permite que você forneça uma implementação diferente do método para a classe filha que é mais adequada para suas necessidades específicas. O método substituto deve ter a mesma assinatura (nome e tipos de parâmetros) do método pai para que a sobrescrita funcione corretamente./n Em resumo, o polimorfismo permite que você escreva código que possa ser reutilizado em diferentes contextos, sem a necessidade de criar um código específico para cada contexto. Ele funciona selecionando a implementação correta de um método com base nos tipos de argumentos passados ou na hierarquia de classes.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "Por que Java é independente de plataforma?",
  "resposta": "Java é chamado de plataforma independente por causa de seus códigos de byte que podem ser executados em qualquer sistema, independentemente do sistema operacional subjacente.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "Por que Java não é 100% orientado a objetos?",
  "resposta": "Java não é 100% orientado a objetos porque faz uso de oito tipos de dados primitivos como boolean, byte, char, int, float, double, long, short que não são objetos.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "Explique JDK, JRE e JVM?",
  "resposta": "JDK: Significa Kit de Desenvolvimento Java. É a ferramenta necessária para compilar, documentar e empacotar programas Java. Ele contém JRE + ferramentas de desenvolvimento./n JRE: Significa Java Runtime Environment. JRE refere-se a um ambiente de tempo de execução no qual o bytecode Java pode ser executado. É uma implementação da JVM que existe fisicamente./n JVM: Significa Java Virtual Machine. É uma máquina abstrata. É uma especificação que fornece um ambiente de tempo de execução no qual o bytecode Java pode ser executado. A JVM segue três notações: Especificação, Implementação e  Instância de Tempo de Execução .",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "Explique public static void main(String args[]) em Java.",
  "resposta": "main() em Java é o ponto de entrada para qualquer programa Java. É sempre escrito como public static void main(String[] args)./n public : Public é um modificador de acesso, que é usado para especificar quem pode acessar esse método. Público significa que este Método será acessível por qualquer Classe./n static : É uma palavra-chave em java que identifica que é baseada em classe. main() é estático em Java para que possa ser acessado sem criar a instância de uma classe. Caso main não seja estático, o compilador lançará um erro, pois main () é chamado pela JVM antes que qualquer objeto seja criado e apenas métodos estáticos podem ser invocados diretamente por meio da classe./n void : É o tipo de retorno do método. Void define o método que não retornará nenhum valor./n main : É o nome do método que é procurado pela JVM como ponto de partida para uma aplicação apenas com uma assinatura específica. É o método onde ocorre a execução principal./n String args[] : É o parâmetro passado para o método main.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que são classes wrapper em Java?",
  "resposta": "As classes wrapper convertem as primitivas Java em tipos de referência (objetos). Todo tipo de dado primitivo tem uma classe dedicada a ele. Elas são conhecidas como classes wrapper porque “empacotam” o tipo de dados primitivo em um objeto dessa classe. Consulte a imagem abaixo que exibe diferentes tipos primitivos, classe wrapper e argumento do construtor.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que são construtores em Java?",
  "resposta": "Em Java, construtor refere-se a um bloco de código que é usado para inicializar um objeto. Deve ter o mesmo nome da classe. Além disso, não possui tipo de retorno e é chamado automaticamente quando um objeto é criado./n  Existem dois tipos de construtores:/n Construtor padrão: Em Java, um construtor padrão é aquele que não recebe nenhuma entrada. Em outras palavras, construtores padrão são os construtores sem argumento que serão criados por padrão caso nenhum outro construtor seja definido pelo usuário. Seu objetivo principal é inicializar as variáveis ​​de instância com os valores padrão. Além disso, é usado principalmente para a criação de objetos./n Construtor parametrizado: O construtor parametrizado em Java, é o construtor capaz de inicializar as variáveis ​​de instância com os valores fornecidos. Em outras palavras, os construtores que recebem os argumentos são chamados de construtores parametrizados.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "JUNIOR"
  ]
},
{
  "pergunta": " O que é herança em Java?",
  "resposta": "Herança em Java é o conceito onde as propriedades de uma classe podem ser herdadas pela outra. Ajuda a reutilizar o código e estabelecer um relacionamento entre as diferentes classes. A herança é realizada entre dois tipos de classes:",
  "filtros": [
      "BACKEND",
      "JAVA",
      "PLENO"
  ]
},
{
  "pergunta": "Qual é a diferença entre uma exceção verificada e uma exceção não verificada? Como você lidaria com esses tipos de exceções em um programa Java?",
  "resposta": "Em Java, existem dois tipos de exceções: exceções verificadas e exceções não verificadas./n As exceções verificadas (checked exceptions) são exceções que o compilador Java exige que sejam tratadas ou propagadas. Essas exceções são geralmente relacionadas a erros de entrada/saída, como arquivos não encontrados, ou a condições de erro que não podem ser facilmente detectadas durante a execução. Para lidar com exceções verificadas, é necessário envolver o código que pode gerar essas exceções em um bloco try-catch ou propagá-las para um bloco superior usando a palavra-chave 'throws.'/n As exceções não verificadas (unchecked exceptions) são exceções que o compilador Java não exige que sejam tratadas ou propagadas. Essas exceções geralmente são relacionadas a erros de programação, como divisão por zero ou acesso a uma posição inválida de um array. Para lidar com exceções não verificadas, é recomendável envolver o código que pode gerar essas exceções em um bloco try-catch para evitar que o programa seja interrompido abruptamente./n Para lidar com exceções em um programa Java, é recomendável seguir algumas boas práticas, como:/n Use exceções verificadas quando uma operação pode falhar devido a uma condição que não possa ser facilmente detectada durante a execução. /n Use exceções não verificadas quando uma operação pode falhar devido a uma condição que pode ser detectada durante a execução./n Não capture exceções que você não sabe como lidar corretamente. Em vez disso, permita que as exceções sejam propagadas para um bloco superior onde possam ser tratadas adequadamente./n Forneça informações úteis de exceção, como mensagens de erro significativas e rastreamentos de pilha, para ajudar a diagnosticar e corrigir problemas./n Não ignore exceções, pois isso pode levar a comportamentos inesperados e difíceis de depurar em seu programa.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "PLENO"
  ]
},
{
  "pergunta": "O que são threads em Java? Como elas são implementadas e gerenciadas na linguagem?",
  "resposta": "Threads em Java são uma forma de realizar programação concorrente e paralela, permitindo que o programa execute múltiplas tarefas simultaneamente. Uma thread é basicamente uma unidade básica de processamento que pode ser executada simultaneamente com outras threads dentro do mesmo processo./n Em Java, threads são implementadas pela classe Thread ou por meio da interface Runnable, que é implementada por uma classe que deseja ser executada em uma thread. Quando uma thread é iniciada, ela executa o método run() da classe Thread ou da classe que implementa a interface Runnable. O método run() é o ponto de entrada da thread e define o comportamento da thread./n Para gerenciar threads em Java, o Java Virtual Machine (JVM) usa um algoritmo de escalonamento de threads que decide qual thread deve ser executada em um determinado momento. A JVM também fornece um conjunto de métodos para permitir que as threads se comuniquem entre si e sincronizem suas operações./n A criação de threads em Java é relativamente fácil. Basta estender a classe Thread ou implementar a interface Runnable e, em seguida, chamar o método start() para iniciar a execução da thread. O método start() cria uma nova thread e, em seguida, chama o método run() da classe ou objeto implementando a thread. É importante lembrar que a execução de múltiplas threads pode levar a problemas de concorrência e sincronização, como condições de corrida e bloqueios mútuos, que precisam ser gerenciados corretamente para garantir a correta execução do programa.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "PLENO"
  ]
},
{
  "pergunta": "Qual é o conceito de 'garbage collection' em Java? Como o Java trata o gerenciamento de memória?",
  "resposta": "O garbage collection (coleta de lixo) é um recurso da linguagem Java que gerencia automaticamente a alocação e liberação de memória de objetos em tempo de execução. Em outras palavras, o garbage collection é um processo pelo qual o Java identifica e remove automaticamente objetos que não estão mais em uso pelo programa, liberando assim a memória associada a esses objetos./n O gerenciamento de memória em Java é realizado pela Java Virtual Machine (JVM), que aloca memória dinamicamente para objetos criados durante a execução do programa. Quando um objeto não é mais referenciado por nenhum código em execução, o garbage collector detecta que o objeto não é mais necessário e libera a memória associada a ele./n O garbage collector é um processo de fundo que é executado automaticamente pela JVM em intervalos regulares, e geralmente é transparente para o programador. O Java usa um algoritmo de coleta de lixo conhecido como 'mark-and-sweep', que verifica quais objetos ainda estão sendo referenciados pelo programa e quais não estão mais em uso. Os objetos não utilizados são marcados como 'lixo' e o garbage collector remove-os da memória./n Embora o garbage collection torne a programação em Java mais fácil e segura, ele pode ter um impacto negativo no desempenho do programa se não for gerenciado corretamente. Por exemplo, se muitos objetos estiverem sendo criados e destruídos em rápida sucessão, isso pode afetar o desempenho da coleta de lixo. Para evitar esse problema, é importante seguir algumas boas práticas de programação, como limitar o uso de objetos temporários, reutilizar objetos sempre que possível e controlar o escopo das variáveis para minimizar o número de objetos criados e destruídos durante a execução do programa.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "PLENO"
  ]
},
{
  "pergunta": "O que é o Hibernate Framework?",
  "resposta": "O mapeamento objeto-relacional ou ORM é a técnica de programação para mapear objetos de modelo de domínio de aplicativo para as tabelas de banco de dados relacional. Hibernate é uma ferramenta ORM baseada em Java que fornece uma estrutura para mapear objetos de domínio de aplicativo para as tabelas de banco de dados relacional e vice-versa./n O Hibernate fornece uma implementação de referência da Java Persistence API, o que o torna uma ótima opção como ferramenta ORM com benefícios de baixo acoplamento. Podemos usar a API de persistência do Hibernate para operações CRUD. A estrutura do Hibernate fornece a opção de mapear objetos Java antigos simples para tabelas de banco de dados tradicionais com o uso de anotações JPA, bem como configuração baseada em XML./n Da mesma forma, as configurações de hibernação são flexíveis e podem ser feitas a partir do arquivo de configuração XML, bem como programaticamente.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "SENIOR"
  ]
},
{
  "pergunta": "Quais são os benefícios importantes de usar o Hibernate Framework?",
  "resposta": "Alguns dos benefícios importantes de usar o framework de hibernação são:/n O Hibernate elimina todo o código clichê que vem com o JDBC e cuida do gerenciamento de recursos, para que possamos nos concentrar na lógica de negócios./n A estrutura do Hibernate fornece suporte para anotações XML e JPA, o que torna nossa implementação de código independente./n O Hibernate fornece uma poderosa linguagem de consulta (HQL) que é semelhante ao SQL. No entanto, HQL é totalmente orientado a objetos e entende conceitos como herança, polimorfismo e associação./n Hibernate é um projeto de código aberto da Red Hat Community e usado em todo o mundo. Isso o torna uma escolha melhor do que outros porque a curva de aprendizado é pequena e há toneladas de documentação on-line e a ajuda está facilmente disponível em fóruns./n O Hibernate é fácil de integrar com outros frameworks Java EE, é tão popular que o Spring Framework fornece suporte embutido para integração do hibernate com aplicativos Spring./n O Hibernate suporta inicialização lenta usando objetos proxy e executa consultas de banco de dados reais somente quando necessário./n O cache de hibernação nos ajuda a obter um melhor desempenho./n Para recursos específicos do fornecedor de banco de dados, a hibernação é adequada porque também podemos executar consultas sql nativas./n No geral, a hibernação é a melhor escolha no mercado atual para a ferramenta ORM, pois contém todos os recursos que você precisará em uma ferramenta ORM.",
  "filtros": [
      "BACKEND",
      "JAVA",
      "SENIOR"
  ]
},
{
  "pergunta": "Quais são as diferentes tags fornecidas em JSTL?",
  "resposta": "Existem 5 tipos de tags JSTL./n tags principais/n tags sql/n tags xml/n tags de internacionalização/n tags de funções",
  "filtros": [
      "BACKEND",
      "JAVA",
      "SENIOR"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND"
  ]
},{
  "pergunta": "O que é JavaScript?",
  "resposta": "JavaScript é uma linguagem de script orientada a objetos, interpretada e leve. Ela permite adicionar interatividade a páginas HTML estáticas. Os principais navegadores modernos da web, como Google Chrome, Mozilla Firefox, Microsoft Edge e Safari, incluem suporte ao núcleo da linguagem para possibilitar a execução de scripts e a criação de experiências interativas para os usuários.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Para que serve o JavaScript?",
  "resposta": "Ele é uma linguagem de programação que é usada principalmente para criar interatividade em páginas da web. O JavaScript roda no client-side (navegador) e é capaz de alterar o conteúdo de uma página da web sem precisar recarregar a página inteira, melhorando sua performance. Além disso, o JavaScript também é usado em servidores web (por meio de plataformas como o Node.js) e em aplicativos mobile (por meio de ferramentas como React Native).",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais são as vantagens do JavaScript em relação a outras tecnologias baseadas na web?",
  "resposta": "Melhora Interativa: JavaScript interage com páginas da web estáticas e as faz responder aos inputs dos usuários./n Feedback Rápido: Com o uso de JavaScript, não há necessidade de recarregar uma página da web ao validar entradas de formulários. Isso proporciona uma resposta rápida e uma melhor experiência para o usuário./n Interface de Usuário Rica: JavaScript ajuda a tornar a interface do usuário de aplicativos baseados na web mais atraente e com melhor usabilidade./n Frameworks: JavaScript possui vastas bibliotecas e frameworks que podem ser amplamente usados para desenvolver jogos e aplicativos baseados na web.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais são as principais características do JavaScript?",
  "resposta": "Estas são algumas das mais importantes características do JavaScript: /n Compatibilidade com várias plataformas (cross-platform)/n Código aberto (open-source)/n Orientado a objetos/n Integração com diversas tecnologias front-end e back-end",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quando devemos usar geradores no ES6?",
  "resposta": "Os geradores no ES6 podem ser usados em dois cenários principais:/n Quando se quer sair de uma função, é possível fazê-lo usando geradores, e o código externo determina quando voltar à função./n Com a ajuda de geradores, é possível controlar uma chamada assíncrona fora do código. Mais importante ainda, o próximo valor pode vir apenas quando necessário, ou seja, todos os valores não precisam retornar de uma só vez.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais são os diferentes tipos de dados presentes em JavaScript?",
  "resposta": "Existem três tipos principais de dados presentes em JavaScript:/n Primitivos/n Números/n Strings/n Booleanos/n Compostos/n Objetos/n  Funções/n Arrays/n Triviais/n Null/n Undefined",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Por que as Arrow functions são usadas em quase todos os lugares no código JavaScript?",
  "resposta": "As Arrow functions são usadas em quase todos os lugares por conta das seguintes vantagens:/n Segurança de escopo: quando a Arrow function é usada em todos os lugares, ela promove a consistência do escopo porque o mesmo objeto é usado em todos os lugares. Se, por acaso, uma função padrão é usada juntamente com a Arrow function, há chances do escopo ficar confuso./n Concisão: em comparação com a função padrão, a Arrow function é compacta, pois dispensa a necessidade de palavras-chave, chaves, parênteses, etc. em certos casos. É, portanto, mais fácil de ler e escrever./n Clareza: quando a Arrow function é usada em todos os lugares, há uma certa consistência de escopo. Assim, sempre que uma função padrão é misturada com ela, ela se destaca distintamente. O desenvolvedor pode, portanto, procurar a próxima função superior para localizar o objeto 'this' com mais facilidade.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O JavaScript é uma linguagem de tipagem dinâmica ou estática?",
  "resposta": "JavaScript é uma linguagem de tipagem dinâmica (dynamic typing).",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Qual a diferença entre Java e Javascript?",
  "resposta": "Java é uma linguagem de programação de propósito geral baseada em classes, enquanto JavaScript é uma linguagem de script interpretada. Java é usada para criar aplicativos completos que podem ser executados em um único computador ou que podem ser distribuídos entre servidores e clientes em uma rede. Já o JavaScript é usado para criar páginas da web interativas que podem responder a ações do usuário.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O JavaScript diferencia maiúsculas de minúsculas?",
  "resposta": "Sim, o JavaScript diferencia maiúsculas de minúsculas. Isso significa que variáveis, funções e métodos escritos com letras maiúsculas e minúsculas são tratados como entidades diferentes pelo interpretador do JavaScript. Por exemplo, a variável 'nome' é diferente da variável 'Nome'. Portanto, é importante prestar atenção às maiúsculas e minúsculas ao escrever código JavaScript.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quem criou o JavaScript?",
  "resposta": "O JavaScript foi criado por Brendan Eich em 1995, enquanto trabalhava na Netscape Communications Corporation.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais são os vários métodos pelos quais você pode especificar uma variável no JavaScript?",
  "resposta": "Existem três maneiras de declarar uma variável em JavaScript:/n Usando a palavra-chave var, que define uma variável com escopo de função ou escopo global./n Usando a palavra-chave let, que define uma variável com escopo de bloco./n Usando a palavra-chave const, que define uma variável com escopo de bloco, mas cujo valor não pode ser reatribuído./n A partir do ES6, a recomendação é usar let e const em vez de var para evitar problemas relacionados ao escopo de variáveis. Além disso, o uso de const deve ser priorizado sempre que possível, pois isso ajuda a prevenir mutações inesperadas de variáveis.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Como depurar código Javascript?",
  "resposta": "Navegadores modernos, como Chrome, Firefox, etc., incluem um depurador (debugger) integrado que pode ser aberto a qualquer momento pressionando a tecla apropriada, geralmente a tecla F12.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Qual a diferença entre == e === em JavaScript?",
  "resposta": "== testa apenas a igualdade de valores; no entanto, '===' é um teste de igualdade mais rigoroso que retorna falso se o valor ou o tipo de duas variáveis forem diferentes.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O que é uma caixa de prompt?",
  "resposta": "Uma caixa prompt exibe uma caixa de diálogo interativa que apresenta um prompt opcional para os usuários inserirem algum texto. É normalmente usada quando os usuários querem inserir um número antes de entrar em uma página da web. Isso retorna uma string contendo o texto de entrada do usuário ou um valor nulo (null).",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Quais são algumas convenções para nomear variáveis ​​em JavaScript?",
  "resposta": "As seguintes são as convenções para nomear variáveis em JavaScript:/n Os nomes das variáveis não devem ser idênticos às palavras-chave reservadas. Por exemplo, var, let, const, etc./n Os nomes das variáveis não podem começar com um valor numérico. Eles devem começar apenas com a letra ou o caractere de sublinhado./n Os nomes das variáveis têm natureza sensível a maiúsculas e minúsculas.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O JavaScript oferece suporte à conversão automática de tipo?",
  "resposta": "JavaScript oferece suporte a conversão automática de tipos. Este é o método mais comum de conversão de tipos que os desenvolvedores JavaScript usam.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Por que promises são usadas em JavaScript?",
  "resposta": "As promises ajudam a gerenciar operações assíncronas, como solicitações de servidor em JavaScript. Anteriormente, os callbacks eram usados ​​para o mesmo propósito. No entanto, os callbacks têm funcionalidade limitada e, portanto, podem tornar o código difícil de gerenciar. Existem quatro estados do objeto promise:/n Pending (pendente): Este é o primeiro estado da promise e indica que ela não foi cumprida nem rejeitada./n Fulfilled (cumprida): Este estado representa a conclusão da operação assíncrona. Em outras palavras, a promise foi cumprida./n Rejected (rejeitada): Este estado representa a falha da operação assíncrona devido a algum motivo. Em outras palavras, a promise foi rejeitada./n Settled (resolvida): Este é o último estado da promise, mostrando que ela foi cumprida ou rejeitada./n Um construtor promise usa um callback com dois parâmetros - resolve e reject - para criar uma promessa. A função resolve é chamada quando a operação assíncrona foi concluída com sucesso. A função reject é chamada quando a operação assíncrona falhou.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Qual a vantagem de usar a sintaxe arrow para o método em um construtor?",
  "resposta": "A vantagem de usar a sintaxe arrow para um método em um construtor em JavaScript é que ela permite que a função mantenha o escopo do “this” do construtor. Isso ocorre porque as funções arrow não têm seu próprio contexto this, mas herdam o contexto this do pai. Isso significa que, se você estiver usando um método de objeto dentro de uma função de seta em um construtor, ele ainda terá acesso ao escopo do objeto em vez do escopo universal. Isso torna o código mais fácil de ler e entender, e evita erros comuns associados ao escopo do this em funções de construtor em JavaScript.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O que são os encerramentos (closures) em Javascript?",
  "resposta": "Os encerramentos (closures) são uma característica importante em JavaScript que permitem que uma função tenha acesso às variáveis e parâmetros de sua função externa, mesmo depois que a função externa tenha retornado. Isso significa que as funções podem manter referência a variáveis que não estão mais em seu escopo atual./n Os encerramentos podem ser úteis para criar funções reutilizáveis que possam ser configuradas com diferentes parâmetros para retornar resultados diferentes. Além disso, eles também podem ajudar a manter o encapsulamento e a privacidade de dados em uma aplicação.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O que é Negative Infinity (infinito negativo)?",
  "resposta": "O Negative Infinity (negativo infinito) é um valor constante que representa o valor mais baixo disponível. Isso significa que nenhum número é menor que esse valor. O negativo infinito é calculado dividindo um número negativo por zero.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "Qual é a diferença entre ViewState e SessionState?",
  "resposta": "ViewState: É específico para o estado da página dentro do navegador em uma sessão./n SessionState: É específico do usuário, contém os dados da sessão do usuário e permite acesso a todos os dados nas páginas da web.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "O que é desestruturação de um objeto ou array?Dê um exemplo.",
  "resposta": "A desestruturação de objetos é uma funcionalidade do JavaScript para extrair as propriedades de um objeto e vinculá-las a variáveis. Ela pode ser usada para extrair várias propriedades em uma única declaração e pode alcançar propriedades de objetos aninhados. Quando uma propriedade não existe, a desestruturação de objetos pode definir valores padrão.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "JAVASCRIPT"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "JAVASCRIPT"
  ]
},{
  "pergunta": "O que é PHP?",
  "resposta": "PHP é uma linguagem de script open source amplamente utilizada para desenvolvimento web no server-side. Foi criada em 1994 por Rasmus Lerdorf e desde então passou por várias atualizações e melhorias. É uma das linguagens de programação mais populares do mundo e é suportada por muitos sistemas operacionais e servidores web.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Para que serve PHP?",
  "resposta": "O PHP é uma linguagem de programação amplamente utilizada para o desenvolvimento de aplicativos web. Ela permite que os desenvolvedores criem sites dinâmicos e interativos, que podem se comunicar com bancos de dados, gerar conteúdo sob demanda e interagir com os usuários./n Usando a linguagem é possível criar, por exemplo, sistemas de gerenciamento de conteúdo, lojas virtuais, plataformas de mídia social e muito mais. Além disso, devido ao fato de PHP ser uma linguagem de código aberto, ela possui uma ampla comunidade de desenvolvedores que criam e compartilham bibliotecas, frameworks e ferramentas para aprimorar o desenvolvimento de aplicativos web.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "O que PEAR significa?",
  "resposta": "PEAR significa PHP Extension and Application Repository. PEAR é um framework e repositório para qualquer componente PHP que pode ser reutilizado. PEAR permite que desenvolvedores web atinjam um novo nível de programação. Ele é recheado de snippets e bibliotecas PHP, além de possuir uma interface de comando (CLI) para instalar pacotes automaticamente.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Quais são as diretrizes para nomear uma variável em PHP?",
  "resposta": "Ao nomear uma variável PHP, você deve seguir duas regras:/n A variável deve começar com um sinal de dólar e terminar com o nome da variável. Por exemplo: preco=100; onde “preco” é o nome da variável./n Uma letra ou um underscore deve ser o primeiro caractere no nome de uma variável./n Letras, números e underscores podem ser usados no nome da variável. Espaços e caracteres especiais não são /n permitidos ao nomear uma variável PHP./n Variáveis PHP diferenciam caixa alta e baixa. Como resultado, NOME e nome são duas variáveis diferentes.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "O que são cookies, exatamente? E como o PHP faz uso deles?",
  "resposta": "O cookie é um pequeno arquivo que é colocado no computador do cliente pelo servidor. Ele acompanha e rastreia a informação do usuário no navegador. Quando um usuário faz o pedido de uma página específica, ele é embarcado na máquina do usuário e é utilizado para identificá-lo. Quando um PC faz o pedido de uma página do website utilizando um software, o cookie é enviado da mesma forma. /n Cookies guardam o id da sessão, produzido no back-end, após autenticar a identidade do usuário de forma criptografada. Eles são salvos no browser da máquina. Como ele não pode acessar objetos em sites e web apps, você pode apenas armazenar valores em strings./n Cookies são específicos por URL, por padrão. Cookies do Gmail, por exemplo, não são suportados pelo Yahoo e vice-versa. Por padrão, os cookies são efêmeros, transitórios. Um único website ou web app pode criar mais de 20 cookies. O tamanho inicial de um cookie é 50 bytes, podendo ir até 4096 bytes./n A função Setcookie() é utilizada para criar um cookie em PHP.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Fale um pouco sobre a importância do Parser em PHP",
  "resposta": "O PHP parser é um software que traduz o código-fonte em código que pode ser lido por máquinas. O Parser converte o conjunto de instruções que providenciamos, em forma de PHP, em um código que pode ser lido por máquinas. A função token_get_all() em PHP pode ser usada para fazer o parse do código PHP.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Quais são os passos para criar um novo banco de dados utilizando PHP e MySQL?",
  "resposta": "Os 4 principais passos para criar um novo banco de dados MySQL em PHP são:/n O script PHP deve ser utilizado para estabelecer uma conexão com o servidor MySQL./n A conexão entre eles foi verificada. Você pode testar a conexão ao escrever um query./n Os queries para o banco de dados são escritos e então salvos como uma variável em string./n Então, um por um, os queries são executados.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Qual é a tag mais comum para inserir PHP em HTML?",
  "resposta": "A tag mais comum para inserir código PHP em um documento HTML é '< ?php ... ? >'.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "O PHP é uma linguagem que diferencia letras maiúsculas de minúsculas?",
  "resposta": "Sim, o PHP é uma linguagem que diferencia letras maiúsculas de minúsculas.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "Quais são as melhores práticas para nomear uma variável PHP?",
  "resposta": "Algumas das melhores práticas para nomear uma variável em PHP incluem:/n Use nomes descritivos: os nomes das variáveis devem ser descritivos o suficiente para que o objetivo da variável possa ser compreendido facilmente por outros programadores que lerem seu código./n Use nomes autoexplicativos: os nomes das variáveis devem ser autoexplicativos para que outras pessoas que vejam seu código possam entender o objetivo da variável sem a necessidade de comentários./n Use camelCase: essa convenção de nomenclatura consiste em escrever o primeiro nome da variável em letras minúsculas e cada nome subsequente em letras maiúsculas, sem espaços./n Evite nomes muito longos: nomes muito longos podem dificultar a leitura do código, portanto, tente manter os nomes das variáveis curtos e precisos./n Evite usar palavras reservadas: evite usar palavras reservadas do PHP como nome de variáveis, pois isso pode causar erros no código./n Use nomes consistentes: mantenha a consistência em toda a sua base de código, usando o mesmo padrão de nomenclatura para todas as variáveis.",
  "filtros": [
      "BACKEND",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "PHP"
  ]
},
{
  "pergunta": "O que são Traits em PHP?",
  "resposta": "Traits são uma funcionalidade que permite que você escreva código reutilizável em PHP e outras linguagens de programação que não oferecem suporte a múltiplas heranças. Os Traits são uma maneira eficaz de evitar a duplicação de código e permitir que as classes compartilhem funcionalidades comuns. /n Um trait é elaborado para ultrapassar os limites estabelecidos por uma herança singular, ele permite que um desenvolvedor reutilize um conjunto de métodos em diversas classes independentes e com distintas hierarquias.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "Quais são os principais tipos de erro em PHP?",
  "resposta": "Os principais tipos de erros são Avisos (Notice) Notices são erros não críticos que podem ocorrer durante a execução do script. Os usuários não os verão. Usar uma variável indefinida seria o exemplo de um desses erros. Avisos (Warning): Warnings são avisos mais importantes que Notices. A execução do script não é interrompida por warnings. Estes são visíveis por padrão. Utilizar Include() para um arquivo que não existe seria um exemplo deste erro./n Erro de sintaxe ou parsing: Uma aspa esquecida, um ponto e vírgula ausente no final de uma linha, parênteses ausentes ou caracteres em excesso são exemplos de erros de sintaxe. O parser do PHP não consegue ler e compreender o código corretamente, resultando em um erro de parsing. Fatal: Este é o erro mais grave e, quando ocorre, a execução do script é encerrada imediatamente. Um exemplo de erro fatal é acessar a propriedade de um objeto inexistente ou chamar a função need() em um arquivo inexistente.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "O PHP é uma linguagem de programação OOP?",
  "resposta": "Sim, PHP é uma linguagem de programação orientada a objetos (OOP). O suporte a programação orientada a objetos foi adicionado ao PHP na versão 5.0, e desde então a linguagem vem evoluindo nessa direção. Além disso, o PHP também oferece recursos para programação procedural, permitindo que os desenvolvedores escolham o paradigma que melhor se adapte às suas necessidades.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "Explique _construct () e'_destruct ().",
  "resposta": "Em PHP, o método especial _construct() é um método construtor de classes, que é executado automaticamente quando um objeto é criado. Este método é usado para inicializar a classe, definir valores padrão e executar outras ações de inicialização necessárias antes de usar um objeto./n Por outro lado, o método especial _destruct() é um método destrutor de classes, que é chamado automaticamente quando um objeto é destruído, ou seja, quando ele sai do escopo ou é definido como nulo. Este método é usado para executar ações de limpeza antes que o objeto seja destruído, como fechar conexões com bancos de dados ou liberar recursos do sistema.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "Qual a diferença entre as funções include () e require () do PHP?",
  "resposta": "As funções include() e require() são usadas para incluir arquivos em um script PHP. A diferença entre elas é que o 'include()' inclui o arquivo especificado e emite um aviso se o arquivo não for encontrado ou não puder ser incluído, enquanto o 'require()' inclui o arquivo especificado e emite um erro fatal se o arquivo não for encontrado ou não puder ser incluído.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "PHP"
  ]
},
{
  "pergunta": "Nomeie e defina os três níveis de escopo disponíveis em PHP?",
  "resposta": "Em PHP, há três níveis de escopo de variáveis: global, local e estático./n Global: uma variável global pode ser acessada em qualquer lugar do script PHP, independentemente de onde foi definida. Variáveis globais devem ser usadas com cuidado, pois podem causar conflitos de nomes e dificultar a manutenção e debugging do código./n Local: uma variável local é definida dentro de uma função e só pode ser acessada dentro dessa função. Ela é destruída automaticamente quando a função termina sua execução./n Estático: uma variável estática é semelhante a uma variável local, mas mantém seu valor entre chamadas sucessivas da mesma função. Isso significa que, se uma função é chamada várias vezes, uma variável estática manterá seu valor entre essas chamadas./n É importante notar que a partir do PHP 7.0, também existe o escopo de variáveis de anônimas, que são variáveis que não têm um nome global e existem apenas dentro de uma função anônima.",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "PHP"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "PHP"
  ]
},{
  "pergunta": "Python 3 é uma linguagem de programação de alto nível popular usada para uma ampla variedade de aplicativos. Aqui estão alguns princípios básicos do Python 3 que você deve saber:",
  "resposta": "Variáveis: no Python 3, as variáveis ​​são criadas atribuindo um valor a um nome. Por exemplo, x = 5 cria uma variável chamada x e atribui o valor 5 a ela./n Tipos de dados: o Python 3 oferece suporte a vários tipos de dados integrados, incluindo números inteiros, flutuantes, strings, booleanos, listas, tuplas e dicionários./n Operadores: Python 3 suporta uma variedade de operadores, incluindo operadores aritméticos (+, -, *, /), operadores de comparação (>, <, ==, !=) e operadores lógicos (and, or, not)./n Instruções de fluxo de controle: o Python 3 oferece suporte a várias instruções de fluxo de controle, incluindo instruções if-else, loops for e loops while. Essas instruções permitem que você controle o fluxo de execução em seu código./n Funções: No Python 3, as funções são criadas usando a palavra-chave def. Por exemplo, def my_function(x): cria uma função chamada my_function que recebe um argumento chamado x./n Entrada e saída: no Python 3, você pode usar a função input() para obter a entrada do usuário e a função print() para enviar texto para o console./n Módulos: o Python 3 oferece suporte a módulos, que são coleções de funções e variáveis ​​que podem ser importadas e usadas em outro código Python. Você pode importar módulos usando a palavra-chave import.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "Vantagens do Python 3:",
  "resposta": "Python 3 tem uma sintaxe simples que é fácil de aprender e ler, tornando-o uma boa escolha para iniciantes./n Python 3 é uma linguagem de alto nível que possui uma grande biblioteca padrão e muitas bibliotecas de terceiros disponíveis, tornando-a uma linguagem versátil que pode ser usada para uma ampla variedade de aplicativos./n O Python 3 oferece suporte a vários paradigmas de programação, incluindo programação orientada a objetos, funcional e procedural./n O Python 3 é uma linguagem interpretada, o que significa que não precisa ser compilada antes de ser executada, facilitando a escrita e o teste rápido do código./n O Python 3 tem um bom suporte para análise de dados e computação científica, com bibliotecas como NumPy e Pandas.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "Desvantagens do Python 3:",
  "resposta": "O Python 3 pode ser mais lento do que linguagens compiladas, como C++ ou Java, o que pode ser uma preocupação para aplicativos que exigem alto desempenho./n O Python 3 possui um bloqueio de intérprete global (GIL), que pode limitar sua capacidade de aproveitar vários núcleos de CPU./n O Python 3 pode não ser a melhor escolha para programação de sistemas de baixo nível, pois não oferece o mesmo nível de controle sobre o hardware que outras linguagens./n O Python 3 não é tão popular em alguns campos quanto outras linguagens, como R para análise de dados ou C++ para desenvolvimento de jogos, portanto, nem sempre pode ser a melhor escolha para aplicativos específicos.",
  "filtros": [
      "BACKEND",
      "JUNIOR",
      "PYTHON"
  ]
},
{
  "pergunta": "Python foi desenvolvido por Guido van Rossum no início dos anos 1990 e sua versão mais recente é a 3.11.0, podemos simplesmente chamá-la de Python3. O Python 3.0 foi lançado em 2008 e é uma linguagem interpretada, ou seja, não é compilada e o interpretador verificará o código linha por linha./n Em outras linguagens de programação como C, C++ e Java, você precisará declarar o tipo de variável, mas em Python não é necessário fazer isso. Basta digitar a variável e quando os valores forem dados a ela, ele saberá automaticamente se o valor fornecido seria um int, float ou char ou mesmo uma String.",
  "resposta": "/n # Python program to declare variables/n myNumber = 3/n print(myNumber)/n myNumber2 = 4.5/n print(myNumber2)/n myNumber ='helloworld'/n print(myNumber)/n Saída:/n 3/n 4.5/n helloworld/n Veja como é simples, basta criar uma variável e atribuir a ela o valor que quiser e depois usar a função print para imprimi-la. O Python possui 4 tipos de estruturas de dados integradas, ou seja, lista, dicionário, tupla e conjunto.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "List é a estrutura de dados mais básica em python. A lista é uma estrutura de dados mutável, ou seja, os itens podem ser adicionados à lista posteriormente após a criação da lista. É como se você fosse fazer compras no mercado local e fizesse uma lista de alguns itens e depois pudesse adicionar mais e mais itens à lista./n A função append() é usada para adicionar dados à lista.",
  "resposta": "",
  "filtros": [
      "BACKEND"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND"
  ]
},
{
  "pergunta": "O que é Python e quais são suas principais características?",
  "resposta": " Python é uma linguagem de programação de alto nível, interpretada e orientada a objetos. Algumas de suas principais características incluem a sintaxe simples e clara, a ampla variedade de bibliotecas e módulos disponíveis, e a facilidade de aprendizado e uso.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que são variáveis em Python?",
  "resposta": "Variáveis em Python são espaços na memória reservados para armazenar valores. O nome da variável é usado para acessar e manipular o valor armazenado. As variáveis podem ter diferentes tipos de dados, como números, strings e booleans.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "O que é uma estrutura de controle de fluxo em Python?",
  "resposta": " Uma estrutura de controle de fluxo em Python é um bloco de código que controla a ordem em que as instruções são executadas. Existem três tipos principais de estruturas de controle de fluxo em Python: condicionais (if, else), loops (for, while) e exceções (try, except).",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "JUNIOR"
  ]
},
{
  "pergunta": "Quais são as principais diferenças entre uma lista e uma tupla em Python?",
  "resposta": " A principal diferença entre uma lista e uma tupla em Python é que as listas são mutáveis (ou seja, podem ser alteradas após a criação) e as tuplas são imutáveis (ou seja, não podem ser alteradas após a criação). Além disso, as listas são denotadas por colchetes e as tuplas por parênteses.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "PLENO"
  ]
},
{
  "pergunta": "O que é uma função lambda em Python e como ela é usada?",
  "resposta": "Uma função lambda em Python é uma função anônima (sem nome) que pode ser definida em uma única linha. Ela é útil para definir funções simples e não muito complexas que não precisam ser reutilizadas em outras partes do código. A função lambda é definida usando a palavra-chave 'lambda', seguida pelos argumentos e a expressão que define o resultado.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "PLENO"
  ]
},
{
  "pergunta": "O que é programação orientada a objetos (POO) em Python?",
  "resposta": " A programação orientada a objetos (POO) em Python é um paradigma de programação que se concentra em objetos e suas interações. Um objeto em POO é uma instância de uma classe, que define suas propriedades e comportamentos. As classes em POO são usadas para encapsular dados e funções relacionadas em um único objeto.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "PLENO"
  ]
},
{
  "pergunta": "O que é um decorador em Python e como ele é usado?",
  "resposta": "Um decorador em Python é uma função que recebe outra função como entrada e retorna uma nova função modificada. Os decoradores são usados para modificar o comportamento de uma função sem alterá-la diretamente. Eles são definidos usando a sintaxe '@' antes do nome da função decorada.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "SENIOR"
  ]
},
{
  "pergunta": "O que é a biblioteca NumPy em Python e como ela é usada para trabalhar com arrays?",
  "resposta": "A biblioteca NumPy em Python é uma das bibliotecas mais populares para computação científica e análise de dados. Ela fornece suporte para manipulação de arrays multidimensionais e matrizes, bem como funções matemáticas e estatísticas avançadas que podem ser aplicadas a esses arrays./n Os arrays em NumPy são uma estrutura de dados fundamental que permite armazenar e manipular grandes quantidades de dados de forma eficiente. Eles são semelhantes às listas em Python, mas diferem em vários aspectos, incluindo a capacidade de executar operações matemáticas em larga escala em um conjunto de dados de forma eficiente./n A biblioteca NumPy é usada principalmente para trabalhar com matrizes e arrays. Isso inclui: /n Criação de arrays: NumPy fornece funções para criar arrays a partir de listas Python, bem como funções para criar arrays vazios ou preenchidos com valores padrão./n Operações com arrays: NumPy permite executar operações matemáticas em larga escala em um conjunto de dados, incluindo adição, subtração, multiplicação e divisão de arrays./n Indexação e fatiamento: É possível acessar e manipular elementos individuais ou subconjuntos de elementos em um array NumPy./n Funções matemáticas: A biblioteca NumPy também inclui uma grande variedade de funções matemáticas, incluindo funções trigonométricas, exponenciais, logarítmicas, etc./n Álgebra linear: NumPy fornece suporte para álgebra linear, incluindo multiplicação de matrizes, cálculo de determinantes, resolução de sistemas de equações lineares e muito mais./n Em resumo, a biblioteca NumPy é uma ferramenta poderosa para a análise de dados e computação científica, que permite trabalhar com arrays multidimensionais de forma eficiente e realizar operações matemáticas avançadas em larga escala.",
  "filtros": [
      "BACKEND",
      "PYTHON",
      "SENIOR"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND"
  ]
},
{
  "pergunta": "O que é React.js?",
  "resposta": "React.js é uma biblioteca JavaScript de código aberto voltada para front-end, muito popular para aplicativos web de página única. É muito útil na construção de interfaces de usuário interativas e complexas para sites ou aplicativos mobile. O React.js foi lançado para uso em 2015 e, desde então, tornou-se uma das tecnologias mais confiáveis e utilizadas nos últimos tempos. Ela já construiu uma das maiores comunidades de desenvolvedores no mundo todo",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "Para que serve o React.js?",
  "resposta": "React é uma biblioteca de JavaScript utilizada para construir interfaces de usuário interativas e responsivas. Com React, é possível criar aplicativos web completos, desde sites simples até aplicativos complexos com várias páginas./n Ele pode ser utilizado para criar componentes reutilizáveis, interfaces de usuário interativas, aplicativos de página única (SPA), além de ser ótimo para gerenciamento de estado, renderização no server-side e desenvolvimento mobile./n Ao responder a uma pergunta de entrevista React como essa, tente dar exemplos e explicar os benefícios do React para realizar essas diversas atividades.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "Quais são as principais vantagens do React.js?",
  "resposta": "As principais vantagens do React.js são:/n Otimizar o desempenho do aplicativo/n Pode ser usado tanto no client-side quanto no server-side/n A legibilidade do código é maior no React.js por causa do JSX/n Ele oferece fácil integração com frameworks como Angular, Meteor, etc./n É fácil escrever casos de teste de UI com React.js/n Se você puder incluir alguma experiência prática demonstrando as vantagens do React.js nesta pergunta de entrevista React.js, é provável que impressione o recrutador.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que é JSX?",
  "resposta": "JSX é a extensão de sintaxe para Javascript no React.js. Com a ajuda do JSX, é fácil definir como a interface do usuário deve parecer. Além disso, com o JSX, o arquivo com o código Javascript pode ser usado para escrever as estruturas do código HTML também.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que é um evento no React.js?",
  "resposta": "Quando um usuário pressiona uma tecla, clica no mouse ou realiza alguma ação na máquina, ou quando a própria máquina dispara uma ação, essas ações são registradas como eventos no React.js./n No React.js, usamos camelCase para nomear eventos, em vez de letras minúsculas como no HTML/n No React.js, devido ao JSX, uma função é passada como um manipulador de eventos, em vez de ser como uma string igual no HTML",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "Como as listas funcionam no React.js?",
  "resposta": "As listas no React.js são criadas de maneira semelhante à forma como são criadas no Javascript comum. Com listas, os dados podem ser exibidos de maneira ordenada e são eficazes na exibição de menus nos sites. Para percorrer as listas, é utilizada a função map(). Por exemplo:/n Um array de números é recebido pela função map() e seu valor é multiplicado por 5/n var numbers = [2,4,6,8,10]/n const multiplyNums = numbers.map((number => { return (number*5); });/n console.log(multiplyNums);/n Output: O resultado em Javascript será registrado no console. O output do exemplo acima será [10, 20, 30, 40, 50]",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "Quais são as funcionalidades mais importantes da React.js?",
  "resposta": "As funcionalidades mais importantes da React.js incluem:/n Utiliza um DOM virtual;/n Ela renderiza completamente os arquivos HTML no server em páginas HTML no client-side, ou seja, a renderização é feita no server-side;/n Com React.js, os dados são passados de componentes pai para componentes filho através de props. Em outras palavras, há um fluxo unidirecional de dados. Esta característica faz com que o gerenciamento do estado do aplicativo seja mais simples.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "REACT"
  ]
},
{
  "pergunta": "Como os navegadores leem os arquivos JSX?",
  "resposta": "Como o JSX é uma combinação de HTML e JavaScript, os navegadores não conseguem lê-lo. É necessário, portanto, um transpilador (transpiler) para converter JSX em Javascript para que os navegadores possam entender o código.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "REACT"
  ]
},
{
  "pergunta": "Qual é a maneira mais aconselhável de nomear componentes React?",
  "resposta": "A maneira mais aconselhável de nomear componentes no React é usar o PascalCase (também chamado de UpperCamelCase). Nesta convenção, a primeira letra de cada palavra no nome é maiúscula. Isso facilita a identificação dos componentes e mantém a consistência em todo o código-fonte. Por exemplo, um componente que exibe o perfil de um usuário pode ser chamado de UserProfile.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "REACT"
  ]
},
{
  "pergunta": "Qual é a principal diferença entre Props e States?",
  "resposta": "O estado é mutável, enquanto as Props são imutáveis. Isso significa que o estado é interno e gerenciado pelo componente, enquanto as props são externos e gerenciados por qualquer coisa que renderize o componente.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "REACT"
  ]
},
{
  "pergunta": "O que são componentes puros no React.js?",
  "resposta": "Um componente React é considerado puro se produzir o mesmo output quando receber o mesmo conjunto de state e props.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "REACT"
  ]
},
{
  "pergunta": "O que é ‘create-React-app’?",
  "resposta": "O ‘create-React-app’ fornece um ambiente de desenvolvimento para criar aplicativos React usando os recursos do JavaScript, pois cria uma configuração básica para o aplicativo sem a necessidade de configurar tudo desde o início. Esse recurso é muito útil na construção de um aplicativo de página única no React.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "REACT"
  ]
},
{
  "pergunta": "Por que a biblioteca prop-types é utilizada?",
  "resposta": "Ela é utilizada pois permite verificações em tempo de execução para props e outros objetos semelhantes.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que são Hooks do React?",
  "resposta": "Os Hooks do React permitem que você use o State e alguns outros recursos do React sem precisar escrever uma classe.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que você sabe sobre Controlled Components?",
  "resposta": "Controlled components, ou componentes controlados, controlam os elementos de input, o que significa que os dados do formulário são gerenciados pelo state do componente. Ele recebe seu valor através de props e faz alterações por meio de callbacks.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que são refs?",
  "resposta": "Refs, ou references, são um atributo especial que te permite acessar e interagir com elementos DOM. É uma função fornecida pelo React para acessar tais elementos. Você pode querer usá-los no caso de querer alterar o valor de um componente filho sem o uso de props, por exemplo.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "REACT"
  ]
},
{
  "pergunta": "O que é Ruby?",
  "resposta": "Ruby é uma linguagem de programação de código aberto criada por Yukihiro 'Matz' Matsumoto em 1995. Ela é uma linguagem interpretada e orientada a objetos, que tem como objetivo combinar a simplicidade e produtividade do Perl com a elegância e clareza do Smalltalk.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Quais são as vantagens em desenvolver aplicativos web usando a linguagem Ruby?",
  "resposta": "Existem diversas vantagens para quem quer realizar o desenvolvimento web com a Ruby, as principais são:n/ Sintaxe simples e fácil de entendern/ Alto nível de produtividade n/ Flexibilidaden/ Frameworks popularesn/ Fácil integração com outras tecnologias",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Quais são as convenções de nomenclatura em Ruby?",
  "resposta": "Esta é uma pergunta importante feita na entrevista Ruby./n Variáveis: ao declarar variáveis todas as letras deverão ser minúsculas e as palavras são separadas por underline./n Módulo e Classe: módulos e classes são escritos em MixedCase sem underline e cada palavra começa com uma letra maiúscula./n A tabela no banco de dados: o nome da tabela do banco de dados deve ter letras minúsculas e underline entre as palavras, e todos os nomes das tabelas devem estar no plural, por exemplo, itens_de_fatura./n Modelo: é representado como MixedCase ininterrupto com o nome da tabela em singular./n Controlador: os nomes das classes do controlador são escritos no plural, portanto OrdersController é o controlador da tabela de pedidos.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Como o símbolo (symbol) é diferente das variáveis?",
  "resposta": "O symbol difere das variáveis das seguintes maneiras:/n É mais parecido com uma string do que com uma variável./n Uma string em Ruby é mutável, enquanto um symbol não é./n Deve ser produzida apenas uma duplicata do symbol./n Em Ruby, os symbol são frequentemente usados para correlacionar com enums.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Liste o que o Rails Migration pode fazer.",
  "resposta": "Esta é uma pergunta muito comum em entrevistas Ruby. Rails Migration pode fazer o seguinte:/n Criar a tabela/n Renomear coluna/n Alterar coluna/n Remover coluna/n Soltar tabela/n Renomear tabela/n Adicionar coluna",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Como verificar o número da versão Ruby?",
  "resposta": "Para verificar a versão atual do Ruby instalada no seu sistema é só executar o comando “ruby -v”.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Quais são os tipos de dados básicos usados ​​em Ruby?",
  "resposta": "Os tipos de dados básicos em Ruby são:/n Integer: números inteiros, positivos ou negativos, sem um ponto decimal./n Float: números com ponto decimal./n String: cadeias de caracteres, como hello world./n Boolean: verdadeiro (true) ou falso (false)./n Nil: um valor especial que representa a ausência de um valor./n Array: uma coleção ordenada de valores, acessíveis por meio de um índice./n Hash: uma coleção de pares chave-valor, acessíveis por meio da chave.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Para que servem operadores condicionais em Ruby?",
  "resposta": "Os operadores condicionais são usados para criar expressões condicionais que são avaliadas como verdadeiras ou falsas. Esses operadores são frequentemente usados em estruturas de controle de fluxo, como instruções condicionais e loops, para avaliar uma expressão e executar um determinado bloco de código dependendo do resultado da avaliação./n Alguns dos operadores condicionais mais comuns em Ruby são:/n '==' : verifica se dois valores são iguais/n '!=' : verifica se dois valores são diferentes/n '>' : verifica se um valor é maior que outro/n '<' : verifica se um valor é menor que outro/n '>'= : verifica se um valor é maior ou igual a outro/n '<'= : verifica se um valor é menor ou igual a outro",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Como funcionam os loops em Ruby?",
  "resposta": "Existem várias maneiras de implementar loops. Alguns dos tipos mais comuns de loops em Ruby são:/n while loop: Um loop while executa o bloco de código enquanto a condição especificada for verdadeira./n until loop: Um loop until é semelhante a um loop while, mas executa o bloco de código até que a condição especificada seja verdadeira./n for loop: Um loop for executa o bloco de código para cada item em um intervalo ou coleção./n each loop: Um loop each é usado para percorrer uma coleção de objetos e executar um bloco de código para cada um./n loop loop: Um loop loop executa um bloco de código indefinidamente até que seja interrompido por uma instrução break.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Como inserir comentários em Ruby?",
  "resposta": "Em Ruby, é possível incluir comentários em seu código usando o caractere '#' para comentários de uma linha ou usando '=begin'' e '=end' para comentários de várias linhas.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "ESTAGIO",
      "TECNICA",
      "JUNIOR",
      "RUBY"
  ]
},
{
  "pergunta": "Qual é o uso de load e required em Ruby?",
  "resposta": "Em Ruby, a utilização de load e required está relacionada ao processo de importar e utilizar módulos ou recursos em uma linguagem de programação ou framework./n O método load é usado para carregar um arquivo Ruby (ou outro arquivo de script) em um programa, como se o código estivesse sendo digitado diretamente no terminal. O arquivo especificado é interpretado e executado como se fosse um programa independente. O load é geralmente usado para carregar arquivos de script, tornando suas funções e recursos disponíveis para uso no escopo atual do programa./n O método required, por outro lado, é usado para carregar arquivos que contém bibliotecas de código que são usadas pelo programa e garantem que ele funcione corretamente. O arquivo especificado deve conter código Ruby válido e pode incluir definições de classes, métodos e variáveis, bem como outras funções úteis. O required é geralmente usado para carregar bibliotecas de código que precisam ser carregadas apenas uma vez durante a execução do programa.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "PLENO",
      "RUBY"
  ]
},
{
  "pergunta": "Qual a diferença entre Observers e Callbacks?",
  "resposta": "Rails Observers: similar ao Callback, Observers são usados quando o método não está diretamente relacionado ao ciclo de vida do objeto. Além disso, os observers têm um tempo de vida mais longo e podem ser desanexados ou anexados a qualquer momento. Como, por exemplo, exibir valores do modelo na interface do usuário e atualizar o modelo com base na entrada do usuário./n Callback do Rails: Este método pode ser chamado em pontos específicos no ciclo de vida de um objeto, como quando um objeto é validado, criado, atualizado ou removido. Um callback é um método de curta duração. Por exemplo, quando considera a operação de uma thread e fornece uma função de retorno de chamada que é invocada após a thread terminar.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "PLENO",
      "RUBY"
  ]
},
{
  "pergunta": "Quais bibliotecas de classes estão disponíveis em Ruby?",
  "resposta": "Ruby é uma linguagem com muitas bibliotecas de classes disponíveis, as quais podem ser utilizadas para diversos propósitos. Algumas das bibliotecas mais comuns incluem:/n net/http: Biblioteca para fazer requisições HTTP./n json: Biblioteca para manipulação de arquivos JSON./n csv: Biblioteca para manipulação de arquivos CSV./n time: Biblioteca para trabalhar com datas e horários./n fileutils: Biblioteca para manipulação de arquivos e diretórios./n socket: Biblioteca para comunicação através de sockets./n openssl: Biblioteca para criptografia e segurança./n thread: Biblioteca para trabalhar com threads.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "PLENO",
      "RUBY"
  ]
},
{
  "pergunta": "Quais são as diferenças entre False e Nil em Ruby?",
  "resposta": "False e nil são ambos valores que representam a ausência de algo, mas eles têm diferenças importantes:/n false representa uma condição booleana falsa, ou seja, uma negação de algo que deveria ser verdadeiro. É um valor booleano primitivo e pode ser usado em expressões de booleans como if e unless./n nil representa a ausência de um valor, ou seja, a falta de qualquer objeto ou valor. É um objeto especial do tipo NilClass e pode ser usado para indicar que algo não existe ou não foi encontrado./n Uma das principais diferenças entre false e nil é que false é considerado um valor verdadeiro em Ruby, enquanto nil é considerado falso. Além disso, false é um valor primitivo, enquanto nil é um objeto, o que significa que você pode chamar métodos em nil, mas não em false.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "PLENO",
      "RUBY"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "PLENO",
      "RUBY"
  ]
},
{
  "pergunta": "Explique a função dos subdiretórios app/controllers e app/helpers no Ruby.",
  "resposta": "Esta é uma pergunta importantíssima para desenvolvedores Ruby, segue a resposta:/n App/controllers: o controlador lida com a solicitação da web de um usuário. O Rails procura por classes de controlador no subdiretório do controllers./n App/helpers: quaisquer classes auxiliares necessárias para oferecer suporte às classes de exibição, modelo e controlador são armazenadas no subdiretório helpers.",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "SENIOR",
      "RUBY"
  ]
},
{
  "pergunta": "",
  "resposta": "",
  "filtros": [
      "BACKEND",
      "FRONTEND",
      "TECNICA",
      "SENIOR",
      "RUBY"
  ]
},
{
  "pergunta": "O que é VueJS?",
  "resposta": "Vue.js é um framework JavaScript progressivo para a construção de interfaces de usuário. Ele foi elaborado para ser flexível e escalável, permitindo que os desenvolvedores construam aplicações complexas de uma maneira estruturada e organizada. O Vue.js é baseado em componentes reutilizáveis, que podem ser combinados para formar interfaces complexas./n Ele também tem uma API reativa, que permite que as visualizações se atualizem automaticamente quando os dados mudam. Além disso, o Vue.js é fácil de aprender e tem uma grande comunidade de desenvolvedores que contribuem com plugins e soluções para os desafios comuns de desenvolvimento web.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "VUE"
  ]
},
{
  "pergunta": "Quais são os principais recursos do VueJS?",
  "resposta": "Podemos citar os seguintes recursos do VueJS como os principais:/n Sistema de componentes: O Vue.js permite criar componentes reutilizáveis e personalizáveis, que podem ser usados em diferentes partes da aplicação. Isso facilita muito o desenvolvimento e manutenção do código./n Template engine: O Vue.js utiliza uma sintaxe de template simples e intuitiva, que permite definir facilmente a estrutura da página e os dados que serão exibidos./n Diretivas: As diretivas permitem que você estenda a sintaxe do template do Vue.js para adicionar comportamentos dinâmicos à página. Algumas diretivas padrão incluem v-bind, v-if, v-for, v-on, v-show e v-model./n Sistema de reatividade: O Vue.js utiliza um sistema de reatividade que atualiza automaticamente os dados da página quando eles são alterados. Isso significa que você não precisa se preocupar em atualizar manualmente a  interface do usuário sempre que os dados mudam./n Vuex: É um gerenciador de estado para Vue.js. Ele permite que você armazene e gerencie o estado da aplicação de forma centralizada, o que pode facilitar muito o desenvolvimento de aplicativos complexos./n Vue Router: É um roteador oficial para Vue.js. Ele permite que você defina rotas para diferentes partes da aplicação e que gerencie a transição entre essas rotas./n Vue CLI: É uma interface de linha de comando para Vue.js que permite criar projetos Vue.js com facilidade, adicionar plugins",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "VUE"
  ]
},
{
  "pergunta": "Vue vs React: Qual é a diferença?",
  "resposta": "Vue e React são duas das bibliotecas/frameworks JavaScript mais populares usadas para criar interfaces de usuário interativas. Ambos têm uma grande base de usuários e são conhecidos por sua flexibilidade, alta performance e grande comunidade de desenvolvedores./n Algumas das principais diferenças entre Vue e React são:/n Aprendizado: Vue é frequentemente considerado mais fácil de aprender e usar, graças a sua sintaxe clara e documentação bem organizada. React, por outro lado, pode ser mais difícil para iniciantes, pois envolve o uso de JSX e tem uma curva de aprendizado mais íngreme./n Estrutura: Vue é uma biblioteca completa, enquanto React é mais uma biblioteca baseada em componentes. Isso significa que Vue tem uma estrutura mais opinião sobre como as coisas devem ser feitas, enquanto React permite que os desenvolvedores tenham mais flexibilidade./n Performance: tanto Vue quanto React são conhecidos por terem um alto desempenho, mas Vue tem uma vantagem ligeira devido a sua arquitetura reativa, que torna mais fácil para o framework atualizar apenas as partes da página que precisam ser atualizadas./n Comunidade: tanto Vue quanto React têm comunidades ativas de desenvolvedores, mas React é um pouco mais maduro e estabelecido, o que significa que há mais recursos e ferramentas disponíveis para os desenvolvedores.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "VUE"
  ]
},
{
  "pergunta": "Vue vs Angular: Qual é a diferença?",
  "resposta": "ue e Angular são dois frameworks populares para desenvolvimento de aplicações web no client-side. Embora tenham algumas semelhanças, existem diferenças significativas entre eles./n Aqui estão algumas diferenças entre Vue e Angular:/n Curva de aprendizado: A curva de aprendizado para Vue é geralmente considerada mais suave em comparação com Angular. Isso ocorre porque Vue tem uma documentação mais clara e simples e uma API mais intuitiva./n Tamanho e desempenho: Vue é considerado mais leve e mais rápido em comparação com Angular. Vue é um framework progressivo, o que significa que você pode usá-lo para criar pequenos componentes ou para desenvolver aplicativos completos. Angular, por outro lado, é um framework completo que inclui muitos recursos e ferramentas, mas pode ser mais pesado em tamanho./n Flexibilidade: Vue é conhecido por sua flexibilidade. É possível usar o Vue de várias maneiras, como incorporá-lo em um projeto existente ou usar o Vue CLI para criar um projeto do zero. Angular é mais restrito em relação a essa flexibilidade, exigindo um conjunto específico de ferramentas e estruturação do projeto./n Gerenciamento de estado: O Vue utiliza Vuex para gerenciamento de estado, enquanto o Angular tem seu próprio gerenciador de estado incorporado, o NgRx./n Templates: O Vue usa uma sintaxe de template HTML para definir o layout da interface do usuário, enquanto o Angular usa sua própria linguagem de template, que pode levar algum tempo para se acostumar.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "VUE"
  ]
},
{
  "pergunta": "Quais compilações estão disponíveis no Vue?",
  "resposta": "O Vue.js oferece duas compilações: uma versão de desenvolvimento e uma versão de produção./n A versão de desenvolvimento do Vue.js inclui informações de depuração adicionais, como avisos do console e mensagens de erro detalhadas. Essa versão é mais lenta e possui um tamanho de arquivo maior, mas é útil durante o desenvolvimento e depuração do aplicativo./n A versão de produção do Vue.js é otimizada para velocidade e tamanho de arquivo. Ela remove as informações de debugging extras e usa técnicas de compressão para criar um pacote menor e mais rápido. Essa é a versão que deve ser usada em um ambiente de produção.",
  "filtros": [
      "FRAMEWORK",
      "ESTAGIO",
      "TECNICA",
      "FRONTEND",
      "JUNIOR",
      "VUE"
  ]
},
{
  "pergunta": "Como configurar o Vue.js no webpack?",
  "resposta": "Para configurar o Vue.js no Webpack, é necessário instalar o pacote vue-loader, que permite o carregamento de arquivos .vue, que são arquivos que contêm código HTML, CSS e JavaScript em um único arquivo./n Além disso, é preciso configurar o webpack para incluir o carregador do Vue.js no arquivo de configuração do Webpack. Em seguida, é necessário criar um arquivo main.js que importe o Vue.js e os componentes que serão utilizados na aplicação. Dessa forma, ao executar o comando webpack ou webpack-dev-server, o Vue.js será compilado junto com a aplicação e poderá ser utilizado nos componentes da aplicação.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "VUE"
  ]
},
{
  "pergunta": "Como forçar o Reload com VueJS?",
  "resposta": "Em geral, quando uma página é carregada em um navegador, os recursos são armazenados em cache para melhorar o desempenho e a velocidade de carregamento da página subsequente. Às vezes, no entanto, é necessário forçar o navegador a buscar os recursos novamente e recarregar a página. No VueJS, isso pode ser feito de várias maneiras:/n Atualize a página manualmente: Essa é a maneira mais simples e direta de forçar um recarregamento. Basta clicar no botão de atualização do navegador ou pressionar F5./n Desativar o cache do navegador: Você também pode desativar o cache do navegador para forçar o recarregamento. No Google Chrome, por exemplo, isso pode ser feito abrindo o console do desenvolvedor, clicando com o botão direito do mouse no botão Atualizar e selecionando 'Esvaziar cache e recarregar'./n Usando a diretiva 'key': A diretiva 'key' permite que você defina uma chave única para um componente. Quando a chave é alterada, o componente é renderizado novamente e seus dados são atualizados. Você pode usar essa diretiva para forçar o recarregamento de um componente específico./n Usando o router do Vue: Se você estiver usando o router do Vue, poderá forçar o recarregamento de uma rota específica chamando o método 'push' ou 'replace' com o mesmo caminho da rota atual.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "VUE"
  ]
},
{
  "pergunta": "Como configurar o VueJS Loader no webpack?",
  "resposta": "Para configurar o VueJS Loader no webpack, você precisará seguir os seguintes passos:/n Instale o VueJS Loader e o webpack usando o seguinte comando:/n Adicione as regras necessárias ao seu arquivo de configuração do webpack. Geralmente, o arquivo de configuração é denominado webpack.config.js. Adicione o seguinte código module.exports = { // outras configurações module: { rules: [ { test: /.vue loader: 'vue-loader' }, // outras regras ] } }/n Adicione a opção resolve à sua configuração do webpack para que você possa usar arquivos .vue sem especificar a extensão do arquivo./n Adicione o plugin VueLoaderPlugin à configuração do webpack.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "VUE"
  ]
},
{
  "pergunta": "O que é e para que serve o hot reloading no Vue loader?",
  "resposta": "O hot reloading é uma funcionalidade do Vue Loader que permite atualizar automaticamente a exibição da página em seu navegador enquanto você trabalha em seu código, sem precisar recarregar a página manualmente. Isso é possível graças ao uso de um servidor de desenvolvimento que monitora as mudanças em seus arquivos e recarrega automaticamente a página quando você salva as alterações./n Essa funcionalidade acelera o processo de desenvolvimento, pois você pode ver imediatamente as alterações que fez em seu código e verificar se elas funcionam como esperado. Além disso, o hot reloading é compatível com vários tipos de componentes, incluindo single-file components e componentes de classe.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "VUE"
  ]
},
{
  "pergunta": "Qual é o propósito da API hotUpdate da Vuex Store?",
  "resposta": "A API hotUpdate da Vuex Store é usada para permitir atualizações em tempo real de módulos de loja individuais sem ter que recarregar a página inteira. Isso é particularmente útil durante o desenvolvimento de aplicativos, pois permite que os desenvolvedores atualizem rapidamente a lógica de armazenamento sem perder o estado atual da aplicação.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "PLENO",
      "VUE"
  ]
},
{
  "pergunta": "O que nextTick faz no VueJS?",
  "resposta": "O método nextTick é usado para agendar uma atualização de renderização na próxima iteração do ciclo de eventos do DOM. Isso permite que você execute algum código assíncrono (como atualizações de estado ou manipulação do DOM) e, em seguida, agende uma atualização de renderização na próxima iteração do ciclo de eventos para garantir que a interface do usuário reflita as alterações de estado mais recentes./n Além disso, ele retorna uma promessa que é resolvida assim que o Vue.js completa o processamento da fila de atualização de renderização e a interface do usuário é atualizada. Isso permite que você execute código após a atualização de renderização, garantindo que a interface do usuário esteja atualizada e pronta para usar.",
  "filtros": [
      "FRAMEWORK",
      "TECNICA",
      "FRONTEND",
      "SENIOR",
      "VUE"
  ]
},

  ];
}
