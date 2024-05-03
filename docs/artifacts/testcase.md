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
        - Verifica :octicons-arrow-right-24: [REQ-01 Conforto de Operação](#req-01)
        - Verifica :octicons-arrow-right-24: [SPEC-01 Aceleração Máxima](specifications.md#spec-01)