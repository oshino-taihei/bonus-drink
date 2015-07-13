class BonusDrink
  BONUS = 3
  def self.total_count_for(amount)
    return amount if amount < BONUS
    bonus, rest = amount.divmod(BONUS)
    return amount + total_count_for(bonus + rest) - rest
  end
end
