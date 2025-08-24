% RANGEDWEAPON - Cria uma subclasse de Weapon, de arma à distância
%
% armaranged = RangedWeapon(nome,margem,qtd,dado,crit,atr,perigosa,cruel,...
%                           mira,cal,dum,auto,comp)
%
% Propriedades (Comum à todas as armas):
%   nome      - Nome da arma
%   margem    - Margem de ameaça
%   qtd       - Quantidade de dados de dano
%   dado      - Número de faces do dado
%   crit      - Multiplicador de crítico
%   atr       - Atributo usado
% Melhorias (De arma à distância; 1 para melhoria ou 0 para sem melhoria):
%   perigosa  - Melhorada com Perigosa
%   cruel     - Melhorada com Cruel
%   mira      - Mira laser
%   calibre   - Calibre grosso
%   dum       - Se você está usando balas "Dum dum", ative essa melhoria.
%   auto      - Arma automática (libera escolha de dar rajadas)
%   comp      - Compensador (elimina o debuff de rajadas)

classdef RangedWeapon < Weapon
  properties
    perigosa
    cruel
    mira_laser
    calibre_grosso
    dum_dum
    auto
    compensador
  endproperties

  methods
    function obj = RangedWeapon(nome, margem, qtd, dado, crit, atr, perigosa, cruel,...
                                mira, calibre, dum, auto, comp)

      obj@Weapon(nome, margem, qtd, dado, crit, atr);
      obj.perigosa = perigosa;
      obj.cruel = cruel;
      obj.mira_laser = mira;
      obj.calibre_grosso = calibre;
      obj.dum_dum = dum;
      obj.auto = auto;
      obj.compensador = comp;

    endfunction
  endmethods
endclassdef

