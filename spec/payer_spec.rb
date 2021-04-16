require 'player'

describe Player do
  subject(:charlotte) {Player.new('Charlotte')}
  subject(:mittens)  {Player.new('Mittens')}
  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end
  it 'has base hp' do
    expect(charlotte.hp).to eq Player::BASEHP
  end

  it 'reduces the player hit points' do
    expect {charlotte.receive_damage}.to change {charlotte.hp}.by(-10)
  end
end