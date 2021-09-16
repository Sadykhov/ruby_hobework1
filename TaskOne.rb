class Bancomat
    def initialize()
        @uno = 0
        @ten = 0
        @fifty = 0
        @hundreed = 0
        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
        puts "Bancomat initialized"
    end
    def Bancomat_work()
        while true
            puts ("input 1 for know how much money, 2 for give me money, 3 for take money, 4 for the end")
            a = gets.to_i
            case a
            when 1
                puts @balanc
            when 2
                puts "Give me money"
                b = gets.to_i
                if ((b != 5) and (b!= 10) and (b!= 50) and (b!= 100))
                    puts "I givent this money"
                else
                    case b
                    when 5
                        @uno = @uno + 1
                        puts "You take me 5 dollar"
                        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
                    when 10
                        @ten = @ten + 1
                        puts "You take me 10 dollar"
                        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
                    when 50
                        @fifty = @fifty + 1
                        puts "You take me 50 dollar"
                        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
                    when 100
                        @hundreed = @hundreed + 1
                        puts "You take me 100 dollar"
                        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
                    end
                end
            when 3
                puts "How much?"
                c = gets.to_i
                if ((c % 5 )!= 0)
                    puts "I cant give you that some of money"
                else
                    k = c
                    sotki = c / 100
                    c = c - 100*sotki
                    poltiniki = c / 50
                    c = c - 50*poltiniki
                    desyatki = c / 10
                    c = c - 10*desyatki
                    pyaterki = c / 5
                    c = c - 5*pyaterki
                    if (sotki.to_i > @hundreed) or (poltiniki.to_i > @fifty) or (desyatki.to_i > @ten) or (pyaterki.to_i>@uno)
                        puts "I cant give you that some of money"
                    else
                        @uno = @uno - pyaterki
                        @ten = @ten - desyatki
                        @fifty = @fifty - poltiniki
                        @hundreed = @hundreed - sotki
                        @balanc =  5*@uno + 10*@ten + 50*@fifty + 100*@hundreed
                        message = "Take %d" % [k]
                        puts message
                    end
                end
            when 4
                puts "Thats all"
                return false
            end
        end
    end
end

mak = Bancomat.new()
mak.Bancomat_work()