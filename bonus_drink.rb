class BonusDrink
  def self.total_count_for(amount)
    return amount if amount < 3
    bonus = amount / 3
    rest = amount % 3
    return amount - rest + self.total_count_for(bonus + rest)
  end
end
