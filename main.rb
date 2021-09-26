require_relative "./combat.rb"

t = Combat.new


fighters = {
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
        "firstTurn" => "false"
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
        "firstTurn" => "false"
    }
}

type_game = ""
player1 = t.roll_turn(fighters[:human], fighters[:orc])
player2 = ""


