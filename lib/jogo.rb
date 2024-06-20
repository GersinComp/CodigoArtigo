# frozen_string_literal: true

class Jogo
  attr_reader :time_casa, :time_visitante, :placar

  def initialize(time_casa, time_visitante)
    @time_casa = time_casa
    @time_visitante = time_visitante
    @placar = [0, 0]
  end

  def simular_jogo
    @placar = [rand(5), rand(5)]
  end
end
