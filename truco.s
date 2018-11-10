.section .data
    msg_bem_vindo: .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n ===========================================================\n"
    pergunta_inicial: .asciz "Você deseja [i]niciar o Jogo ou [s]air?\n"
    msg_cartas: .asciz "Suas cartas são: \n"
    msg_carta:  .asciz "                 %s de %s\n"
    tempo: .int 4
    mostra_tempo: .asciz "\nSemente Aleatoria: Tempo em Segundos = %d\n"
    mostra_randomico: .asciz "\nNumero Gerado: %d\n"
    mostra_randomico_13: .asciz "\Numero Gerado no maximo 13: %d\n"
    print_numero: .asciz "  %d  "
    print_palavra: .asciz " %s  "
    print_cartas_jogador: .asciz "As cartas da sua mão são:"
    print_cartas_computador: .asciz "As cartas do computador:"
    print_vira: .asciz "A vira eh: "
    print_cartas_sortiadas: .asciz "As cartas sortiadas foram:  "
    print_sinais_sortiados: .asciz "Os sinais sortiados foram:  "
    print_nao_escolheu_nada: .asciz "Não escolheu nenhuma opção "
    print_escolheu_opcao_um: .asciz "Escolheu a opção um"
    print_escolheu_opcao_dois: .asciz "Escolheu opção dois"
    print_escolheu_opcao_tres: .asciz "Escolheu opção tres"
    teste: .asciz "cheguei aqui"
    quebra_linha: .asciz "\n"
    print_cartas_iguais: .asciz "As cartas informadas são iguais: %s, %s \n"
    contador: .int 0
    jogador_jogou_carta: .asciz "Você jogou a carta %s de %s\n"
    maquina_jogou_carta: .asciz "A máquina jogou a carta %s de %s\n"
    print_iguais: .asciz "Estas cartas são iguais! %d e %d"
    print_diferentes: .asciz "Estas cartas são diferentes!"
    print_comparando: .asciz "Comparando %d e %d\n"
    print_gerou_certo: .asciz "deu certo caraio!!!!!!!!!!!!!!!!\n"
    rgeral: .int 0
    round: .int 0

    cartas_maquina: .space 28
    sinais_cartas_maquina: .space 28
    cartas_jogador: .space 28
    sinais_cartas_jogador: .space 28

    print_jogador_ganhou: .asciz "O jogador ganhou!"
    print_computador_ganhou: .asciz "O computador ganhou!"

    print_acao_mao1: .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n[3] Trucar!\n"
    print_acao_mao11: .asciz "Digite:\n[1] Jogar uma Carta\n[2] Esconder uma Carta\n"
    print_escolhe_cartas: .asciz "Escolha uma das cartas abaixo:\n"
    print_escolhe_carta_um: .asciz "Carta [1]: %s %s\n"
    print_escolhe_carta_dois: .asciz "Carta [2]: %s %s\n"
    print_escolhe_carta_tres: .asciz "Carta [3]: %s %s"

    pontos_mao: .int 0
    pontos_jogador: .int 0
    pontos_computador: .int 0

    cartas: .asciz "4     ", "5     ", "6     ", "7     ", "Dama  ", "Valete", "Reis  ", "As    ", "2     ", "3     "
    sinais: .asciz "Ouros ", "Espada", "Copas ", "Paus  "
    cartas_sortiadas: .space 32
    sinais_sortiados: .space 32
    manilha: .int 0
    sinal_manilha: .asciz ""
    vira: .space 14
    sinal_vira: .space 14
    cmp_carta1: .asciz ""
    cmp_carta2: .asciz ""
    cmp_carta3: .asciz ""
    cmp_sinal1: .asciz ""
    cmp_sinal2: .asciz ""
    cmp_sinal3: .asciz ""

    formato_string: .asciz "%*c"
    formato_numero: .asciz "%d"
    resposta_inicial: .asciz "%s"


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
    addl    $12, %edx
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
    addl    $12, %edx
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
    je      _verifica_sinal
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
    pushl   %edi
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
    je      _sortiando_as_cartas
    addl    $4, %esp
    ret

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

_inicia_mao:
    _sortiando_as_cartas:

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

    call _verifica_tem_vencedor

    movl $1, pontos_mao
    ret

