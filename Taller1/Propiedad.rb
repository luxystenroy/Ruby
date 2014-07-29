class Propiedad

  def initialize(propietario,copropietario,numero)
    @propietario = propietario
    @copropietario = copropietario
    @numero = numero
  
    
  end
  def savePropiedad()
    File.open('Mooncity', 'r+') do |f|  
      Marshal.dump(self, f)
      end 
  end
  
  attr_reader :propietario, :copropietario, :numero
end

