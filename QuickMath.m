escolha = -1;
while escolha != 0
  escolha = input('Escolher arma/Digitar manualmente/Explicação Digitar manualmente(1/2/3/0): ');
  if escolha == 1
    [melee, ranged] = weapons_catalog();
    return
  elseif escolha == 2
    txt1 = input('Teste de ataque: ', "s");
    atktst = regexp(txt1, '[+-]?\d+', 'match');  %pega números com sinal
    atktst = str2double(atktst);                  %converte para vetor numérico

    txt2 = input('Dano antes do crítico: ', "s");
    dmgbf = regexp(txt2, '\d+', 'match');
    dmgbf = str2double(dmgbf);

    txt3 = input('Dano extra: ', "s");
    dmgext = regexp(txt3, '[+-]?\d+', 'match');
    dmgext = str2double(dmgext);

    m = dmgbf(end-1);
    crit = dmgbf(end);
    pcritico = 1 - ((m-1)/atktst(2))^(atktst(1));
    pnormal = 1 - pcritico;
    % Média do dano normal e crítico
    media_critico = 0;
    media_normal = 0;
    for i = 1:2:length(dmgbf)-2-mod(length(dmgbf-2),2)
    qtd = dmgbf(i);
    dano = dmgbf(i+1);
    media_normal += qtd * (1+dano)/2;
    media_critico += qtd * crit * (1+dano)/2;
    endfor
    media_ext = 0;
    for i = 1:2:length(dmgext)-mod(length(dmgext-2),2)
    qtd = dmgext(i);
    dano = dmgext(i+1);
    media_ext += qtd*(1+dano)/2;
    endfor
    bonus = dmgext(end);
    armaexpdmg = media_normal*pnormal+media_critico*pcritico+media_ext+bonus
    return
  elseif escolha == 3
    printf(['Resumo:\n' ...
            'O cálculo do dano médio ou dano esperado é dividido em três etapas.Teste de ataque, ' ...
            'Dano da arma ou Dano antes do crítico, e por fim Dano extra. Caso seu personagem ' ...
            'possa atacar mais de uma vez, simplesmente multiplique o número de vezes que pode ' ...
            'atacar pelo resultado para saber o dano esperado por turno.\n'...
            'Exemplo:\nataco duas vezes e o dano esperado deu 15,432 -> dano médio por turno = 15,432*2\n\n'])
    printf(['Etapa 1:\n' ...
            'Digite o teste de ataque que você rola. (Errar o inimigo é desconsiderado ' ...
            'nesse cálculo). 0d20 significa rolar 2d20 e escolher o pior. -1d20 significa ' ...
            'rolar 3d20 e escolher o pior.\n']);
    printf('Exemplos:\n\t"3d20+3"\n\t"2d20"\n\t"2d20"\n\t"-1d20+5"\n\n')

    printf(['Etapa 2:\n' ...
            'Digite o dano calculado antes do crítico, a margem de ameaça e o crítico. ' ...
            'Normalmente é o dano da arma, como 1d8 do bastão. Mas se tiver maldições como ' ...
            'lancinante, o dano também ganha o multiplicador do crítico (1d8*crítico, se critar)\n']);
    printf('Exemplos:\n\t"1d12,20/x3"\n\t"1d12+1d8,20/x3"\n\n"')

    printf(['Etapa 3:\n' ...
            'Digite o dano extra (eventuais maldições+bônus de perícia)\n' ...
            'Importante: digite o bônus por último.\n\n']);
  elseif escolha == 0
    printf('voltando...\n')
  else
    printf('escolhe direito seu buxa!\n')
  endif
endwhile
