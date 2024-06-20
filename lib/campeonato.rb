# frozen_string_literal: true

class Campeonato
  attr_reader :times, :jogos

  def initialize()
    @times = []
    @jogos = []
  end

  def add_times(time)
    @times << time
  end

  def criar_jogo(time_casa, time_visitante)
    jogo = Jogo.new(time_casa, time_visitante)
    @jogos << jogo
    jogo
  end

  def simular_rodada
    @jogos.each do |jogo|
      jogo.simular_jogo
    end
  end
end
