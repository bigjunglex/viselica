require_relative '../game'
require 'rspec'

describe 'Game' do
  it 'should do ok for winning condition' do
    game = Game.new('аромат')
    game.next_step('а')
    game.next_step('р')
    game.next_step('о')
    game.next_step('м')
    game.next_step('а')
    game.next_step('т')
    expect(game.status.to_i).to eq 1
  end

  it 'should do ok for losing condition' do
    game = Game.new('аромат')
    game.next_step('и')
    game.next_step('к')
    game.next_step('з')
    game.next_step('х')
    game.next_step('ъ')
    game.next_step('й')
    game.next_step('ц')
    expect(game.errors).to eq 7
  end
end