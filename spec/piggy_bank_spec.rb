require_relative '../lib/piggy_bank'

describe PiggyBank do
  it 'Should accept coins' do
    piggy_bank = PiggyBank.new
    coin = "50p"
    expect { piggy_bank.insert(coin) }.not_to raise_error
  end

  describe '#shake' do
    it 'Should return no sound when empty.' do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake).to eq "There's no sound."
    end

    it 'Should return "clink" when shaked.' do
      piggy_bank = PiggyBank.new
      coin = "50p"
      piggy_bank.insert(coin)
      expect(piggy_bank.shake).to eq "clink!"
    end
  end

  describe '#smash' do
    it 'Should return nothing when empty.' do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.smash).to eq "It's empty!"
    end

    it 'Should return coin when smashed.' do
      piggy_bank = PiggyBank.new
      coin = "50p"
      piggy_bank.insert(coin)
      expect(piggy_bank.smash).to eq coin
    end
  end
end