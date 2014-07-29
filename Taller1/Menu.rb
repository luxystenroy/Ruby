load "Propiedad.rb"
load "Condominio.rb"

class Menu  
  def initialize()
      @c1 = Condominio.new("Mooncity")
      puts "Bienvenido al CondominioFeliz"
      puts "Condominio Mooncity"
      puts "Ingrese un numero para seleccionar la opcion deseada"
  end 
  def firstMenu()
      
      puts"1.- Ingresar una propiedad"
      puts"2.- Ingresar un nuevo tipo de cobro"
      puts"3.- Ingresar una cobro a una propiedad"
      puts"4.- Visualizacion de cobros asociados a propiedad"
      puts"5.- Visualizacion de cobros asociados a condominio completo"
      puts"6.- Salir del programa"
      puts"Su opcion es : "
      option = gets.chomp
      num_expr = /[1-6]/ # expresión regular 
      m = num_expr.match(option)
      unless m
        puts "***Favor ingrese un numero valido***"
        firstMenu()
        
        
      end
      
      case option.to_i
            when 1
              newPropiedad()
              
            when 2
              
              
            when 3
              printArrayPropiedad()
              
            when 4
              
              
            when 5
              
        
      
      end 
  end
  def newPropiedad()
      puts "1.-ingresar nueva propiedad"
      puts "Favor ingresar el propietario de la propiedad:"
      propietario = gets.chomp
      puts "Favor ingresar el copropietario de la propiedad:"
      copropietario = gets.chomp
      puts "Favor ingresar el numero de la propiedad:"
      numPropiedad = gets.chomp
      puts "Favor ingresar el porcentaje de cop:"
      numPropiedad = gets.chomp

      p1 = Propiedad.new(propietario,copropietario,numPropiedad)

     
      @c1.propiedades << p1
      secondMenu()
  end
  def secondMenu()
      puts"Desea desplegar el menu principal"
      puts"1.- Si"
      puts"2.- No (Salir del programa)"
      puts"Su opcion es : "
      option1 = gets.chomp
      num_expr = /[1-2]/ # expresión regular 
      m = num_expr.match(option1)
      unless m
        puts "***Favor ingrese un numero valido***"
        secondMenu()
        
        
      end
      
      case option1.to_i
      when 1 
           firstMenu()
      when 2 
        puts "***Gracias por usar nuestro sistema, hasta luego***"
        exit()
        

      end
  end

  def printArrayPropiedad()

       @c1.propiedades.each do |num|
      puts num.propietario
      end
  end
  
  
  
  
end

