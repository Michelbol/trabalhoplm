.section .data

msg_bem_vindo: .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n =============================================================\n"
tempo: .int 4
mostra_tempo: .asciz "\nSemente Aleatoria: Tempo em Segundos = %d\n"
mostra_randomico: .asciz "\nNumero Gerado: %d\n"
mostra_randomico_13: .asciz "\Numero Gerado no maximo 13: %d\n"
print_numero: .asciz " %d"
print_palavra: .asciz " %s"
print_cartas: .asciz "As cartas da mão são:"
print_cartas_sortiadas: .asciz "As cartas sortiadas foram: "
print_sinais_sortiados: .asciz "Os sinais sortiados foram: "
teste: .asciz "cheguei aqui"
quebra_linha: .asciz "\n"

cartas_maquina: .space 21
sinais_cartas_maquina: .space 21
cartas_jogador: .space 21
sinais_cartas_jogador: .space 21

cartas: .asciz "As    ", "2     ", "3     ", "4     ", "5     ", "6     ", "7     ", "Dama  ", "Valete", "Reis  "
sinais: .asciz "Ouros ", "Espada", "Copas ", "Paus  "
cartas_sortiadas: .space 14
sinais_sortiados: .space 14
manilha: .int 0
sinal_manilha: .asciz ""
vira: .asciz ""
sinal_vira: .asciz ""


.section .text

.globl _start
_start:

_bem_vindo:
pushl   $msg_bem_vindo
call    printf
addl    $4, %esp #limpa a pilha

_gerador_semente_aleatoria:
pushl   $tempo
call    time
pushl   tempo
call    srand

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

_gerador_sinais_cartas_maquina:
movl    $3, %ecx                    #numero de sinais que serão geradas devem estar em ecx(instrução loop)
movl    $sinais_cartas_maquina, %ebx
#movl    $sinais_sortiados, %edx
_gera_sinal_carta_maquina:
#pushl   %edx
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
#popl    %edx
movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
addl    $7, %ebx
#movl    %eax, (%edx)
#addl    $4, %edx
loop    _gera_sinal_carta_maquina

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

_gerador_sinais_cartas_jogador:
movl    $3, %ecx                    #numero de sinais que serão geradas devem estar em ecx(instrução loop)
movl    $sinais_cartas_jogador, %ebx
#movl    $sinais_sortiados, %edx
_gera_sinal_carta_jogador:
#pushl   %edx
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
#popl    %edx
movl    %edi, (%ebx)                #adicionando a carta ao vetor de cartas
addl    $7, %ebx
#movl    %eax, (%edx)
#addl    $4, %edx
loop    _gera_sinal_carta_jogador

_imprime_cartas_maquina:
pushl   $print_cartas
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

_imprime_cartas_jogador:
pushl   $print_cartas
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

finalizar_programa:
pushl   $quebra_linha
call    printf
pushl   $0
call    exit

