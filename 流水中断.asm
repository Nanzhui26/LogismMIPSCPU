#interupt demo  main program 
#1st section, auto decrement counter and display
#2nd section: ccmb instruction test
.text
addi $s1,$zero,0x2000      #initial nubmer
addi $v0,$zero,34    
addi $sp, $zero, 0xfff		#开辟栈空间 
counter_branch:
add $a0,$0,$s1          
syscall                 #display number
addi $s1,$s1,-1         #decrement
bne $s1,$zero,counter_branch
addi $v0,$zero,50
syscall                 #pause
##############################################
# insert your ccmb benchmark program here!!!
# 中断程序1
##############################################

addi $sp, $sp,-4#入口地址1
sw $v0, 0($sp)
addi $sp, $sp,-4
sw $a0, 0($sp)
addi $sp, $sp,-4
sw $s0, 0($sp)
addi $sp, $sp,-4
sw $s3, 0($sp)
addi $sp, $sp,-4
sw $s4, 0($sp)
addi $sp, $sp,-4
sw $s5, 0($sp)
addi $sp, $sp,-4
sw $s6, 0($sp)


addi $s6,$zero,1       #中断号1,2,3   不同中断号显示值不一样

addi $s4,$zero,6      #循环次数初始值  
addi $s5,$zero,1       #计数器累加值
IntLoop1:
add $s0,$zero,$s6   

IntLeftShift1:       


sll $s0, $s0, 4  
or $s3,$s0,$s4
add    $a0,$0,$s3       #display $s0
addi   $v0,$0,34         # display hex
syscall                 # we are out of here.   

bne $s0, $zero, IntLeftShift1
sub $s4,$s4,$s5      #循环次数递减
bne $s4, $zero, IntLoop1

addi   $v0,$zero,10         # system call for exit

lw $s6,0($sp)
addiu $sp,$sp,4
lw $s5,0($sp)
addiu $sp,$sp,4
lw $s4,0($sp)
addiu $sp,$sp,4
lw $s3,0($sp)
addiu $sp,$sp,4
lw $s0,0($sp)
addiu $sp,$sp,4
lw $a0,0($sp)
addiu $sp,$sp,4
lw $v0,0($sp)
addiu $sp,$sp,4

eret						# 中断返回
syscall                  # we are out of here. 

###########################################
#中断程序2
###########################################

addi $sp, $sp,-4#入口地址2
sw $v0, 0($sp)
addi $sp, $sp,-4
sw $a0, 0($sp)
addi $sp, $sp,-4
sw $s0, 0($sp)
addi $sp, $sp,-4
sw $s3, 0($sp)
addi $sp, $sp,-4
sw $s4, 0($sp)
addi $sp, $sp,-4
sw $s5, 0($sp)
addi $sp, $sp,-4
sw $s6, 0($sp)

addi $s6,$zero,2       #中断号1,2,3   不同中断号显示值不一样

addi $s4,$zero,6      #循环次数初始值  
addi $s5,$zero,1       #计数器累加值
IntLoop2:
add $s0,$zero,$s6   

IntLeftShift2:       


sll $s0, $s0, 4  
or $s3,$s0,$s4
add    $a0,$0,$s3       #display $s0
addi   $v0,$0,34         # display hex
syscall                 # we are out of here.   

bne $s0, $zero, IntLeftShift2
sub $s4,$s4,$s5      #循环次数递减
bne $s4, $zero, IntLoop2

addi   $v0,$zero,10         # system call for exit

lw $s6,0($sp)
addiu $sp,$sp,4
lw $s5,0($sp)
addiu $sp,$sp,4
lw $s4,0($sp)
addiu $sp,$sp,4
lw $s3,0($sp)
addiu $sp,$sp,4
lw $s0,0($sp)
addiu $sp,$sp,4
lw $a0,0($sp)
addiu $sp,$sp,4
lw $v0,0($sp)
addiu $sp,$sp,4

eret						# 中断返回
syscall                  # we are out of here. 

###################################################
#中断程序3
###################################################

addi $sp, $sp,-4#入口地址3
sw $v0, 0($sp)
addi $sp, $sp,-4
sw $a0, 0($sp)
addi $sp, $sp,-4
sw $s0, 0($sp)
addi $sp, $sp,-4
sw $s3, 0($sp)
addi $sp, $sp,-4
sw $s4, 0($sp)
addi $sp, $sp,-4
sw $s5, 0($sp)
addi $sp, $sp,-4
sw $s6, 0($sp)

addi $s6,$zero,3       #中断号1,2,3   不同中断号显示值不一样

addi $s4,$zero,6      #循环次数初始值  
addi $s5,$zero,1       #计数器累加值
IntLoop3:
add $s0,$zero,$s6   

IntLeftShift3:       


sll $s0, $s0, 4  
or $s3,$s0,$s4
add    $a0,$0,$s3       #display $s0
addi   $v0,$0,34         # display hex
syscall                 # we are out of here.   

bne $s0, $zero, IntLeftShift3
sub $s4,$s4,$s5      #循环次数递减
bne $s4, $zero, IntLoop3

addi   $v0,$zero,10         # system call for exit

lw $s6,0($sp)
addiu $sp,$sp,4
lw $s5,0($sp)
addiu $sp,$sp,4
lw $s4,0($sp)
addiu $sp,$sp,4
lw $s3,0($sp)
addiu $sp,$sp,4
lw $s0,0($sp)
addiu $sp,$sp,4
lw $a0,0($sp)
addiu $sp,$sp,4
lw $v0,0($sp)
addiu $sp,$sp,4

eret						# 中断返回
syscall                  # we are out of here. 

addi $v0,$zero,10
syscall                 #pause











