% MELEEWEAPON - Cria uma subclasse de Weapon, de arma corpo a corpo
%
% armamelee = MeleeWeapon(nome,margem,qtd,dado,crit,atr,perigosa,cruel)
%
% Propriedades (Comum à todas as armas):
%   nome      - Nome da arma
%   margem    - Margem de ameaça
%   qtd       - Quantidade de dados de dano
%   dado      - Número de faces do dado
%   crit      - Multiplicador de crítico
%   atr       - Atributo usado
% Melhorias (De arma corpo a corpo; 1 para melhoria ou 0 para sem melhoria):
%   perigosa  - Melhorada com Perigosa
%   cruel     - Melhorada com Cruel

classdef MeleeWeapon < Weapon
  properties
    perigosa
    cruel
  endproperties

  methods
    function obj = MeleeWeapon(nome, margem, qtd, dado, crit, atr, perigosa, cruel)

      obj@Weapon(nome, margem, qtd, dado, crit, atr);
      obj.perigosa = perigosa;
      obj.cruel = cruel;

    endfunction
  endmethods
endclassdef

