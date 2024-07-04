## TCASE-01

!!! testcase "Conforto de Operação - Aceleração"
    !!! description "Descrição"
        DADO:
        ```md
        Um elevador em operação normal.
        ```
        QUANDO:
        ```md
        A cabine se desloca.
        ```
        ENTÃO:
        ```md
        A aceleração deve ser menor que a velocidade máxima.
        ```
    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-01 Conforto de Operação](requirements.md#req-01)
        - Testa :octicons-arrow-right-24: [REQ-05 Conforto de Operação - Aceleração](requirements.md#req-05)
        - Testa :octicons-arrow-right-24: [SPEC-01 Aceleração Máxima](specifications.md#spec-01)

## TCASE-02

!!! testcase "Conforto de Operação - Jitter"
    !!! description "Descrição"
        DADO:
        ```md
        Um elevador em operação normal.
        ```
        QUANDO:
        ```md
        A cabine se desloca.
        ```
        ENTÃO:
        ```md
        A aceleração deve ser menor que a velocidade máxima.
        ```
    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-01 Conforto de Operação](requirements.md#req-01)
        - Testa :octicons-arrow-right-24: [REQ-06 Conforto de Operação - Jitter](requirements.md#req-06)
        - Testa :octicons-arrow-right-24: [SPEC-03 Tempo Limite de Retenção da Cabine](specifications.md#spec-02)

## TCASE-03

!!! testcase "Inibição de travamento"
    !!! description "Descrição"
        DADO:
        ```md
        Quando o elevador para em um andar.
        ```
        QUANDO:
        ```md
        Ao ser retido pelo usuário por além do [tempo limite de retenção da cabine](specifications.md#spec-03)
        ```
        ENTÃO:
        ```md
        Uma ação de inibição (sonoro ou visual, por exemplo) ocorre.
        ```
    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-02 Inibição de Travamento por Usuário](requirements.md#req-01)
        - Testa :octicons-arrow-right-24: [REQ-07 Alerta Sonoro da Cabine](requirements.md#req-07)
        - Testa :octicons-arrow-right-24: [SPEC-03 Tempo Limite de Retenção da Cabine](specifications.md#spec-03)


## TCASE-04

!!! testcase "Exatidão de Posicionamento - Parada"
    !!! description "Descrição"
        DADO
        ---

        O elevador em movimento.
        
        QUANDO
        ---

        Este elevador para em um andar.

        ENTÃO
        ---

        O elevador atinge a posição de parada dentro do [limite de exatidão de parada](specifications.md#spec-04). 

    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-03 Exatidão de Posicionamento](requirements.md#req-03)
        - Testa :octicons-arrow-right-24: [REQ-08 Exatidão de Posicionamento - Parada](requirements.md#req-08)
        - Testa :octicons-arrow-right-24: [SPEC-04 Limite de Exatidão de Parada](specifications.md#spec-04)

## TCASE-05

!!! testcase "Exatidão de Posicionamento - Carga/Descarga"
    !!! description "Descrição"
        DADO:
        ```md
        Quando o elevador em movimento.
        ```
        QUANDO:
        ```md
        Para em um andar.
        ```
        ENTÃO:
        ```md
        O elevador atinge a posição de parada dentro do [limite de exatidão de nivelamento](specifications.md#spec-05). 
        ```
    !!! links "Artefatos Relacionados"
        - Testa :octicons-arrow-right-24: [REQ-03 Exatidão de Posicionamento](requirements.md#req-03)
        - Testa :octicons-arrow-right-24: [REQ-09 Exatidão de Posicionamento - Carga/Descarga](requirements.md#req-09)
        - Testa :octicons-arrow-right-24: [SPEC-05 Limite de Exatidão de Nivelamento](specifications.md#spec-05)