_imprime_acao_mao1:
    pushl $print_acao_mao1
    call printf
    pushl $rgeral
    pushl $formato_numero
    call scanf
    addl    $12, %esp
    movl    $rgeral, %eax
    cmpl    $1, (%eax)
    je      _menu_cartas
    cmpl    $2, (%eax)
    je      _menu_cartas
    cmpl    $3, (%eax)
    je      _menu_cartas
    ret

    _menu_cartas:
    pushl   $print_escolhe_cartas
    call    printf
    addl    $4, %esp
    movl    $cartas_sortiadas, %edi
    cmpl   $-1, (%edi)
    jne    _menu_cartas_print_carta_um
    _carta_dois:
    addl    $4, %edi
    cmpl    $-1, (%edi)
    jne     _menu_cartas_print_carta_dois
    _carta_tres:
    addl    $4, %edi
    cmpl   $-1, (%edi)
    jne     _menu_cartas_print_carta_tres
    _menu_cartas_retorno:
    pushl   $quebra_linha
    call    printf
    pushl   $rgeral
    pushl   $formato_numero
    call    scanf
    addl    $12, %esp
    call    _printa_carta_jogada_jogador
    call    _computador_escolhe_carta
    call    _printa_carta_jogada_maquina
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
    movl    $sinais_cartas_jogador, %edi
    addl    %eax, %edi
    pushl   (%edi)
    movl    $cartas_jogador, %edi
    addl    %eax, %edi
    pushl   (%edi)
    pushl   $jogador_jogou_carta
    call    printf
    addl    $12, %esp
    ret

    #printa a carta jogada da maquina, a carta deve ser radomica e um indice do vetor e deve ser armazenada em %edi
    _printa_carta_jogada_maquina:
    movl    %edi, %eax
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

    #gera um número randomico e joga uma carta do computador
    _computador_escolhe_carta:
    call    rand                        #gera numero randomico
    movl    $0, %edx                    #limpando edx
    movl    $3, %ebx                    #iremos pegar apenas numeros entre 0 e 2 assim teremos que dividir por 2
    divl    %ebx
    cmpl    $0,%edx
    je      _jogar_carta_um_computador
    cmpl    $1, %edx
    je      _jogar_carta_dois_computador
    cmpl    $2, %edx
    je      _jogar_carta_tres_computador
    ret

    #função irá setar -1 para posição da carta selecionada e deixar a carta em %edi
    _jogar_carta_um_computador:
    movl    $cartas_sortiadas, %eax
    movl    (%eax), %ebx
    movl    %ebx, %edi
    subl    %ebx, %ebx
    movl    $-1,  %edx
    subl    %ebx, %edx
    movl    %ebx, (%eax)
    ret

    #função irá setar -1 para posição da carta selecionada e deixar a carta em %edi
    _jogar_carta_dois_computador:
    movl    $cartas_sortiadas, %eax
    addl    $4, %eax
    movl    (%eax), %ebx
    movl    %ebx, %edi
    subl    %ebx, %ebx
    movl    $-1,  %edx
    subl    %ebx, %edx
    movl    %ebx, (%eax)
    ret

    #função irá setar -1 para posição da carta selecionada e deixar a carta em %edi
    _jogar_carta_tres_computador:
    movl    $cartas_sortiadas, %eax
    addl    $8, %eax
    movl    (%eax), %ebx
    movl    %ebx, %edi
    subl    %ebx, %ebx
    movl    $-1,  %edx
    subl    %ebx, %edx
    movl    %ebx, (%eax)
    ret

.globl _start
    _start:

    _bem_vindo:
    pushl   $msg_bem_vindo
    call    printf
    pushl   $pergunta_inicial
    call    printf
    call    getchar
    addl    $8, %esp #limpa a pilha
    cmpl    $'s', %eax
    je finalizar_programa
    cmpl    $'S', %eax
    je finalizar_programa

    pushl   $quebra_linha
    call    printf

    call _gerador_semente_aleatoria

    call _inicia_mao

    call _imprime_acao_mao1

    finalizar_programa:
    pushl   $quebra_linha
    call    printf
    pushl   $print_gerou_certo
    call    printf
    pushl   $0
    call    exit
