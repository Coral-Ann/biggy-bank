class PiggyBank
  def insert(coin)
    @coin = coin
  end

  def shake
    @coin.nil? ? "There's no sound." : "clink!"
  end

  def smash
    @coin.nil? ? "It's empty!" : @coin
  end
end