require_relative "./combat.rb"
require_relative "/Characters/fighters.rb"

include Characters

combat = Combat.new
char = Characters



start = combat.roll_turn(char.fighters[:human], char.fighters[:orc])



