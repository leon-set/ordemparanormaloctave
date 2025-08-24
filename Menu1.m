[melee, ranged] = weapons_catalog();
pers = characters_catalog();
contmenu = input("modo simplificado?(s/n): ", "s");
if contmenu == "s"
%menu simples (só digita os números)
else
printf("Escolha o personagem.\n");
for i = 1:length(pers)
pers(i).show(i)
endfor

optch = 0;
while optch < 1 || optch > length(pers)
  optpr = input("Escolha o personagem: ");
endwhile
persesc = pers(optpr);
while true
  meleeranged = input('Vai usar arma corpo a corpo ou a distância?(1/2): ');
  switch meleeranged
    case 1
      lista = melee;
      break
    case 2
      lista = ranged;
      break
    otherwise
      fprintf('Digite uma opção válida seu buxa!\n');
  endswitch
endwhile

for i = 1:length(lista)
  lista(i).show(i);
end

optarma = -1;
while opt < 1 || opt > length(lista)
optarma = input('Digite a arma: ');
endwhile
armaesc = lista(optarma);
endif
