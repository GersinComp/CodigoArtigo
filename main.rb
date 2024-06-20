# frozen_string_literal: true

# Importando as classes criadas
require_relative 'lib/equipe'
require_relative 'lib/jogo'
require_relative 'lib/campeonato'

# Instância das equipes
flamengo = Equipe.new("Flamengo", ["P1", "P2", "P3"])
vasco = Equipe.new("Vasco", ["P1", "P2", "P3"])

# Instância do campeonato
brasileirao = Campeonato.new

# Chamando os métodos do campeonato
brasileirao.add_times(flamengo)
brasileirao.add_times(vasco)

# Chamando os métodos para criar os jogos
jogo1 = brasileirao.criar_jogo(flamengo, vasco)
jogo2 = brasileirao.criar_jogo(vasco, flamengo)

# Simulando todos os jogos
brasileirao.simular_rodada

# puts para exibição do placar
p "Placar do jogo entre #{jogo1.time_casa.nome} e #{jogo1.time_visitante.nome}: #{jogo1.placar}"
p "Placar do jogo entre #{jogo2.time_casa.nome} e #{jogo2.time_visitante.nome}: #{jogo2.placar}"