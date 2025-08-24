% WEAPON - Superclasse de todas as armas.
%
% Propriedades (Comum à todas as armas):
%   nome      - Nome da arma
%   margem    - Margem de ameaça
%   qtd       - Quantidade de dados de dano
%   dados     - Número de faces do dado
%   crit      - Multiplicador de crítico
%   atributo  - Atributo usado
%
% Métodos principais:
%   Weapon(...)    - Construtor (Atualmente público)
%   show()         - Mostra informações da arma
classdef Weapon
  properties
    nome
    margem_ameaca
    qtd_dados
    dados_dano
    crit_mult
    atributo_usado
  endproperties

  methods
    function obj = Weapon(nome, margem, qtd, dano, crit, atr)
      obj.nome = nome;
      obj.margem_ameaca = margem;
      obj.qtd_dados = qtd;
      obj.dados_dano = dano;
      obj.crit_mult = crit;
      obj.atributo_usado = atr;
    endfunction

    function show(obj, idx)
      if nargin > 1
        fprintf('%d - %s\n', idx, obj.nome);
      else
        fprintf('%s\n', obj.nome);
      end
    end
  end
endclassdef
