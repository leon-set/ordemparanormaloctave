clear classes

clc;

optmenu = 1;
while optmenu != 0
  printf("=== Menu ===\n")
  printf('1 - Calcular dano médio\n')
  printf('2 - QuickMath\n')
  printf('3 - Gerenciar armas existentes\n')
  printf('4 - Gerenciar personagens existentes\n')
  printf('0 - Sair\n')
  optmenu = input('Menu - Escolha uma opcao: ');
  switch optmenu
    case 1 %dano
      clc;
      Menu1
    case 2
      clc;
      QuickMath
    case 3 %armas
      clc;
      Menu3
    case 4 %personagens
      clc;
      Menu4
    case 0 %sair
      printf("Saindo."); pause(0.1); printf("."); pause(0.1); printf("."); pause(0.1);
      printf(".\n");
      return
    otherwise
      fprintf('Digite uma opção válida seu buxa!\n');
  endswitch
endwhile

