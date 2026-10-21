class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: '#{mensagem}' - Enviada para o passado pelo PhoneWave!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Membro #{membro.numero} admitido: #{membro.nome}"
  end

  def experimento(mensagem)
    puts "\nMembros presentes no experimento:"
    @membros.each do |membro|
      puts "Lab Mem #{membro.numero}: #{membro.nome}"
    end
    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new("001", "Rintaro Okabe")
mayuri = MembroDoLab.new("002", "Mayuri Shiina")

lab = LaboratorioDeGadgets.new
lab.admitir(okabe)
lab.admitir(mayuri)

lab.experimento("A organização está de olho!")
