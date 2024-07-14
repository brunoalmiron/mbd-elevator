## Objetivos da iteração

Conforme estabelecido no ciclo 0, onde foram arranjados os recursos mínimos para o início de um ciclo de desenvolvimento, foram determinados os seguintes tópicos a serem atendidos:

- Preparar os casos de teste, procedimentos de teste e os outros
    artefatos do projeto para estabelecer um **framework** de
    registro das atividades para um ciclo completo.
- Gerar modelos referenciados, operacionais ou não, para os
    elementos do sistema (e.g. elevador, motor, acionamento de
    potência).
- Determinar interfaces para estes modelos.
- Referenciar modelos à testes unitários de demonstração.
- Rastrear modelos à requisitos de demonstração.

## Resultados da iteração

Durante esta etapa de desenvolvimento, o desenvolvimento do sistema de artefatos do projeto atendeu o registro dos requisitos originais e com derivação preliminar destes. Artefatos de casos de teste e especificação também foram elicitados conforme norma ou mantidos em aberto para especificação subsequente.

Quanto ao processo de modelagem, no contexto do ambiente simulado foram desenvolvidos submodelos referenciados para:

- Interface de Hardware
    Modelo implementa funções de aquisição e geração de sinais e representa o controlador no modelo.
- Inversor Trifásico
    Modelo que representa uma fonte de tensão trifásica que é chaveada pelos sinais de chaveamento do controlador.

Estes modelos modelos ainda foram interfaceados a um modelo de motor síncrono e um modelo de carga mecânica genérica.

No contexto da aplicação de controle, um modelo a parte foi desenvolvido capaz de chavear seis portas TTL de forma independente. Também foram validados processos de decodificação de sinais de encoder, e outros. O modelo foi compilado e embarcado de forma a realizar a comutação seriada das chaves inversoras a partir de fontes de pulsos ajustados manualmente. Dessa forma foi possível verificar uma integração básica entre o software embarcado e grandezas no motor como torque, velocidade e posição do sistema.

Dada o excessivo tempo da iteração corrente, optou-se por fechar o ciclo sem mapeamento de modelos à artefatos uma vez que o estado atual dos modelos e do controlador não implementam nenhuma propriedade planejada. Dessa forma, em posse de maior contexto para o projeto, novos artefatos podem ser descritos, novas decisões de projeto elicitadas e modelos podem ser desenvolvidos de maneira mais concisa em relação ao problema.

A seguir é apresentado a contagem corrente de artefatos do projeto:

![Artefato por iteração](../assets/plots/artifact_series.svg)

## Considerações para iterações subsequentes

O uso de requisitos funcionais de forma independente pode reduzir a carga de trabalho na elicitação de requisitos até que o controlador e os modelos atinjam funcionalidades mais alto nível. Nesse sentido, requisitos independentes podem receber traceabilidade ao avançar do projeto, evitando a criação de requisitos, especificações e outros artefatos que não contribuam no ciclo corrente.

O modelo de interface do controlador está operando à uma baixa taxa de amostragem (1kHz). Deve ser  suficiente para testar o algoritmo a baixas frequências de operação, mas deve ser revisto ao estender a frequência de operação.

Para o próximo ciclo sugere-se:

- Desenvolver a malha de controle do Controlador de forma à obter uma sequência de chaveamento consistente.
- Implementar sensores nos modelos para o monitoramento de variáveis de interesse que possam subsequentemente ser implementados em testes.