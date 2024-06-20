# frozen_string_literal: true

require_relative 'lib/equipe'
require_relative 'lib/jogo'
require_relative 'lib/campeonato'

flamengo = Equipe.new("Flamengo", ["P1", "P2", "P3"])
vasco = Equipe.new("Vasco", ["P1", "P2", "P3"])

brasileirao = Campeonato.new

brasileirao.add_times(flamengo)
brasileirao.add_times(vasco)

jogo1 = brasileirao.criar_jogo(flamengo, vasco)
jogo2 = brasileirao.criar_jogo(vasco, flamengo)

brasileirao.simular_rodada

p "Placar do jogo entre #{jogo1.time_casa.nome} e #{jogo1.time_visitante.nome}: #{jogo1.placar}"
p "Placar do jogo entre #{jogo2.time_casa.nome} e #{jogo2.time_visitante.nome}: #{jogo2.placar}"