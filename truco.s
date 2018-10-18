.section .data

msg_bem_vindo: .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n============================================================\n"
mostra_tempo: .asciz "\nSemente Aleatoria: Tempo em Segundos = %d\n"
mostra_randomico: .asciz "\nNumero Gerado: %d\n"
mostra_randomico_13: .asciz "\Numero Gerado no maximo 13: %d\n"
numero: .asciz "\nNumero eh: %d\n"

tempo: .int 4
gera_carta: .int 3


.section .text

.globl _start
_start:

_bem_vindo:
pushl $msg_bem_vindo
call printf
addl $4, %esp #limpa a pilha

_gerador_semente_aleatoria:
pushl $tempo
call time
pushl $mostra_tempo
call printf
addl $8, %esp
call srand

_gerador_cartas:
movl gera_carta, %ecx
pushl %ecx
pushl $numero
call printf
_gera_carta:
pushl %ecx
call rand
popl %ecx
pushl %eax #eax contem o numero randomico
addl $4, %esp
movl $0, %edx #limpando edx
movl $0x13, %ebx
divl %ebx
pushl %edx #pegando o resto da divisao como aleatorio entre 0 e 13
pushl $mostra_randomico_13
call printf
pushl %ecx
pushl $numero
call printf
#loop _gera_carta

finalizar_programa:
pushl $0
call exit
