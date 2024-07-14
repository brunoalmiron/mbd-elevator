# Requisitos de projeto

## REQ-010

!!! requirement "Conforto de Operação"
    !!! description "Descrição"
        A <u>__ABNT__</u> determina que, dado um sistema de elevador:
        ```quote
        O sistema deve apresentar operação confortável, com
        aceleração e desaceleração suaves, sem trancos ou solvancos.
        ```
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [REQ-05 Conforto de Operação - Aceleração](#req-050)
        - Derivado em :octicons-arrow-right-24: [REQ-06 Conforto de Operação - Jitter](#req-060)
        - Testado por :octicons-arrow-right-24: [Conforto de Operação - Aceleração](testcase.md#tcase-010)
        - Testado por :octicons-arrow-right-24: [Conforto de Operação - Jitter](testcase.md#tcase-020)

## REQ-020

!!! requirement "Inibição de Travamento por Usuário"
    !!! description "Descrição"
        O sistema deve inibir usuários de reterem as portas abertas por
        tempo prolongado.
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [Alerta Sonoro da Cabine](#req-070)

## REQ-030

!!! requirement "Exatidão de Posicionamento"
    !!! description "Descrição"
        5.12.1.1.4 A exatidão de parada do piso da cabina deve
        ser de ± 10 mm. Se, por exemplo, durante o período de
        carga e descarga, a exatidão de nivelamento for excedida
        em ± 20 mm, ela deve ser corrigida para ± 10 mm.a
    !!! links "Artefatos Relacionados"
        - Derivado em :octicons-arrow-right-24: [REQ-08 Exatidão de Posicionamento - Parada](#req-080)
        - Derivado em :octicons-arrow-right-24: [REQ-09 Exatidão de Posicionamento - Carga/Descarga](#req-090)
        - Testado por :octicons-arrow-right-24: [Exatidão de Posicionamento - Parada](testcase.md#tcase-040)
        - Testado por :octicons-arrow-right-24: [Exatidão de Posicionamento - Carga/Descarga](testcase.md#tcase-050)

## REQ-040

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
        :octicons-arrow-right-24: [Nenhum até o momento](#req-040)

## REQ-050

!!! requirement "Conforto de Operação - Aceleração"
    !!! description "Descrição"
        A operação do sistema não deve ultrapassar a [aceleração máxima](specifications.md#spec-010).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-010 Conforto de Operação](#req-010)
        - Especificado por :octicons-arrow-right-24: [SPEC-01 Aceleração Máxima](specifications.md#spec-010)
        - Testado por :octicons-arrow-right-24: [Conforto de Operação - Aceleração](testcase.md#tcase-010)

## REQ-060

!!! requirement "Conforto de Operação - Jitter"
    !!! description "Descrição"
        A operação do sistema não deve ultrapassar o [jitter máximo](specifications.md#spec-020).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-010 Conforto de Operação](#req-010)
        - Especificado por :octicons-arrow-right-24: [SPEC-020 Jitter Máximo](specifications.md#spec-020)
        - Testado por :octicons-arrow-right-24: [Conforto de Operação - Jitter](testcase.md#tcase-020)

## REQ-070

!!! requirement "Alerta Sonoro da Cabine"
    !!! description "Descrição"
        O sistema de cabine deve atuar um sinal sonoro ao ultrapassar o 
        [tempo limite de retenção da cabine](specifications.md#spec-030).
    !!! links "Artefatos Relacionados"
        - Derivador de :octicons-arrow-right-24: [REQ-020 Inibição de Travamento por Usuário](#req-020)
        - Especificado por :octicons-arrow-right-24: [SPEC-030 Tempo Limite de Retenção da Cabine](specifications.md#spec-030)

## REQ-080

!!! requirement "Exatidão de Posicionamento - Parada"
    !!! description "Descrição"
        Ao parar a cabine, o sistema atingir a parada dentro do [limite de exatidão de parada](specifications.md#spec-040).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-030 Exatidão de Posicionamento](#req-030)
        - Especificado por :octicons-arrow-right-24:  [SPEC-040 Limite de Exatidão de Parada](specifications.md#spec-040)
        - Testado por :octicons-arrow-right-24: [TCASE-040 Exatidão de Posicionamento - Parada](testcase.md#tcase-040)

## REQ-090

!!! requirement "Exatidão de Posicionamento - Carga/Descarga"
    !!! description "Descrição"
        Com a cabine parada, durante uma caraga e descarga, o sistema
        deve reposicionar a para dentro do
        [limite de exatidaão de parada](specifications.md#spec-040) caso
        este exceda o [limite de exatidão de nivelamento](specifications.md#spec-050).
    !!! links "Artefatos Relacionados"
        - Derivado de :octicons-arrow-right-24: [REQ-030 Exatidão de Posicionamento](#req-030)
        - Especificado por :octicons-arrow-right-24:  [SPEC-040 Limite de Exatidão de Parada](specifications.md#spec-040)
        - Especificado por :octicons-arrow-right-24:  [SPEC-050 Limite de Exatidão de Nivelamento](specifications.md#spec-050)
        - Testado por :octicons-arrow-right-24: [TCASE-050 Exatidão de Posicionamento - Carga/Descarga](testcase.md#tcase-050)

## REQ-100

!!! requirement "Chaveamento Coordenado do Sistema de Potência"
    !!! description "Descrição"
        Quando o controlador executa chaveamentos do sistema de potência 
        e atuação, este efetua o controle de chaveamento apropriado para
        o sistema de inversão de potência.
    !!! links "Artefatos Relacionados"
        - Testado por :octicons-arrow-right-24: [TCASE-060 Chaveamento não produz curtos](testcase.md#tcase-060)


## REQ-110

!!! requirement "Atuação do motor sobre carga"
    !!! description "Descrição"
        Quando o motor sob controle opera com carga dentro da
        especificada deve ser capaz de manter a operação.
    !!! links "Artefatos Relacionados"
        - Testado por :octicons-arrow-right-24: [TCASE-070 Controle do motor sob carga especificada continua operando](testcase.md#tcase-070)

## REQ-120

!!! requirement "Controle do motor sobre carga"
    !!! description "Descrição"
        Quando o motor sob controle opera com carga dentro da
        especificada deve ser capaz de manter a operação dentro das
        restrições especificadas.
    !!! links "Artefatos Relacionados"
        - Testado por :octicons-arrow-right-24: [TCASE-080 Controle do motor sob carga especificada continua operando nominalmente](testcase.md#tcase-080)
