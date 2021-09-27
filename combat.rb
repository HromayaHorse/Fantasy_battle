class Combat
    def roll_turn(war1, war2)
        
        puts "@@@#{war1["name"]} vs #{war2["name"]}@@@"
        
        puts "######Who is moving first...Please wait######"
        sleep 2
        
        puts "######Download...######"
        sleep 1
        
        roll = rand(1..2)

        @indexTurn = 0


        if roll == 1
            war1["firstTurn"] = "true"
            puts "it's turn of #{war1["name"]}!"
            sleep 2
        
        elsif roll == 2
            war2["firstTurn"] = "true"
            puts "it's turn of #{war2["name"]}!"
            sleep 2

        end

        type_game = "bot"

        puts "Type_game: against #{type_game}"
        sleep 2

        if type_game == "bot"
            puts "Fighting against a bot!"
            sleep 1
            fighting_against_bot(war1, war2)
        end

    end 
    
    def sleeper
        sleep 1
    end
    
    def fighting_against_bot(war1, war2)

        until war1[:health] <= 0 or war2[:health] <= 0
            @indexTurn += 1
            turnCounter = @indexTurn
            puts "Turn № #{turnCounter}!"
            sleep 1

            if war1["firstTurn"] == "true" and war1["firstTurn"] != "expired" and war2["firstTurn"] != "true" 
                war1["firstTurn"] = "expired"
                war2["firstTurn"] = "expired"
                

                puts "##{war1["name"]} choose attack:"
                puts "Hit to (h)ead\nHit to (b)ody\nHit to (l)egs"
                getAttack = gets.chomp
                
                case getAttack
                when 'h'
                   combat = war2[:health] - war1[:attack_h]
                   puts "#{war1["name"]} hit to #{war2["name"]}'s head on #{war1[:attack_h]}!"
                   war2[:health] = combat
                   puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}"
                   puts "##############################################################################"
                   sleeper()
                   
                   
                
                when 'b'
                    combat = war2[:health] - war1[:attack_b]
                    puts "#{war1["name"]} hit to #{war2["name"]}'s body on #{war1[:attack_b]}!"
                    war2[:health] = combat
                    puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}" 
                    puts "##############################################################################"
                    sleeper()

                
                when 'l'
                    combat = war2[:health] - war1[:attack_l]
                    puts "#{war1["name"]} hit to #{war2["name"]}'s body on #{war1[:attack_l]}!"
                    war2[:health] = combat
                    puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}"  
                    puts "##############################################################################"
                    sleeper()
                end

                puts "##{war2["name"]} choose attack:"
                puts "Hit to (h)ead\nHit to (b)ody\nHit to (l)egs"
                getAttack = rand(1..3)
                
                case getAttack
                when 1
                   combat = war1[:health] - war2[:attack_h]
                   puts "#{war2["name"]} hit to #{war1["name"]}'s head on #{war2[:attack_h]}!"
                   war1[:health] = combat
                   puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                   puts "##############################################################################"  
                   sleeper()
                
                when 2
                    combat = war1[:health] - war2[:attack_b]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_b]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                    puts "##############################################################################" 
                    sleeper()
                    
                
                when 3
                    combat = war1[:health] - war2[:attack_l]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_l]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                    puts "##############################################################################"  
                    sleeper()
                end

            elsif war2["firstTurn"] == "true" and war2["firstTurn"] != "expired" and war1["firstTurn"] != "true"
                war2["firstTurn"] = "expired"
                war1["firstTurn"] = "expired"
                
                puts "##{war2["name"]} choose attack:"
                puts "Hit to (h)ead\nHit to (b)ody\nHit to (l)egs"
                getAttack = rand(1..3)
                
                case getAttack
                when 1
                   combat = war1[:health] - war2[:attack_h]
                   puts "#{war2["name"]} hit to #{war1["name"]}'s head on #{war2[:attack_h]}!"
                   war1[:health] = combat
                   puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"  
                   puts "##############################################################################"
                   sleeper()

                when 2
                    combat = war1[:health] - war2[:attack_b]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_b]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}" 
                    puts "##############################################################################"
                    sleeper()
                when 3
                    combat = war1[:health] - war2[:attack_l]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_l]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"  
                    puts "##############################################################################"
                    sleeper()
                end

            end    
            
            if war1["firstTurn"] == "expired" and war2["firstTurn"] == "expired"
                puts "##{war1["name"]} choose attack:"
                puts "Hit to (h)ead\nHit to (b)ody\nHit to (l)egs"
                getAttack = gets.chomp
                
                case getAttack
                when "h"
                   combat = war2[:health] - war1[:attack_h]
                   puts "#{war1["name"]} hit to #{war2["name"]}'s head on #{war1[:attack_h]}!"
                   war2[:health] = combat
                   puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}"
                   puts "##############################################################################"
                   sleeper()
                   
                when "b"
                    combat = war2[:health] - war1[:attack_b]
                    puts "#{war1["name"]} hit to #{war2["name"]}'s body on #{war1[:attack_b]}!"
                    war2[:health] = combat
                    puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}" 
                    puts "##############################################################################"
                    sleeper()
                when "l"
                    combat = war2[:health] - war1[:attack_l]
                    puts "#{war1["name"]} hit to #{war2["name"]}'s body on #{war1[:attack_l]}!"
                    war2[:health] = combat
                    puts "#{war1["name"]}'s HP: #{war1[:health]}\n#{war2["name"]}'s HP: #{war2[:health]}"
                    puts "##############################################################################" 
                    sleeper()
                end
            
                puts "##{war2["name"]} choose attack:"
                puts "Hit to (h)ead\nHit to (b)ody\nHit to (l)egs"
                getAttackW2 = rand(1..3)
                
                case getAttackW2
                when 1
                   combat = war1[:health] - war2[:attack_h]
                   puts "#{war2["name"]} hit to #{war1["name"]}'s head on #{war2[:attack_h]}!"
                   war1[:health] = combat
                   puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                   puts "##############################################################################" 
                   sleeper()
                   
                
                when 2
                    combat = war1[:health] - war2[:attack_b]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_b]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                    puts "##############################################################################" 
                    sleeper()
                
                when 3
                    combat = war1[:health] - war2[:attack_l]
                    puts "#{war2["name"]} hit to #{war1["name"]}'s body on #{war2[:attack_l]}!"
                    war1[:health] = combat
                    puts "#{war2["name"]}'s HP: #{war2[:health]}\n#{war1["name"]}'s HP: #{war1[:health]}"
                    puts "##############################################################################" 
                    sleeper()
                end

            end
            
            if war1[:health] <= 0
                puts "#{war2["name"]} won!"
                puts "#####################"

            elsif war2[:health] <= 0
                puts "#{war1["name"]} won!"
                puts "#####################"
        end

    end    
end
end

