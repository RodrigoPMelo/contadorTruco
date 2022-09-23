Documentação:

    -Objetivo: Criar um app simples para servir como contador de uma partida de truco.
        1- O app é composto por um arquivo main.dart onde está contida o código fonte completo.
        2- O código fonte por sua vez é composto por um StatefulWidget e contém uma appBar com a função de reset do jogo no canto superior direito, 
        contém também um SingleChildScrollView onde está localizado o body da aplicação.
        3- O body da aplicação é composto por uma grande Column que por sua vez é dividida em Rows e Columns, a maioria dos componentes do body tem
        a propriedade Padding que todos os componentes fiquem devidamente espaçados. Além de Rows e Columns, o body possui também um ElevatedButton
        que é o botão azul usado para pedir truco e fazer com que a rodada passe a valer 3, 6, 9, 12 pontos, quatro IconButtons que são os botões de 
        aumentar e diminuir pontos, e dois contadores de pontos, um para cada time, e um aviso de quanto a partida esta valendo.
        4- Para o funcionamento desses componentes são usados dois contadores de pontos, um para cada time, um contador para guardar quanto a rodada
        está valendo, e duas strings que guardam informações do texto do botão de truco e o texto do valor da rodada que aparece centralizado no topo
        da tela.
        5- O app conta com 8 funções para seu funcionamento, sendo elas:
            - Reset, para recomeçar o jogo ao estado inicial;
            - initState, para criar o StatefulWidget;
            - build, método necessário do StatefulWidget, responável por criar o appBar e o body;
            - somaPontos, onde ele aumenta os pontos do time em questão de acordo com o valor da rodada e também chama a função verificaGanhador;
            - verificaGanhador faz validações para determinar se há algum vencedor e se houver algum mostra a mesagem de vitoria por meio da 
              função abrirMensagem; 
            - abrirMensagem cria e mostra um popup para informar o usuário que o jogo terminou e tem-se um vencedor.
            - montaBody fica encarregado de construir todo o layout do app e cuida da aplicação das demais funções de maneira lógica. 