# Requisitos de projeto

## REQ-01

!!! requirement "Conforto de Operação"
    !!! description "Descrição"
        A <u>__ABNT__</u> determina que, dado um sistema de elevador:
        ```quote
        O sistema deve apresentar operação confortável, com
        aceleração e desaceleração suaves, sem trancos ou solvancos.
        ```
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [REQ-05 Conforto de Operação - Aceleração](#req-05)
        - Derivado em :octicons-arrow-right-24: [REQ-06 Conforto de Operação - Jitter](#req-06)

## REQ-02

!!! requirement "Inibição de Travamento por Usuário"
    !!! description "Descrição"
        O sistema deve inibir usuários de reterem as portas abertas por
        tempo prolongado.
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [Alerta Sonoro da Cabine](#req-07)

## REQ-03

!!! requirement "Exatidão de Posicionamento"
    !!! description "Descrição"
        5.12.1.1.4 A exatidão de parada do piso da cabina deve
        ser de ± 10 mm. Se, por exemplo, durante o período de
        carga e descarga, a exatidão de nivelamento for excedida
        em ± 20 mm, ela deve ser corrigida para ± 10 mm.a
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [REQ-08 Exatidão de Posicionamento - Parada](#req-08)
        - Derivado em :octicons-arrow-right-24: [REQ-09 Exatidão de Posicionamento - Carga/Descarga](#req-09)

## REQ-04

!!! requirement "Restrição de Velocidade em Operação Segundo <u>__ABNT__</u>"
    !!! description "Descrição"
        5.9.2.4 A velocidade do carro, com metade da carga
        nominal, em subida ou descida, no meio do percurso,
        excluindo os períodos de aceleração e retardamento, não
        pode exceder à velocidade nominal em mais de 5%, com
        a frequência da rede no valor nominal e a tensão do motor
        igual ao valor nominal do equipamento.
            a) impedir o elevador de atender chamadas de pavimento e comandos remotos;
            b) desativar a operação das portas automáticas;
            c) permitir chamada, pelo menos para os pavimentos
                extremos, para manutenção.
    !!! links "Artefatos Relacionados"
        :octicons-arrow-right-24: [Nenhum até o momento](#req-04)

## REQ-05

!!! requirement "Conforto de Operação - Aceleração"
    !!! description "Descrição"
        A operação do sistema não deve ultrapassar a [aceleração máxima](specifications.md#spec-01).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-01 Conforto de Operação](#req-01)
        - Especificado por :octicons-arrow-right-24: [SPEC-01 Aceleração Máxima](specifications.md#spec-01)

## REQ-06

!!! requirement "Conforto de Operação - Jitter"
    !!! description "Descrição"
        A operação do sistema não deve ultrapassar o [jitter máximo](specifications.md#spec-02).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-01 Conforto de Operação](#req-01)
        - Especificado por :octicons-arrow-right-24: [SPEC-02 Jitter Máximo](specifications.md#spec-02)

## REQ-07

!!! requirement "Alerta Sonoro da Cabine"
    !!! description "Descrição"
        O sistema de cabine deve atuar um sinal sonoro ao ultrapassar o 
        [tempo limite de retenção da cabine](specifications.md#spec-03).
    !!! links "Artefatos Relacionados"
        - Derivador de :octicons-arrow-right-24: [REQ-02 Inibição de Travamento por Usuário](#req-02)
        - Especificado por :octicons-arrow-right-24: [SPEC-03 Tempo Limite de Retenção da Cabine](specifications.md#spec-03)

## REQ-08

!!! requirement "Exatidão de Posicionamento - Parada"
    !!! description "Descrição"
        Ao parar a cabine, o sistema atingir a parada dentro do 
        [limite de exatidão de parada](specifications.md#spec-04).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-03 Exatidão de Posicionamento](#req-03)
        - Especificado por :octicons-arrow-right-24:  [SPEC-04 Limite de Exatidão de Parada](specifications.md#spec-04)

## REQ-09

!!! requirement "Exatidão de Posicionamento - Carga/Descarga"
    !!! description "Descrição"
        Com a cabine parada, durante uma caraga e descarga, o sistema
        deve reposicionar a para dentro do
        [limite de exatidaão de parada](specifications.md#spec-04) caso
        este exceda o [limite de exatidão de nivelamento](specifications.md#spec-05).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-03 Exatidão de Posicionamento](#req-03)
        - Especificado por :octicons-arrow-right-24:  [SPEC-04 Limite de Exatidão de Parada](specifications.md#spec-04)
        - Especificado por :octicons-arrow-right-24:  [SPEC-05 Limite de Exatidão de Nivelamento](specifications.md#spec-05)