class CoquetelAfterlife
    attr_reader :nome
  
    def initialize(nome, preco)
      @nome = nome
      @_preco = preco
    end
  
    def preco
      @_preco
    end
  
    def preco=(valor)
      if valor >= 5 && valor <= 200
        @_preco = valor
      else
        puts "Preço inválido!"
      end
    end
  
    def ficha
      "Drink: #{@nome} | Preço: E$ #{@_preco}"
    end
  end
  
  class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda
  
    def initialize(nome, preco, lenda)
      super(nome, preco)
      @lenda = lenda
    end
  
    def ficha
      "#{super} | Lenda homenageada: #{@lenda}"
    end
  end
  
  drinks = [
    CoquetelAfterlife.new("Cerveja Nicola", 10),
    DrinkDeLenda.new("Johnny Silverhand", 150, "Johnny Silverhand"),
    DrinkDeLenda.new("David Martinez", 100, "David Martinez")
  ]
  
  drinks.each do |drink|
    puts drink.ficha
  end
  
  puts "\n-- Alterando preços --"
  drinks[1].preco = 500
  drinks[1].preco = 80 
  puts drinks[1].ficha
