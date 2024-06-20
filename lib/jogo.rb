# frozen_string_literal: true

class Jogo
  # Definição dos atributos de cada Jogo
  attr_reader :time_casa, :time_visitante, :placar

  # Método construtor da Classe Jogo
  def initialize(time_casa, time_visitante)
    @time_casa = time_casa
    @time_visitante = time_visitante
    @placar = [0, 0]
  end

  # Método para simular um jogo e atribuir o seu valor ao atributo placar
  def simular_jogo
    # Esse método gera dois valores aleatórios entre 0 e 4 após isso é definido uma lista com os
    # valores gerados ao atributo placar do objeto corrente, em Ruby, o this do Java se torna @
    @placar = [rand(5), rand(5)]
  end
end
