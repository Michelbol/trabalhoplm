    .section .data
        msg_bem_vindo:                  .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n ===========================================================\n"
        pergunta_inicial:               .asciz "Você deseja [i]niciar o Jogo ou [s]air?\n"
        print_numero:                   .asciz "  %d  "
        print_palavra:                  .asciz " %s  "
        print_cartas_jogador:           .asciz "As cartas da sua mão são:"
        print_cartas_computador:        .asciz "As cartas do computador: "
        print_vira:                     .asciz "A vira eh: "
        print_cartas_sortiadas:         .asciz "As cartas sortiadas foram:  "
        print_status_cartas:            .asciz "Os status das cartas sao:  "
        print_rodadas:                  .asciz "As rodadas sao: "
        print_sinais_sortiados:         .asciz "Os sinais sortiados foram:  "
        print_nao_escolheu_nada:        .asciz "Não escolheu nenhuma opção "
        print_escolheu_opcao_um:        .asciz "Escolheu a opção um"
        print_escolheu_opcao_dois:      .asciz "Escolheu opção dois"
        print_escolheu_opcao_tres:      .asciz "Escolheu opção tres"
        print_empate:                   .asciz "===============Empatou!===============\n"
        print_empate_segunda_rodada:    .asciz "Segunda Rodada! Quem fez a primeira ganha!\n"
        print_empate_terceira_rodada:   .asciz "Terceira Rodada! Quem fez a primeira ganha!\n"
        print_jogador_vencedor:         .asciz "O jogador ganhou!"
        print_maquina_vencedora:        .asciz "A maquina ganhou!"
        print_rodada:                   .asciz "Estamos na rodada: %d\n"
        opcao_invalida:                 .asciz "\nVocê digitou uma opcao invalida, digite novamente\n"
        teste:                          .asciz "cheguei aqui"
        cartas_corretas:                .asciz "Todas as cartas estao corretas!"
        contador_em:                    .asciz "Contador em: %d\n"
        quebra_linha:                   .asciz "\n"
        print_cartas_iguais:            .asciz "As cartas informadas são iguais: %s, %s \n"
        print_iguais:                   .asciz " %d e %d"
        print_diferentes:               .asciz "Estas cartas são diferentes!"
        print_comparando:               .asciz "Comparando %d e %d\n"
        jogador_jogou_carta:            .asciz "Você jogou a carta:      %s de %s\n"
		jogador_escondeu_carta:            .asciz "Você escondeu a carta:      %s de %s\n"
        maquina_jogou_carta:            .asciz "A máquina jogou a carta: %s de %s\n"
        print_jogador_ganhou:           .asciz "O jogador ganhou!"
        print_computador_ganhou:        .asciz "O computador ganhou!"
        print_acao_mao_com_truco:       .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Trucar!\n"
        print_acao_mao_sem_truco:       .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n"
        print_acao_mao_com_seis:        .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Pedir Seis!\n"
        print_acao_mao_com_nove:        .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Pedir Nove!\n"
        print_acao_mao_com_doze:        .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Pedir Doze!\n"
        print_escolhe_cartas:           .asciz "Escolha uma das cartas abaixo:\n"
        print_escolhe_carta_um:         .asciz "Carta [1]: %s %s\n"
        print_escolhe_carta_dois:       .asciz "Carta [2]: %s %s\n"
        print_escolhe_carta_tres:       .asciz "Carta [3]: %s %s"
        print_jogador_ganhou_mao:       .asciz "O jogador ganhou a mao!!\n"
        print_computador_ganhou_mao:    .asciz "O computador ganhou a mao!!\n"
        print_jogador_ganhou_tento:     .asciz "O jogador ganhou o tento!\n"
        print_computador_ganhou_tento:  .asciz "O computador ganhou o tento!\n"
        print_computador_pediu_truco:	.asciz "O computador pediu truco!\n[1] Aceitar \n[2] Pedir Seis \n[3] Correr\n"
        print_computador_pediu_seis:    .asciz "O computador pediu seis!\n[1] Aceitar \n[2] Pedir Nove \n[3] Correr\n"
        print_computador_pediu_nove:	.asciz "O computador pediu nove!\n[1] Aceitar \n[2] Pedir Doze \n[3] Correr\n"
        print_computador_pediu_doze:	.asciz "O computador pediu doze!\n[1] Aceitar \n[2] Correr\n"
        print_computador_aceitou:       .asciz "O computador aceitou o pedido!\n"
        print_pontos:                   .asciz "\nPONTOS:\nJOGADOR: %d\nCOMPUTADOR: %d\n\n\n\n"
        print_escolhe_cartas_esconde:   .asciz "Escolha uma das cartas abaixo para jogar escondido:\n"
        print_duas_cartas_manilha:      .asciz "As duas cartas sao manilhas"
        cartas:                         .asciz "4     ", "5     ", "6     ", "7     ", "Dama  ", "Valete", "Reis  ", "As    ", "2     ", "3     "
        sinais:                         .asciz "Ouros ", "Espada", "Copas ", "Paus  "
        pause_enter:                    .asciz "====================================Pressione <Enter>===================================="
        rodada_aleatoria:               .asciz "Primeira jogada! Jogada Aleatoria!\n"
        rodada_maior:                   .asciz "Ira verifica as cartas e jogar a maior q ainda nao foi jogada.\n"
        carta_um_valida:                .asciz "Carta um valida!\n"
        carta_dois_valida:              .asciz "Carta dois valida!\n"
        carta_dois_valida_carta_um_tb:  .asciz "Carta um e dois validas\n"
        carta_dois_valida_carta_tres_tb:.asciz "Carta dois e tres validas\n"
        carta_tres_valida_carta_um_tb:  .asciz "Carta um e tres validas\n"
        carta_dois_um_valid_ver_sinal:  .asciz "Carta um e dois validas, verificando sinal\n"
        carta_tres_um_valid_ver_sinal:  .asciz "Carta um e tres validas, verificando sinal\n"
        carta_tres_dois_valid_ver_sinal:.asciz "Carta dois e tres validas, verificando sinal\n"
        tempo:              .int 4
        contador:           .int 0
        rgeral:             .int 0
        rodada:             .int 0
        pontos_mao:         .int 0
        pontos_jogador:     .int 0
        pontos_computador:  .int 0
        manilha:            .int 0
        rodadas_vencidas_m: .int 0
        rodadas_vencidas_j: .int 0
        quem_comeca:        .int 0 #0 = jogador 1 = computador
        ultimo_truco:       .int 0 #1=jogador 2=computador
		vez_de_quem:        .int 0 #1=jogador 2=computador
		escondeu_carta:     .int 0 #0=nao 1=sim

        cartas_maquina:         .space 28
        sinais_cartas_maquina:  .space 28
        cartas_jogador:         .space 28
        sinais_cartas_jogador:  .space 28
        cartas_sortiadas:       .space 32
        sinais_sortiados:       .space 32
        vira:                   .space 14
        sinal_vira:             .space 14

        status_cartas:  .int 0,0,0,0,0,0 # 0 = não jogada, 1 = jogada
        rodadas:        .int 0,0,0 #0 = nao jogada, 1 = jogador, 2 = maquina, 3 = empate

        formato_string:     .asciz "%*c"
        formato_numero:     .asciz "%d"
        resposta_inicial:   .asciz "%s"
        limpabuf:           .string "%*c"
    #=============================================================fim váriaveis===============================================================

        _gerador_semente_aleatoria:
        pushl   $tempo
        call    time
        pushl   tempo
        call    srand
        addl    $8, %esp
            ret

        _gerador_cartas_maquina:
        movl    $3, %ecx                    #numero de cartas que serão geradas devem estar em ecx(instrução loop)
        movl    $cartas_maquina, %ebx
        movl    $cartas_sortiadas, %edx
        addl    $12, %edx
        _gera_carta_maquina:
        pushl   %edx
        pushl   %ecx                        #backup %ecx, %ebx e %edx que são o vetores
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $10, %ebx                   #iremos pegar apenas numeros entre 0 e 9 assim teremos que dividir por 10
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    $cartas, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %ecx
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
        loop    _gera_carta_maquina
            ret

        _gerador_sinais_cartas_maquina:
        movl    $3, %ecx                    #numero de sinais que serão geradas devem estar em ecx(instrução loop)
        movl    $sinais_cartas_maquina, %ebx
        movl    $sinais_sortiados, %edx
        addl    $12, %edx
        _gera_sinal_carta_maquina:
        pushl   %edx
        pushl   %ecx                        #backup %ecx, %ebx e %edx que é o vetor
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $4, %ebx                   #iremos pegar apenas numeros entre 0 e 4 assim teremos que dividir por 4
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    $sinais, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %ecx
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
        loop    _gera_sinal_carta_maquina
            ret

        _gerador_cartas_jogador:
        movl    $3, %ecx                    #numero de cartas que serão geradas devem estar em ecx(instrução loop)
        movl    $cartas_jogador, %ebx
        movl    $cartas_sortiadas, %edx
        _gera_carta_jogador:
        pushl   %edx
        pushl   %ecx                        #backup %ecx e %ebx que é o vetor
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $10, %ebx                   #iremos pegar apenas numeros entre 0 e 9 assim teremos que dividir por 10
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    $cartas, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %ecx
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
        loop    _gera_carta_jogador
            ret

        _gera_vira:
        movl    $vira, %ebx
        movl    $cartas_sortiadas, %edx
        addl    $24, %edx
        pushl   %edx
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $10, %ebx                   #iremos pegar apenas numeros entre 0 e 9 assim teremos que dividir por 10
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    %eax, manilha
        addl    $7, manilha
        cmpl    $63, manilha
        jg      _manilha_eh_quatro
        _retorno_manilha_eh_quatro:
        movl    $cartas, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
            ret
        _manilha_eh_quatro:
        movl    $0, manilha
        jmp     _retorno_manilha_eh_quatro

        _gera_sinal_vira:
        movl    $sinal_vira, %ebx
        movl    $sinais_sortiados, %edx
        addl    $24, %edx
        pushl   %edx
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $4, %ebx                   #iremos pegar apenas numeros entre 0 e 9 assim teremos que dividir por 10
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    $sinais, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
            ret

        _gerador_sinais_cartas_jogador:
        movl    $3, %ecx                    #numero de sinais que serão geradas devem estar em ecx(instrução loop)
        movl    $sinais_cartas_jogador, %ebx
        movl    $sinais_sortiados, %edx
        _gera_sinal_carta_jogador:
        pushl   %edx
        pushl   %ecx                        #backup %ecx e %ebx que é o vetor
        pushl   %ebx
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $4, %ebx                   #iremos pegar apenas numeros entre 0 e 9 assim teremos que dividir por 10
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 9
        movl    %edx, %eax                  #salvo o random em %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl    $sinais, %edi               #salvo vetor em %edi para movimentar
        addl    %eax, %edi                  #movimento o vetor de acordo com a posição que foi calculada (7 * random) = posição do vetor
        addl    $8, %esp                    #limpando a pilha
        popl    %ebx                        #recupegando os backup s
        popl    %ecx
        popl    %edx
        movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
        addl    $7, %ebx
        movl    %eax, (%edx)
        addl    $4, %edx
        loop    _gera_sinal_carta_jogador
            ret


        _imprime_vira:
        pushl   $print_vira
        call    printf
        addl    $4, %esp
        movl    $vira, %ebx
        movl    $sinal_vira, %edi
        pushl   %ebx
        pushl   %edi
        pushl   (%ebx)
        pushl   $print_palavra
        call    printf
        pushl   (%edi)
        pushl   $print_palavra
        call    printf
        addl    $16, %esp
        popl    %edi
        popl    %ebx
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
            ret


        _imprime_cartas_maquina:
        pushl   $print_cartas_computador
        call    printf
        addl    $4, %esp
        movl    $3, %ecx
        movl    $cartas_maquina, %ebx
        movl    $sinais_cartas_maquina, %edi
        _impressao_cartas_maquina:
        pushl   %ecx
        pushl   %ebx
        pushl   %edi
        pushl   (%ebx)
        pushl   $print_palavra
        call    printf
        pushl   (%edi)
        pushl   $print_palavra
        call    printf
        addl    $16, %esp
        popl    %edi
        popl    %ebx
        popl    %ecx
        addl    $7, %ebx
        addl    $7, %edi
        loop    _impressao_cartas_maquina
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
            ret

        _imprime_cartas_jogador:
        pushl   $print_cartas_jogador
        call    printf
        addl    $4, %esp
        movl    $3, %ecx
        movl    $cartas_jogador, %ebx
        movl    $sinais_cartas_jogador, %edi
        _impressao_cartas_jogador:
        pushl   %ecx
        pushl   %ebx
        pushl   %edi
        pushl   (%ebx)
        pushl   $print_palavra
        call    printf
        pushl   (%edi)
        pushl   $print_palavra
        call    printf
        addl    $16, %esp
        popl    %edi
        popl    %ebx
        popl    %ecx
        addl    $7, %ebx
        addl    $7, %edi
        loop    _impressao_cartas_jogador
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
            ret

        _imprime_cartas_sortiadas:
        pushl   $print_cartas_sortiadas
        call    printf
        addl    $4, %esp
        movl    $7, %ecx
        movl    $cartas_sortiadas, %ebx
        _impressao_cartas_sortiadas:
        pushl   %ecx
        pushl   %ebx
        pushl   (%ebx)
        pushl   $print_numero
        call    printf
        addl    $8, %esp
        popl    %ebx
        addl    $4, %ebx
        popl    %ecx
        loop    _impressao_cartas_sortiadas
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
            ret

        _imprime_status_cartas:
        pushl   $print_status_cartas
        call    printf
        addl    $4, %esp
        movl    $6, %ecx
        movl    $status_cartas, %ebx
        _impressao_status_cartas:
        pushl   %ecx
        pushl   %ebx
        pushl   (%ebx)
        pushl   $print_numero
        call    printf
        addl    $8, %esp
        popl    %ebx
        addl    $4, %ebx
        popl    %ecx
        loop    _impressao_status_cartas
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
        ret

        _imprime_rodadas:
        pushl   $print_rodadas
        call    printf
        addl    $4, %esp
        movl    $3, %ecx
        movl    $rodadas, %ebx
        _impressao_rodadas:
        pushl   %ecx
        pushl   %ebx
        pushl   (%ebx)
        pushl   $print_numero
        call    printf
        addl    $8, %esp
        popl    %ebx
        addl    $4, %ebx
        popl    %ecx
        loop    _impressao_rodadas
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
        ret

        _imprime_sinais_cartas_sortiadas:
        pushl   $print_sinais_sortiados
        call    printf
        addl    $4, %esp
        movl    $7, %ecx
        movl    $sinais_sortiados, %ebx
        _impressao_sinais_cartas_sortiadas:
        pushl   %ecx
        pushl   %ebx
        pushl   (%ebx)
        pushl   $print_numero
        call    printf
        addl    $8, %esp
        popl    %ebx
        addl    $4, %ebx
        popl    %ecx
        loop    _impressao_sinais_cartas_sortiadas
        pushl   $quebra_linha
        call    printf
        addl    $4, %esp
            ret
        ##### O valor a ser comparado deve estar em %eax
        _proximo_elemento_vetor:
        addl    $1, contador
        movl    $0, %edx
        movl    contador, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    $cartas_sortiadas, %edi
        addl    %eax, %edi
        movl    (%edi), %eax
        addl    $4, %edi
        pushl   %eax
        movl    contador, %eax
        movl    $6, %ecx
        subl    %eax, %ecx
        popl    %eax
        jmp     _loop_verifica_carta

        _verifica_carta:
        movl    $6, %ecx
        movl    $cartas_sortiadas, %edi
        movl    (%edi), %eax
        addl    $4, %edi
        _loop_verifica_carta:
        movl    (%edi), %ebx
        cmpl    %eax, %ebx
        pushl   %eax
        pushl   %ebx
        pushl   %ecx
        pushl   %edx
        pushl   %edi
        je      _verifica_sinal
        _sinal_verificado:
        popl   %edi
        popl   %edx
        popl   %ecx
        popl   %ebx
        popl   %eax
        addl    $4, %edi
        loop    _loop_verifica_carta
        movl    contador, %eax
        movl    $5, %ebx
        cmpl    %eax, %ebx
        jne     _proximo_elemento_vetor
        cmpl    %eax, %eax
        acabou:
        ret

        _verifica_sinal:
        movl    contador, %eax
        movl    %ecx, %edi
        pushl   %eax
        movl    %edi, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    %eax, %ebx
        popl    %edi
        subl    $4, %ebx
        pushl   %ebx
        movl    %edi, %eax
        movl    $4, %ebx
        mull    %ebx
        pushl   %eax
        movl    $sinais_sortiados, %edi
        popl    %eax
        popl    %ebx
        addl    %eax, %edi
        pushl   (%edi)
        subl    %eax, %edi
        addl    $24, %edi
        subl    %ebx, %edi
        pushl   (%edi)
        popl    %eax
        popl    %ebx
        cmpl    %eax, %ebx
        jne     _sinal_verificado
        addl    $24, %esp
        jmp      _sortiando_as_cartas

    _verifica_tem_vencedor:
        movl $12, %eax
        movl pontos_jogador, %ebx
        cmpl %eax, %ebx
        jge _jogador_ganhou

        movl pontos_computador, %ebx
        cmpl %eax, %ebx
        jge _computador_ganhou
        ret

    _jogador_ganhou:
        pushl   $print_jogador_ganhou
        call    printf
        addl    $4, %esp #limpa a pilha
        jmp     finalizar_programa

    _computador_ganhou:
        pushl   $print_computador_ganhou
        call    printf
        addl    $4, %esp #limpa a pilha
        jmp     finalizar_programa

    _reiniciar_variaveis:
    movl    $0, contador
    movl    $status_cartas, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, rodada
    movl    $0, rodadas_vencidas_j
    movl    $0, rodadas_vencidas_m
    movl    $rodadas, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $0, (%eax)
    addl    $4, %eax
    movl    $1, pontos_mao
    movl    $0, ultimo_truco
	movl	$1, vez_de_quem
    ret

    _inicia_mao:
        _sortiando_as_cartas:

        call _reiniciar_variaveis

        call _gerador_cartas_jogador

        call _gerador_sinais_cartas_jogador

        call _gerador_cartas_maquina

        call _gerador_sinais_cartas_maquina

        call _gera_vira

        call _gera_sinal_vira

        call _verifica_carta

        call _imprime_cartas_maquina

        call _imprime_cartas_jogador

        #call _imprime_cartas_sortiadas

        #call _imprime_sinais_cartas_sortiadas

        call _imprime_vira

        call _imprime_pontos

        call _verifica_tem_vencedor

        call _imprime_acao_mao

        ret

    _imprime_acao_mao:
        call    _verifica_vencedor_rodada
        addl    $1, rodada
		
		movl    $1, vez_de_quem
		
        movl    rodada, %edi
        pushl   %edi
        pushl   $print_rodada
        call    printf
        addl    $8, %esp
        call    _verifica_rodada_acabou
        cmpl    $1, %eax
        je      _inicia_mao
		
		call _print_opcoes_jogada
		
        _opcao_errada:
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        movl    $rgeral, %eax
        cmpl    $1, (%eax)
        je      _menu_cartas
        cmpl    $2, (%eax)
        je      _menu_esconde_cartas
        cmpl    $3, (%eax)
        je      _menu_pede_truco_jogador
        pushl   $opcao_invalida
        call    printf
        addl    $4, %esp
        jmp     _opcao_errada
        ret

        _menu_cartas:
		movl 	$0, escondeu_carta
        pushl   $print_escolhe_cartas
        call    printf
        addl    $4, %esp
        movl    $status_cartas, %edi
        cmpl    $1, (%edi)
        jne    _menu_cartas_print_carta_um
        _carta_dois:
        addl    $4, %edi
        cmpl    $1, (%edi)
        jne     _menu_cartas_print_carta_dois
        _carta_tres:
        addl    $4, %edi
        cmpl   $1, (%edi)
        jne     _menu_cartas_print_carta_tres
        _menu_cartas_retorno:
        pushl   $quebra_linha
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        cmpl   $1, rgeral
        je      _opcao_valida
        cmpl    $2, rgeral
        je      _opcao_valida
        cmpl    $3, rgeral
        je      _opcao_valida
        pushl   $opcao_invalida
        call    printf
        addl    $4, %esp
        jmp     _menu_cartas_retorno
        _opcao_valida:
        call    _jogador_escolhe_carta
        pushl   %eax
        call    _printa_carta_jogada_jogador
		
		call	_verifica_pede_truco_maquina

        call    _computador_escolhe_carta
        pushl   %edi
        call    _printa_carta_jogada_maquina
        popl    %edi
        popl    %eax
        call    _verifica_carta_vencedora
        ret

        #pega a opção digitada pelo menu e altera o vetor de status das cartas. Retorna o indice da carta em cartas_sortiadas em %eax
        _jogador_escolhe_carta:
        movl    $rgeral, %eax
        movl    (%eax), %eax
        movl    $1,  %edx
        subl    %edx, %eax
        movl    $0, %edx                    #limpando edx
        movl    $4, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        movl   $status_cartas, %edi
        addl    %eax, %edi
        movl    $1, (%edi)
        ret

        #printa a carta jogada do jogador, a carta deve ser uma das opções do menu(1,2,3) e deve ser armazenada em rgeral
        _printa_carta_jogada_jogador:
        movl    $rgeral, %eax
        movl    (%eax), %eax
        movl    $1,  %edx
        subl    %edx, %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        pushl   %eax
        movl    $sinais_cartas_jogador, %edi
        addl    %eax, %edi
        pushl   (%edi)
        movl    $cartas_jogador, %edi
        addl    %eax, %edi
        pushl   (%edi)
        pushl   $jogador_jogou_carta
        call    printf
        addl    $12, %esp
        popl    %eax
        ret
		
		#printa a carta jogada do jogador, a carta deve ser uma das opções do menu(1,2,3) e deve ser armazenada em rgeral
        _printa_carta_escondida_jogador:
        movl    $rgeral, %eax
        movl    (%eax), %eax
        movl    $1,  %edx
        subl    %edx, %eax
        movl    $0, %edx                    #limpando edx
        movl    $7, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        pushl   %eax
        movl    $sinais_cartas_jogador, %edi
        addl    %eax, %edi
        pushl   (%edi)
        movl    $cartas_jogador, %edi
        addl    %eax, %edi
        pushl   (%edi)
        pushl   $jogador_escondeu_carta
        call    printf
        addl    $12, %esp
        popl    %eax
        ret
		
		

        #printa a carta jogada da maquina, a carta deve ser radomica e um indice do vetor e deve ser armazenada em %eax
        _printa_carta_jogada_maquina:
        movl    $sinais_cartas_maquina, %edi
        addl    %eax, %edi
        pushl   (%edi)
        movl    $cartas_maquina, %edi
        addl    %eax, %edi
        pushl   (%edi)
        pushl   $maquina_jogou_carta
        call    printf
        addl    $12, %esp
        ret

        _menu_cartas_print_carta_um:
        movl    $sinais_cartas_jogador, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_um
        call    printf
        addl    $12, %esp
        jmp     _carta_dois

        _menu_cartas_print_carta_dois:
        movl    $sinais_cartas_jogador, %eax
        addl    $7, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        addl    $7, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_dois
        call    printf
        addl    $12, %esp
        jmp     _carta_tres

        _menu_cartas_print_carta_tres:
        movl    $sinais_cartas_jogador, %eax
        addl    $14, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        addl    $14, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_tres
        call    printf
        addl    $12, %esp
        jmp     _menu_cartas_retorno

        #gera um número randomico e joga uma carta do computador. Retorna o indice em cartas_sortiadas em %edi
        _computador_escolhe_carta:
        movl    rodada, %ebx
        cmpl    $1, %ebx
        je      _rodada_aleatoria
        jmp     _escolhe_maior_carta
        _rodada_aleatoria:
        call    rand                        #gera numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $3, %ebx                    #iremos pegar apenas numeros entre 0 e 2 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx
        cmpl    $0,%edx
        je      _jogar_carta_um_computador
        cmpl    $1, %edx
        je      _jogar_carta_dois_computador
        cmpl    $2, %edx
        je      _jogar_carta_tres_computador
        _carta_escolhida:
        popl    %edi
        pushl   %eax
        movl    %edi, %eax
        movl    $0, %edx                    #limpando edx
        movl    $4, %ebx                    #multiplico por 7 pois é o número de caracteres nos vetores
        mull    %ebx
        addl    $12, %eax
        movl    %eax, %edi
        popl    %eax
        ret
        _escolhe_maior_carta:
        movl    $status_cartas, %edi
        addl    $12, %edi
        pushl   %edi
        cmpl    $0, (%edi)
        je      _verificar_carta_um
        popl    %edi
        addl    $4, %edi
        cmpl    $0, (%edi)
        je      _verificar_carta_dois
        pushl   $2
        jmp     _jogar_carta_tres_computador
        _verificar_carta_um:
        addl    $4, %esp
        addl    $4, %edi
        cmpl    $0, (%edi)
        je      _carta_dois_valida
        addl    $4, %edi
        cmpl    $0, (%edi)
        je      _carta_tres_valida
        pushl   $0
        jmp     _jogar_carta_um_computador
        _carta_dois_valida:
        movl    $cartas_sortiadas, %edi
        addl    $12, %edi
        pushl   (%edi)
        addl    $4, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        je      _jogar_carta_sinal_maior_um
        pushl   $0
        jl      _jogar_carta_um_computador
        addl    $4, %esp
        pushl   $1
        jmp     _jogar_carta_dois_computador
        _jogar_carta_sinal_maior_um:
        movl    $sinais_sortiados, %edi
        addl    $12, %edi
        pushl   (%edi)
        addl    $4, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        pushl   $0
        jl      _jogar_carta_um_computador
        addl    $4, %esp
        pushl   $1
        jmp     _jogar_carta_dois_computador
        _carta_tres_valida:
        movl    $cartas_sortiadas, %edi
        addl    $12, %edi
        pushl   (%edi)
        addl    $8, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        je      _jogar_carta_sinal_maior_dois
        pushl   $0
        jl      _jogar_carta_um_computador
        addl    $4, %esp
        pushl   $2
        jmp     _jogar_carta_tres_computador
        _jogar_carta_sinal_maior_dois:
        movl    $sinais_sortiados, %edi
        addl    $12, %edi
        pushl   (%edi)
        addl    $8, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        pushl   $0
        jl      _jogar_carta_um_computador
        addl    $4, %esp
        pushl   $1
        jmp     _jogar_carta_dois_computador
        _verificar_carta_dois:
        addl    $4, %edi
        cmpl    $0, (%edi)
        je      _carta_tres_valida_dois
        pushl   $1
        jmp     _jogar_carta_dois_computador
        _carta_tres_valida_dois:
        movl    $cartas_sortiadas, %edi
        addl    $16, %edi
        pushl   (%edi)
        addl    $4, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        je      _jogar_carta_sinal_maior_tres
        pushl   $1
        jl      _jogar_carta_dois_computador
        addl    $4, %esp
        pushl   $2
        jmp     _jogar_carta_tres_computador
        _jogar_carta_sinal_maior_tres:
        movl    $sinais_sortiados, %edi
        addl    $16, %edi
        pushl   (%edi)
        addl    $4, %edi
        popl    %eax
        cmpl    %eax, (%edi)
        pushl   $1
        jl      _jogar_carta_dois_computador
        addl    $4, %esp
        pushl   $2
        jmp     _jogar_carta_tres_computador

        #verifica quais das duas cartas é a vencedora, cartas devem estar em %eax(Jogador) e %edi(Maquina), sendo elas o indice no vetor das cartas sortiadas
        _verifica_carta_vencedora:
		cmpl	$1, escondeu_carta
		je 		_jogador_perdeu_tento
        movl    manilha, %edx
        movl    $cartas_sortiadas, %ebx
        addl    %eax, %ebx
        movl    (%ebx), %eax
        movl    $cartas_sortiadas, %ebx
        addl    %edi, %ebx
        movl    (%ebx), %edi
        cmpl    %edx, %eax
        je      _primeira_carta_manilha
        cmpl    %edx, %edi
        je      _segunda_carta_manilha
        cmpl    %eax, %edi
        je      _empatou
        jl      _computador_perdeu_tento
        jmp     _jogador_perdeu_tento
        _primeira_carta_manilha:
        cmpl    %edx, %edi
        je      _primeira_e_segunda_cartas_manilha
        jmp     _computador_perdeu_tento
        _segunda_carta_manilha:
        jmp     _jogador_perdeu_tento
        _primeira_e_segunda_cartas_manilha:
        movl    $sinais_sortiados, %ebx
        addl    %eax, %ebx
        movl    (%ebx), %eax
        movl    $sinais_sortiados, %ebx
        addl    %edi, %ebx
        movl    (%ebx), %edi
        cmpl    %edx, %eax
        jl      _jogador_perdeu_tento
        jmp     _computador_perdeu_tento

        _empatou:
        pushl   $print_empate
        call    printf
        addl    $4, %esp
        cmpl    $1, rodada
        je      _empatou_primeira_rodada
        cmpl    $2, rodada
        je      _empatou_segunda_rodada
        cmpl    $3, rodada
        je      _empatou_terceira_rodada
        jmp     _imprime_acao_mao

        _empatou_primeira_rodada:
        movl    $rodadas, %edi
        movl    $3, (%edi)
        jmp     _imprime_acao_mao

        _empatou_segunda_rodada:
        pushl   $print_empate_segunda_rodada
        call    printf
        addl    $4, %esp
        movl    $rodadas, %edi
        addl    $4, %edi
        movl    $3, (%edi)
        subl    $4, %edi
        cmpl    $1, (%edi)
        je      _computador_perdeu_tento
        cmpl    $2, (%edi)
        je      _jogador_perdeu_tento

        _empatou_terceira_rodada:
        pushl   $print_empate_terceira_rodada
        call    printf
        addl    $4, %esp
        movl    $rodadas, %edi
        addl    $8, %edi
        movl    $3, (%edi)
        subl    $8, %edi
        cmpl    $1, (%edi)
        je      _computador_perdeu_tento
        cmpl    $2, (%edi)
        je      _jogador_perdeu_tento






		_menu_esconde_cartas:
		movl 	$1, escondeu_carta
        pushl   $print_escolhe_cartas_esconde
        call    printf
        addl    $4, %esp
        movl    $status_cartas, %edi
        cmpl    $1, (%edi)
        jne    _menu_esconde_cartas_print_carta_um
        _carta_dois_esconde:
        addl    $4, %edi
        cmpl    $1, (%edi)
        jne     _menu_esconde_cartas_print_carta_dois
        _carta_tres_esconde:
        addl    $4, %edi
        cmpl   $1, (%edi)
        jne     _menu_esconde_cartas_print_carta_tres
        _menu_esconde_cartas_retorno:
        pushl   $quebra_linha
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        cmpl   $1, rgeral
        je      _opcao_valida_menu_esconde
        cmpl    $2, rgeral
        je      _opcao_valida_menu_esconde
        cmpl    $3, rgeral
        je      _opcao_valida_menu_esconde
        pushl   $opcao_invalida
        call    printf
        addl    $4, %esp
        jmp     _menu_esconde_cartas_retorno
        _opcao_valida_menu_esconde:
        call    _jogador_escolhe_carta
        pushl   %eax
        call    _printa_carta_escondida_jogador
		
		call	_verifica_pede_truco_maquina

        call    _computador_escolhe_carta
        pushl   %edi
        call    _printa_carta_jogada_maquina
        popl    %edi
        popl    %eax
        call    _verifica_carta_vencedora
        ret
		
		_menu_esconde_cartas_print_carta_um:
        movl    $sinais_cartas_jogador, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_um
        call    printf
        addl    $12, %esp
        jmp     _carta_dois_esconde

        _menu_esconde_cartas_print_carta_dois:
        movl    $sinais_cartas_jogador, %eax
        addl    $7, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        addl    $7, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_dois
        call    printf
        addl    $12, %esp
        jmp     _carta_tres_esconde

        _menu_esconde_cartas_print_carta_tres:
        movl    $sinais_cartas_jogador, %eax
        addl    $14, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        addl    $14, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_tres
        call    printf
        addl    $12, %esp
        jmp     _menu_esconde_cartas_retorno
		
		_verifica_pede_truco_maquina:
		movl	$2, vez_de_quem
		
		cmpl $2, ultimo_truco
        je segue_jogada_computador
		
        cmpl $11, pontos_computador
        je segue_jogada_computador
		
        cmpl $11, pontos_jogador
        je segue_jogada_computador
		
        cmpl $12, pontos_mao
        je segue_jogada_computador
		
		#Calcula chance da maquina nao pedir truco
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp #limpa pilha
		
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      segue_jogada_computador	#Nao vai pedir truco
		
		cmpl    $1, pontos_mao
        je      _menu_pede_truco_maquina	#vai no truco
		
		cmpl    $3, pontos_mao
        je      _menu_responde_seis_jogador	#vai no seis
		
		cmpl    $6, pontos_mao
        je      _menu_responde_nove_jogador	#vai no nove
		
		cmpl    $9, pontos_mao
        je      _menu_responde_doze_jogador	#vai no doze
		
		segue_jogada_computador:
		ret

        _menu_pede_truco_jogador:
        movl    $1, ultimo_truco #Truco está com o computador
		
		cmpl	$3, pontos_mao
		je		_menu_responde_seis_maquina
		
		cmpl	$6, pontos_mao
		je		_menu_responde_nove_maquina
		
		cmpl	$9, pontos_mao
		je		_menu_responde_doze_maquina
		
        #Aqui será calculado se o computador ira correr ou não
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _computador_perdeu_rodada	#Correu do Truco
        #Aqui será calculado se o computador ira pedir seis ou não
        #_menu_aceita_truco_ou_seis_maquina: #Pede seis ou aceita o truco
        movl    $3, pontos_mao				#Move Ponto para Três
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _menu_responde_seis_jogador	#Computador Pediu Seis
        pushl   $print_computador_aceitou
        call    printf
        jmp     _menu_cartas

        _menu_pede_truco_maquina:
        movl    $2, ultimo_truco #Truco está com o computador
        pushl   $print_computador_pediu_truco
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        movl    $rgeral, %eax
		addl	$12, %esp
        cmpl    $3, (%eax)
        je      _jogador_perdeu_rodada #joao
        movl    $3, pontos_mao				#Move Ponto para Três
        cmpl    $2, (%eax)
        je      _menu_responde_seis_maquina
        jmp     segue_jogada_computador


        _menu_responde_seis_jogador: #Entra aqui quando pede seis
        movl    $2, ultimo_truco #Truco está com o computador
        pushl   $print_computador_pediu_seis
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        movl    $rgeral, %eax
        cmpl    $3, (%eax)
        je      _jogador_perdeu_rodada #joao
        addl    $3, pontos_mao #Soma Ponto para Seis
        cmpl    $2, (%eax)
        je      _menu_responde_nove_maquina
        #call    printf
		cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador

        _menu_responde_seis_maquina:
        movl    $1, ultimo_truco #Truco está com o jogador
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _computador_perdeu_rodada
        addl    $3, pontos_mao 				#Soma Ponto para Seis
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _menu_responde_nove_jogador
        pushl   $print_computador_aceitou
        call    printf
		addl	$4, %esp
        cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador

        _menu_responde_nove_maquina:
        #Aqui será calculado se o computador ira correr ou não do nove
        movl    $1, ultimo_truco #joao #Truco está com o jogador
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _computador_perdeu_rodada
        addl    $3, pontos_mao #Soma Ponto para Nove
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _menu_responde_doze_jogador
        pushl   $print_computador_aceitou
        call    printf
		addl	$4, %esp
        cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador

        _menu_responde_nove_jogador:
        movl    $2, ultimo_truco #Truco está com o computador
        pushl    $print_computador_pediu_nove
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        movl    $rgeral, %eax
        cmpl    $3, (%eax)
        je      _jogador_perdeu_rodada
        addl    $3, pontos_mao #Soma Ponto para Nove
        cmpl    $2, (%eax)
        je      _menu_responde_doze_maquina
        cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador

        _menu_responde_doze_jogador:
        movl    $2, ultimo_truco #Truco está com o computador
        pushl   $print_computador_pediu_doze
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        movl    $rgeral, %eax
        cmpl    $2, (%eax)
        je      _jogador_perdeu_rodada
        addl    $3, pontos_mao #Soma Ponto para Doze
        call    printf
        cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador

        _menu_responde_doze_maquina:
        #Aqui será calculado se o computador ira correr ou não do nove
        movl    $1, ultimo_truco #Truco está com o jogador
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
		addl	$8, %esp
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _computador_perdeu_rodada
		addl    $3, pontos_mao #Soma Ponto para Doze
        pushl   $print_computador_aceitou
        call    printf
		addl	$4, %esp
        cmpl	$1,	vez_de_quem
		je 		_menu_cartas
        jmp     segue_jogada_computador



        _computador_perdeu_tento:
        movl    rodada, %eax
        movl    $1, %ebx
        sub     %ebx, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    $rodadas, %edi
        addl    %eax, %edi
        movl    $1, (%edi)
        addl    $1, rodadas_vencidas_j
        pushl   $print_jogador_ganhou_mao
        call    printf
        addl    $4, %esp
        movl    $pontos_computador, %eax
        movl    $pontos_jogador, %ebx
        call    pausa_sistema
        jmp     _imprime_acao_mao

        _jogador_perdeu_tento:
        movl    rodada, %eax
        movl    $1, %ebx
        sub     %ebx, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    $rodadas, %edi
        addl    %eax, %edi
        movl    $2, (%edi)
        addl    $1, rodadas_vencidas_m
        pushl   $print_computador_ganhou_mao
        call    printf
        addl    $4, %esp
        movl    $pontos_computador, %eax
        movl    $pontos_jogador, %ebx
        call    pausa_sistema
        jmp     _imprime_acao_mao


		#joao
		_computador_perdeu_rodada:
        movl    rodada, %eax
        movl    $1, %ebx
        sub     %ebx, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    $rodadas, %edi
        addl    %eax, %edi
        movl    $1, (%edi)
        movl    $2, rodadas_vencidas_j
        pushl   $print_jogador_ganhou_mao
        call    printf
        addl    $4, %esp
        movl    $pontos_computador, %eax
        movl    $pontos_jogador, %ebx
        call    pausa_sistema
        jmp     _imprime_acao_mao

		#joao
        _jogador_perdeu_rodada:
        movl    rodada, %eax
        movl    $1, %ebx
        sub     %ebx, %eax
        movl    $4, %ebx
        mull    %ebx
        movl    $rodadas, %edi
        addl    %eax, %edi
        movl    $2, (%edi)
        movl    $2, rodadas_vencidas_m
        pushl   $print_computador_ganhou_mao
        call    printf
        addl    $4, %esp
        movl    $pontos_computador, %eax
        movl    $pontos_jogador, %ebx
        call    pausa_sistema
        jmp     _imprime_acao_mao

        #função irá marcar a carta um do computador como usada
        _jogar_carta_um_computador:
        movl   $status_cartas, %edi
        addl    $12, %edi
        movl    $1, (%edi)
        movl    $0, %eax
        jmp _carta_escolhida

        #função irá marcar a carta dois do computador como usada
        _jogar_carta_dois_computador:
        movl   $status_cartas, %edi
        addl    $16, %edi
        movl    $1, (%edi)
        movl    $7, %eax
        jmp _carta_escolhida

        #função irá marcar a carta tres do computador como usada
        _jogar_carta_tres_computador:
        movl   $status_cartas, %edi
        addl    $20, %edi
        movl    $1, (%edi)
        movl    $14, %eax
        jmp _carta_escolhida

        _imprime_pontos:
        movl  $pontos_computador, %eax
        movl  $pontos_jogador, %ebx
        pushl (%eax)
        pushl (%ebx)
        pushl $print_pontos
        call  printf
        addl    $12, %esp
        ret

        _verifica_rodada_acabou:
        movl    $status_cartas, %edi
        movl    $6, %ecx
        _verificando_rodada_acabou:
        cmpl    $0, (%edi)
        je      _rodada_nao_acabou
        addl    $4, %edi
        loop    _verificando_rodada_acabou
        jmp     _rodada_acabou
        _rodada_acabou:
        movl    $1, %eax
        ret
        _rodada_nao_acabou:
        movl    $0, %eax
        ret

        _verifica_vencedor_rodada:
        cmpl    $2, rodadas_vencidas_m
        je      _maquina_vencedor_rodada
        cmpl    $2, rodadas_vencidas_j
        je      _jogador_vencedor_rodada
        movl    $rodadas, %edi
        cmpl    $3, (%edi)
        je      _primeira_rodada_empatada
        _retorno_empate:
        ret
        _primeira_rodada_empatada:
        addl    $4, %edi
        cmpl    $1, (%edi)
        je      _jogador_vencedor_rodada
        cmpl    $2, (%edi)
        je      _maquina_vencedor_rodada
        jmp     _retorno_empate

        _jogador_vencedor_rodada:
        movl	pontos_jogador, %eax
        addl    pontos_mao, %eax
        movl	%eax, pontos_jogador
        jmp     _inicia_mao

        _maquina_vencedor_rodada:
        movl	pontos_computador, %eax
        addl    pontos_mao, %eax
        movl	%eax, pontos_computador
        jmp     _inicia_mao

        pausa_sistema:
        pushl   $pause_enter
        call    printf
        pushl   $limpabuf
        call    scanf
        call    getchar
        addl    $8, %esp
        ret
		
		_print_opcoes_jogada:
		cmpl 	$1, ultimo_truco #Jogador não pode pedir truco
		je		print_sem_truco
		cmpl 	$11, pontos_computador #Jogador não pode pedir truco mao de 11
		je		print_sem_truco
		cmpl 	$11, pontos_jogador #Jogador não pode pedir truco mao de 11
		je		print_sem_truco
		cmpl 	$1, pontos_mao
		je		print_com_truco
		cmpl 	$3, pontos_mao
		je		print_com_seis
		cmpl 	$6, pontos_mao
		je		print_com_nove
		cmpl 	$9, pontos_mao
		je		print_com_doze
		print_sem_truco:
        pushl   $print_acao_mao_sem_truco
        call    printf
		addl    $4, %esp
		jmp		retorno_print_opcao
		print_com_truco:
		pushl   $print_acao_mao_com_truco
        call    printf
		addl    $4, %esp
		jmp		retorno_print_opcao
		print_com_seis:
		pushl   $print_acao_mao_com_seis
        call    printf
		addl    $4, %esp
		jmp		retorno_print_opcao
		print_com_nove:
		pushl   $print_acao_mao_com_nove
        call    printf
		addl    $4, %esp
		jmp		retorno_print_opcao
		print_com_doze:
		pushl   $print_acao_mao_com_doze
        call    printf
		addl    $4, %esp
		retorno_print_opcao:
		ret


    .globl _start
        _start:

        _bem_vindo:
        pushl   $msg_bem_vindo
        call    printf
        #pushl   $pergunta_inicial
        #call    printf
        #call    getchar
        #addl    $8, %esp #limpa a pilha
        #cmpl    $'s', %eax
        #je finalizar_programa
        #cmpl    $'S', %eax
        #je finalizar_programa

        pushl   $quebra_linha
        call    printf

        call _gerador_semente_aleatoria

        call _inicia_mao

        finalizar_programa:
        pushl   $quebra_linha
        call    printf
        pushl   $0
        call    exit
