.section .data

msg_bem_vindo: .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n=============================================================\n"
tempo: .int 4
mostra_tempo: .asciz "\nSemente Aleatoria: Tempo em Segundos = %d\n"
mostra_randomico: .asciz "\nNumero Gerado: %d\n"
mostra_randomico_13: .asciz "\Numero Gerado no maximo 13: %d\n"
print_numero: .asciz " %d"
print_palavra: .asciz " %s"
print_cartas: .asciz "As cartas da mão são:"
teste: .asciz "cheguei aqui"
quebra_linha: .asciz "\n"

cartas_maquina: .space 21
sinais_cartas_maquina: .space 21
cartas_jogador: .space 21
sinais_cartas_jogador: .space 21

cartas: .asciz "As    ", "2     ", "3     ", "4     ", "5     ", "6     ", "7     ", "Dama  ", "Valete", "Reis  "
sinais: .asciz "Ouros ", "Espada", "Copas ", "Paus  "
manilha: .int 0
sinal_manilha: .asciz ""
vira: .asciz ""


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

_gerador_cartas:
movl    $3, %ecx                    #numero de cartas que serão geradas devem estar em ecx(instrução loop)
movl    $cartas_maquina, %ebx
_gera_carta:
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
addl    $8, %esp
popl    %ebx
movl    %edi, (%ebx)
addl    $7, %ebx
popl    %ecx
loop    _gera_carta

_imprime_cartas_maquina:
movl    $3, %ecx
pushl   %ecx
pushl   $print_cartas
call    printf
addl    $4, %esp
_impressao_cartas_maquina:
movl    $cartas_maquina, %ebx
pushl   %ebx
pushl   (%ebx)
pushl   $print_palavra
call    printf
addl    $8, %esp
popl    %ebx
addl    $7, %ebx
popl    %ecx
loop    _impressao_cartas_maquina

finalizar_programa:
pushl   $quebra_linha
call    printf
pushl   $0
call    exit
