clear classes

clc;
printf("=== Menu ===\n")
printf('1 - Calcular dano médio\n')
printf('2 - Gerenciar armas existentes\n')
printf('3 - Gerenciar personagens existentes\n')
printf('0 - Sair\n')

optmenu = 1;
while optmenu != 0
  optmenu = input('Escolha uma opcao: ');
  switch optmenu
    case 1 %dano
      Menu1
    case 2 %armas
      Menu2
    case 3 %personagens
      Menu3
    case 0 %sair
      printf("Saindo."); pause(0.1); printf("."); pause(0.1); printf("."); pause(0.1);
      printf(".\n");
      return
    otherwise
      fprintf('Digite uma opção válida seu buxa!\n');
  endswitch
endwhile

