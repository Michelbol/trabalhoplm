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
        print_sinais_sortiados:         .asciz "Os sinais sortiados foram:  "
        print_nao_escolheu_nada:        .asciz "Não escolheu nenhuma opção "
        print_escolheu_opcao_um:        .asciz "Escolheu a opção um"
        print_escolheu_opcao_dois:      .asciz "Escolheu opção dois"
        print_escolheu_opcao_tres:      .asciz "Escolheu opção tres"
        print_carta_vencedora_sinal:    .asciz "As cartas são iguais, verificando o sinal agora\n"
        print_jogador_vencedor:         .asciz "O jogador ganhou!"
        print_maquina_vencedora:        .asciz "A maquina ganhou!"
        print_rodada:                   .asciz "Estamos na rodada: %d\n"
        teste:                          .asciz "cheguei aqui"
        cartas_corretas:                .asciz "Todas as cartas estao corretas!"
        contador_em:                    .asciz "Contador em: %d\n"
        quebra_linha:                   .asciz "\n"
        print_cartas_iguais:            .asciz "As cartas informadas são iguais: %s, %s \n"
        print_iguais:                   .asciz " %d e %d"
        print_diferentes:               .asciz "Estas cartas são diferentes!"
        print_comparando:               .asciz "Comparando %d e %d\n"
        print_gerou_certo:              .asciz "deu certo caraio!!!!!!!!!!!!!!!!\n"
        jogador_jogou_carta:            .asciz "Você jogou a carta:      %s de %s\n"
        maquina_jogou_carta:            .asciz "A máquina jogou a carta: %s de %s\n"
        print_jogador_ganhou:           .asciz "O jogador ganhou!"
        print_computador_ganhou:        .asciz "O computador ganhou!"
        print_acao_mao1:                .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Trucar!\n"
        print_acao_mao11:               .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n"
        print_escolhe_cartas:           .asciz "Escolha uma das cartas abaixo:\n"
        print_escolhe_carta_um:         .asciz "Carta [1]: %s %s\n"
        print_escolhe_carta_dois:       .asciz "Carta [2]: %s %s\n"
        print_escolhe_carta_tres:       .asciz "Carta [3]: %s %s"
        print_jogador_ganhou_mao:       .asciz "O jogador ganhou a mao!!\n"
        print_computador_ganhou_mao:    .asciz "O computador ganhou a mao!!\n"
        print_jogador_ganhou_tento:     .asciz "O jogador ganhou o tento!\n"
        print_computador_ganhou_tento:  .asciz "O computador ganhou o tento!\n"
        print_computador_pediu_seis:    .asciz "O computador pediu seis!\n[1] Pedir Nove\n[2] Correr\n"
        print_computador_aceitou:       .asciz "O computador aceitou o pedido!\n"
        print_pontos:                   .asciz "\nPONTOS:\nJOGADOR: %d\nCOMPUTADOR: %d\n\n\n\n"
        print_escolhe_cartas_esconde:   .asciz "Escolha uma das cartas abaixo para jogar escondido:\n" #joao
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

        cartas_maquina:         .space 28
        sinais_cartas_maquina:  .space 28
        cartas_jogador:         .space 28
        sinais_cartas_jogador:  .space 28
        cartas_sortiadas:       .space 32
        sinais_sortiados:       .space 32
        vira:                   .space 14
        sinal_vira:             .space 14

        status_cartas:  .int 0,0,0,0,0,0 # 0 = não jogada, 1 = jogada
        rodadas:        .int 0,0,0 #0 = nao jogada, 1 = jogador, 2 = maquina

        sinal_manilha: .asciz ""
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

        #call _imprime_cartas_maquina

        call _imprime_cartas_jogador

        #call _imprime_cartas_sortiadas

        #call _imprime_sinais_cartas_sortiadas

        call _imprime_vira

        call _imprime_pontos

        call _verifica_tem_vencedor

        call _imprime_acao_mao

        ret

    _imprime_acao_mao:
        addl    $1, rodada
        movl    $1, pontos_mao
        movl    rodada, %edi
        pushl   %edi
        pushl   $print_rodada
        call    printf
        addl    $8, %esp
        call    _verifica_rodada_acabou
        cmpl    $1, %eax
        je      _inicia_mao
        pushl   $print_acao_mao1
        call    printf
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
        ret

        _menu_cartas:
        pushl   $print_escolhe_cartas
        call    printf
        addl    $4, %esp
        movl    $status_cartas, %edi
        cmpl   $1, (%edi)
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
        call    _jogador_escolhe_carta
        pushl   %eax
        call    _printa_carta_jogada_jogador
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
        pushl   $carta_dois_valida_carta_tres_tb
        call    printf
        addl    $4, %esp
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
        movl    $cartas_sortiadas, %ebx
        addl    %eax, %ebx
        movl    (%ebx), %eax
        movl    $cartas_sortiadas, %ebx
        addl    %edi, %ebx
        movl    (%ebx), %edi
        cmpl    %eax, %edi
        je      _verificar_sinal_carta_vencedora
        jl      _computador_perdeu_mao
        jmp     _jogador_perdeu_mao

        _verificar_sinal_carta_vencedora:
        pushl   $print_carta_vencedora_sinal
        call    printf
        addl    $4, %esp
        call    pausa_sistema
        jmp     _imprime_acao_mao

        _menu_esconde_cartas:
        pushl   $print_escolhe_cartas_esconde
        call    printf
        addl    $4, %esp
        movl    $cartas_sortiadas, %edi
        cmpl    $-1, (%edi)
        jne     _menu_esconde_cartas_print_carta_um
        _esconde_carta_dois:
        addl    $4, %edi
        cmpl    $-1, (%edi)
        jne     _menu_esconde_cartas_print_carta_dois
        _esconde_carta_tres:
        addl    $4, %edi
        cmpl    $-1, (%edi)
        jne     _menu_esconde_cartas_print_carta_tres
        _menu_esconde_cartas_retorno:
        ret

        _menu_esconde_cartas_print_carta_um:
        movl    $sinais_cartas_jogador, %eax
        pushl   (%eax)
        movl    $cartas_jogador, %eax
        pushl   (%eax)
        pushl   $print_escolhe_carta_um
        call    printf
        addl    $12, %esp
        jmp     _esconde_carta_dois

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
        jmp     _esconde_carta_tres

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

        _menu_pede_truco_jogador:
        #Aqui será calculado se o computador ira correr ou não
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _computador_perdeu_mao
        #Aqui será calculado se o computador ira pedir seis ou não
        _menu_pede_seis_jogador:
        addl    $2, pontos_mao
        call    rand                        #gera numero randomico
        pushl   %eax                        #eax contem o numero randomico
        movl    $0, %edx                    #limpando edx
        movl    $2, %ebx                    #iremos pegar apenas numeros entre 0 e 1 assim teremos que dividir por 2
        divl    %ebx
        pushl   %edx                        #pegando o resto da divisao como aleatorio entre 0 e 2
        cmpl    $0, %edx                    #50%  de chance de ser 0
        je      _menu_responde_seis_jogador
        pushl   $print_computador_aceitou
        call    printf
        jmp     _menu_cartas

        _menu_responde_seis_jogador:
        pushl   $print_computador_pediu_seis
        call    printf
        pushl   $rgeral
        pushl   $formato_numero
        call    scanf
        addl    $12, %esp
        movl    $rgeral, %eax
        cmpl    $1, (%eax)
        je      _menu_pede_nove_jogador
        cmpl    $2, (%eax)
        je      _jogador_perdeu_mao
        _menu_pede_nove_jogador:
        jmp     finalizar_programa


        _computador_perdeu_mao:
        movl    pontos_mao, %eax
        addl    %eax, pontos_jogador
        #movl    $rodada, %eax
        #movl    $1, %ebx
        #sub     %ebx, %eax
        #movl    $4, %ebx
        #mull    %ebx
        #movl    rodadas, %edi
        #addl    %eax, %edi
        #movl    $2, (%edi)
        pushl   $print_jogador_ganhou_mao
        call    printf
        addl    $4, %esp
        movl    $pontos_computador, %eax
        movl    $pontos_jogador, %ebx
        call    pausa_sistema
        jmp     _imprime_acao_mao

        _jogador_perdeu_mao:
        movl    pontos_mao, %eax
        addl    %eax, pontos_computador
        #movl    $rodada, %eax
        #movl    $1, %ebx
        #sub     %ebx, %eax
        #movl    $4, %ebx
        #mull    %ebx
        #movl    rodadas, %edi
        #addl    %eax, %edi
        #movl    $1, (%edi)
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

        pausa_sistema:
        pushl   $pause_enter
        call    printf
        pushl   $limpabuf
        call    scanf
        call    getchar
        addl    $8, %esp
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
        pushl   $print_gerou_certo
        call    printf
        pushl   $0
        call    exit
