% CHARACTER - Classe de todos os personagens.
%
% Propriedades:
%   nome      - Nome da arma
%   class     - Classe de personagem
%   nex       - NEX
%   atr       - Atributos (array)
%   skl       - Seção Habilidades do G.R.I.S. (string array)
%   trail     - Trilha de classe
%   origin    - Origem
%
% Métodos principais:
%   Character(...)    - Construtor (Atualmente privado)
%   Ficha(personagem) - Mostra ficha simples
%   show(personagem, IDX, classe)  - Mostra IDX e o nome do personagem. Adicione o parâmetro classe para mostrar apenas se for da classe escolhida.
classdef Character
  properties (Access = private)
    nome
    class
    nex
    atr
    skl
    trail
    origin
  endproperties

  methods
    function this = Character(nome, class, nex, atr, skl, trail, origin)
      this.nome = nome;
      this.class = class;
      this.nex = nex;
      this.atr = atr;
      this.skl = skl;
      this.trail = trail;
      this.origin = origin;
    endfunction

    function show(this, idx, chsnclass)
      if nargin == 1
        fprintf('%s\n', this.nome);
      elseif nargin == 2
        fprintf('%d - %s - %s\n', idx, this.nome, this.class);
      elseif nargin >= 3
        if this.class == chsnclass
          fprintf('%d - %s\n', idx, this.nome);
        endif
      endif
    endfunction

    function Ficha(this)
      fprintf(" - Ficha de %s - \n", this.nome);
      fprintf("Classe: %s | %s\n", this.class, this.trail);
      fprintf("Origem: %s\n", this.origin);
      fprintf("NEX: %d\n", this.nex);
      fprintf("Atributos: %s\n", mat2str(this.atr));
      fprintf("Habilidades: %s\n", mat2str(this.skl));
    endfunction
  endmethods
endclassdef
