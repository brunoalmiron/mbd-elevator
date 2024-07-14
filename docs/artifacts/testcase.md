## TCASE-010

!!! testcase "Conforto de Operação - Aceleração"
    !!! description "Descrição"
        DADO:

        Um elevador em operação normal.

        QUANDO:

        A cabine se desloca.

        ENTÃO:

        A aceleração deve ser menor que a velocidade máxima.

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-010 Conforto de Operação](requirements.md#req-010)
        - Testa :octicons-arrow-right-24: [REQ-050 Conforto de Operação - Aceleração](requirements.md#req-050)
        - Testa :octicons-arrow-right-24: [SPEC-010 Aceleração Máxima](specifications.md#spec-010)

## TCASE-020

!!! testcase "Conforto de Operação - Jitter"
    !!! description "Descrição"
        DADO:

        Um elevador em operação normal.

        QUANDO:

        A cabine se desloca.

        ENTÃO:

        A aceleração deve ser menor que a velocidade máxima.

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-010 Conforto de Operação](requirements.md#req-010)
        - Testa :octicons-arrow-right-24: [REQ-060 Conforto de Operação - Jitter](requirements.md#req-060)
        - Testa :octicons-arrow-right-24: [SPEC-030 Tempo Limite de Retenção da Cabine](specifications.md#spec-020)

## TCASE-030

!!! testcase "Inibição de travamento"
    !!! description "Descrição"
        DADO:

        Quando o elevador para em um andar.

        QUANDO:

        Ao ser retido pelo usuário por além do [tempo limite de retenção da cabine](specifications.md#spec-030)

        ENTÃO:

        Uma ação de inibição (sonoro ou visual, por exemplo) ocorre.

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-020 Inibição de Travamento por Usuário](requirements.md#req-020)
        - Testa :octicons-arrow-right-24: [REQ-070 Alerta Sonoro da Cabine](requirements.md#req-070)
        - Testa :octicons-arrow-right-24: [SPEC-030 Tempo Limite de Retenção da Cabine](specifications.md#spec-030)


## TCASE-040

!!! testcase "Exatidão de Posicionamento - Parada"
    !!! description "Descrição"
        DADO:

        O elevador em movimento.
        
        QUANDO:

        Este elevador para em um andar.

        ENTÃO:

        O elevador atinge a posição de parada dentro do [limite de exatidão de parada](specifications.md#spec-040). 

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-030 Exatidão de Posicionamento](requirements.md#req-030)
        - Testa :octicons-arrow-right-24: [REQ-080 Exatidão de Posicionamento - Parada](requirements.md#req-080)
        - Testa :octicons-arrow-right-24: [SPEC-040 Limite de Exatidão de Parada](specifications.md#spec-040)

## TCASE-050

!!! testcase "Exatidão de Posicionamento - Carga/Descarga"
    !!! description "Descrição"
        DADO:

        Quando o elevador em movimento.

        QUANDO:

        Para em um andar.

        ENTÃO:

        O elevador atinge a posição de parada dentro do [limite de exatidão de nivelamento](specifications.md#spec-050). 

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-030 Exatidão de Posicionamento](requirements.md#req-030)
        - Testa :octicons-arrow-right-24: [REQ-090 Exatidão de Posicionamento - Carga/Descarga](requirements.md#req-090)
        - Testa :octicons-arrow-right-24: [SPEC-050 Limite de Exatidão de Nivelamento](specifications.md#spec-050)

## TCASE-060

!!! tescase "Chaveamento não produz curtos"
    !!! description "Descrição"
        DADO:

        O sistema de controle de um sistema de potência.

        QUANDO:

        O sistema de controle aciona às chaves do sistema de potência.

        ENTÃO:

        Duas chaves para polaridades opostas da ponte não são acionadas
        simultâneamente.
    !!! links
        - Testa :octicons-arrow-right-24: [REQ-100 Chaveamento Coordenado do Sistema de Potência](requirements.md#req-100)
        - Testa :octicons-arrow-right-24: [SPEC-060 Controle de Chaveamento do Sistema de Potência](specifications.md#spec-060)

## TCASE-070

!!! tescase "Controle do motor sob carga especificada continua operando"
    !!! description "Descrição"
        DADO:

        O sistema de controle operando o motor.

        QUANDO:

        O motor é colocado sob carga nominal.

        ENTÃO:

        O motor segue movimento na direção designada.
    !!! links
        - Testa :octicons-arrow-right-24: [REQ-110 Atuação do motor sobre carga](requirements.md#req-110)
        - Testa :octicons-arrow-right-24: [SPEC-060 Controle de Chaveamento do Sistema de Potência](specifications.md#spec-060)

## TCASE-080

!!! tescase "Controle do motor sob carga especificada continua operando nominalmente"
    !!! description "Descrição"
        DADO:

        O sistema de controle operando o motor.

        QUANDO:

        O motor é colocado sob carga nominal.

        ENTÃO:

        O motor segue movimento na direção designada dentro das condições especificadas.
    !!! links
        - Testa :octicons-arrow-right-24: [REQ-120 Controle do motor sobre carga](requirements.md#req-120)
        - Testa :octicons-arrow-right-24: [SPEC-060 Controle de Chaveamento do Sistema de Potência](specifications.md#spec-060)