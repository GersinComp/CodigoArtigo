# frozen_string_literal: true

# Classe Equipe
class Equipe
  # Definição dos atributos de cada Time
  attr_reader :nome, :jogadores

  # Método construtor da classe Time
  def initialize(nome, jogadores)
    @nome = nome
    @jogadores = jogadores
  end
end
