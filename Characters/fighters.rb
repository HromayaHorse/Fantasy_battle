module Characters

attr_accessor :fighters  

@fighters = {
    :human => {
        "name" => "Arthas",
        "class" => "Paladin",
        :health => 100,
        :attack_h => rand(5..20),
        :attack_b => rand(1..20),
        :attack_l => rand(1..10),
        :roll_attack => rand(100),
        :defence_h => 0,
        :defence_b => 0,
        :defence_l => 0, 
        :roll_defence => rand(100),
        "firstTurn" => "",
        "currentTurn" => ""
    },

    :orc => {
        "name" => "Grock",
        "class" => "Warrior",
        :health => 100,
        :attack_h => rand(5..20),
        :attack_b => rand(1..20),
        :attack_l => rand(1..10),
        :roll_attack => rand(100),
        :defence_h => 0,
        :defence_b => 0,
        :defence_l => 0,
        :roll_defence => rand(100),
        "firstTurn" => "",
        "currentTurn" => ""
    }
}

end



include Characters

puts Characters.fighters[:human]["name"]