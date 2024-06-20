# frozen_string_literal: true

class Equipe
  attr_reader :nome, :jogadores

  def initialize(nome, jogadores)
    @nome = nome
    @jogadores = jogadores
  end
end
