function [melee, ranged] = weapons_catalog()
    % Melee
    #melee(i) = MeleeWeapon(%nome,marg,qtd,d,crt,atr,perig,cruel);i++
    i=1;
    melee(i) = MeleeWeapon("Bastão", 20, 1, 8, 2, 1, 0, 0);i++;
    melee(i) = MeleeWeapon("Acha",   20, 1, 12, 3, 1, 0, 0);i++;

    % Ranged
   #ranged(j) = RangedWeapon(%nome,marg,qtd,d,crt,atr,perig,cruel,...
                              %mira,cal,dum,auto,comp);j++
    j=1;
    ranged(j) = RangedWeapon("Fuzil", 20, 1, 8, 2, 1, 0, 0, ...
                              0, 0, 0, 0, 0);j++;
end

