# frozen_string_literal: true

class Campeonato
  # Definição dos atributos de Campeonato
  attr_reader :times, :jogos

  # Método construtor da Classe Campeonato
  def initialize()
    @times = []
    @jogos = []
  end

  # Atribuindo o time aos times, como a tioagem de Ruby é dinâmica, não é preciso declarar times como um Array
  def add_times(time)
    @times << time
  end

  # Método para criar o chaveamento dos jogos
  def criar_jogo(time_casa, time_visitante)
    jogo = Jogo.new(time_casa, time_visitante)
    @jogos << jogo
    jogo
  end

  # Método para percorrer todos os jogos e chamar a função simular_jogo em cada um deles
  def simular_rodada
    @jogos.each do |jogo|
      jogo.simular_jogo
    end
  end
end
