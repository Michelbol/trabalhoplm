.section .data

msg_bem_vindo: .asciz "=============================================================\n|                    Bem vindo ao Truco 1.0                 |\n============================================================\n"
tempo: .int 4
mostra_tempo: .asciz "\nSemente Aleatoria: Tempo em Segundos = %d\n"
mostra_randomico: .asciz "\nNumero Gerado: %d\n"
mostra_randomico_13: .asciz "\Numero Gerado no maximo 13: %d\n"
print_numero: .asciz " %d"
print_palavra: .asciz " %s"
print_cartas: .asciz "As cartas da mão são:"
teste: .asciz "cheguei aqui"

cartas_maquina: .space 12
sinais_cartas_maquina: .space 12
cartas_jogador: .space 12
sinais_cartas_jogador: .space 12

cartas: .asciz "As    ", "2    ", "3     ", "4     ", "5      ", "6     ", "7     ", "Dama  ", "Valete", "Reis  "
sinais: .asciz "ouros", "espada", "copas", "paus"
manilha: .int 0
sinal_manilha: .asciz ""
vira: .asciz ""


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

addl $4, %esp
call srand

printa_cartas:
pushl $print_cartas
call printf
addl $4, %esp
movl $0x10, %ecx
movl $cartas, %edi
loop_printa_cartas:
pushl %edi
pushl %ecx
pushl %ecx

pushl $print_numero
call printf
addl $4, %esp

popl %ecx
popl %edi
loop loop_printa_cartas
jmp finalizar_programa

_gerador_cartas:
movl $0x3, %ecx
_gera_carta:
pushl %ecx
call rand
pushl %eax #eax contem o numero randomico
movl $0, %edx #limpando edx
movl $0x13, %ebx
divl %ebx
pushl %edx #pegando o resto da divisao como aleatorio entre 0 e 13
pushl $mostra_randomico_13
call printf
addl $12, %esp
popl %ecx
loop _gera_carta

finalizar_programa:
pushl $0
call exit
