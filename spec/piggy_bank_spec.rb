require_relative '../lib/piggy_bank'

describe PiggyBank do
  it 'Should accept coins' do
    piggy_bank = PiggyBank.new
    coin = '50p'
    expect { piggy_bank.insert(coin) }.not_to raise_error
  end
end