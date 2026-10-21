class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "O instrumentista precisa saber como tocar a peça!"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{@nome} tocando #{@instrumento}: Conduzindo a melodia principal da peça #{peca}!"
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{@nome} tocando #{@instrumento}: Acompanhando o ritmo do solista na peça #{peca}."
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "\nRegente #{@nome} iniciando a peça: #{peca}"
    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |inst| "#{inst.class} - #{inst.nome}" }
  end
end

kousei = Acompanhador.new("Kousei Arima", "Piano")
kaori = Solista.new("Kaori Miyazono", "Violino")
hiroko = Regente.new("Hiroko Seto")

hiroko.convocar(kousei)
hiroko.convocar(kaori)

hiroko.reger("Introdução e Rondó Caprichoso")

puts "\nEscalação da Orquestra:"
hiroko.escalacao.each { |linha| puts linha }
