

require_relative 'RP.rb'
require_relative 'game.rb'
require_relative 'word_reader.rb'

printer = ResultPrinter.new
reader = WordReader.new
slovo = reader.read_from_file('////')

game = Game.new(slovo)

while game.status == 0 do
	printer.print_status(game)
	game.ask_next_letter
end

printer.print_status(game)
