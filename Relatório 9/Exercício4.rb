module Depoente
  def depor
    raise NotImplementedError, "O depoente precisa falar!"
  end
end

module Detivel
  def ser_detido
    puts "=> #{nome} foi algemado(a) e levado(a) pela Scotland Yard!"
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{@nome} (Testemunha): 'Eu vi um homem de chapéu correndo para o beco!'"
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "#{@nome} (Suspeito): 'Eu estava no pub do outro lado da cidade na hora do crime!'"
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "\n--- Investigando o caso: #{@caso} ---"
    @envolvidos.each do |envolvido|
      envolvido.depor
    end
  end

  def acionar_scotland_yard
    puts "\n--- Ação da Scotland Yard ---"
    detiveis = @envolvidos.select { |e| e.respond_to?(:ser_detido) }
    detiveis.each do |detivel|
      detivel.ser_detido
    end
  end
end

testemunha = TestemunhaOcular.new("Senhora Hudson")
suspeito1 = SuspeitoDoCrime.new("Professor Moriarty")
suspeito2 = SuspeitoDoCrime.new("Coronel Moran")

investigacao = Investigacao.new("O Cão dos Baskervilles")
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard
