# Especificações de projeto

## SPEC-010

!!! specification "Aceleração Máxima"
    !!! description "Descrição"
        TBD
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-050 Conforto de Operação - Aceleração](requirements.md#req-050)
        - Testado por :octicons-arrow-right-24: [TCASE-010 Conforto de Operação - Aceleração](testcase.md#tcase-010)

## SPEC-020

!!! specification "Jitter Máximo"
    !!! description "Descrição"
        TBD
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-060 Conforto de Operação - Jitter](requirements.md#req-060)
        - Testado por :octicons-arrow-right-24: [TCASE-020 Conforto de Operação - Jitter](testcase.md#tcase-020)

## SPEC-030

!!! specification "Tempo Limite de Retenção da Cabine"
    !!! description "Descrição"
        TBD
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-070 Alerta Sonoro da Cabine](requirements.md#req-070)
        - Testado por :octicons-arrow-right-24: [TCASE-030 Inibição de travamento](testcase.md#tcase-030)

## SPEC-040

!!! specification "Limite de Exatidão de Parada"
    !!! description "Descrição"
        ± 10 mm
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-080 Exatidão de Posicionamento - Parada](requirements.md#req-080)
        - Especifica :octicons-arrow-right-24: [REQ-090 Exatidão de Posicionamento - Carga/Descarga](requirements.md#req-090)
        - Testado por :octicons-arrow-right-24: [TCASE-040 Exatidão de Posicionamento - Parada](testcase.md#tcase-040)

## SPEC-050

!!! specification "Limite de Exatidão de Nivelamento"
    !!! description "Descrição"
        ± 20 mm
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-090 Exatidão de Posicionamento - Carga/Descarga](requirements.md#req-090)
        - Testado por :octicons-arrow-right-24: [TCASE-050 Exatidão de Posicionamento - Carga/Descarga](testcase.md#tcase-050)

## SPEC-060

!!! specification "Controle de Chaveamento do Sistema de Potência"
    !!! description "Descrição"
        O controlador implementa o algortimo de Controle de Campo Orientado.
    !!! links
        - Especifica :octicons-arrow-right-24: [REQ-100 Chaveamento Coordenado do Sistema de Potência](requirements.md#req-100)
        - Especifica :octicons-arrow-right-24: [REQ-110 Atuação do motor sobre carga](requirements.md#req-110)
        - Especifica :octicons-arrow-right-24: [REQ-120 Controle do motor sobre carga](requirements.md#req-120)
        - Testado por :octicons-arrow-right-24: [TCASE-060 Chaveamento não produz curtos](testcase.md#tcase-060)
        - Testado por :octicons-arrow-right-24: [TCASE-070 Controle do motor sob carga especificada continua operando](testcase.md#tcase-070)
        - Testado por :octicons-arrow-right-24: [TCASE-080 Controle do motor sob carga especificada continua operando nominalmente](testcase.md#tcase-080)