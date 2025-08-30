function [melee, ranged] = weapons_catalog()
    % Melee
    #melee(i) = MeleeWeapon(%nome,marg,qtd,d,crt,atr,perig,cruel);i++
    i=1;
    melee(i) = MeleeWeapon("Bastão10%mald", 20, 1, 8, 2, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Bastão15%mald", 20, 1, 8, 2, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Bastão10%+", 20, 1, 8, 2, 1, 1, 1);i++;
    melee(i) = MeleeWeapon("Bastão15%+", 20, 1, 8, 2, 1, 1, 1);i++;
    melee(i) = MeleeWeapon("Bastão", 20, 1, 8, 2, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Acha",   20, 1, 12, 3, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Motosserra", 20, 3, 6, 2, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Machado",   20, 1, 8, 3, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Montante", 19, 2, 6, 2, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Gadanho", 20, 2, 4, 4, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Espada/Katana", 19, 1, 10, 2, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Katana", 19, 1, 10, 2, 2, 0, 0); i++;
    melee(i) = MeleeWeapon("Machete/Cutelo do Augusto", 19, 1, 6, 2, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Marreta do zóio", 20, 3, 4, 2, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Machadinha", 20, 1, 6, 3, 1, 0, 0); i++;
    melee(i) = MeleeWeapon("Bastão Melhorado", 18, 1, 8, 2, 1, 1, 1); i++;
    melee(i) = MeleeWeapon("Bastão Amaldiçoado", 20, 1, 8, 2, 1, 0, 0); i++;

    % Ranged
   #ranged(j) = RangedWeapon(%nome,marg,qtd,d,crt,atr,perig,cruel,...
                              %mira,cal,dum,auto,comp);j++
    j=1;
    ranged(j) = RangedWeapon("Fuzil", 20, 1, 8, 2, 1, 0, 0, ...
                              0, 0, 0, 0, 0);j++;
end

