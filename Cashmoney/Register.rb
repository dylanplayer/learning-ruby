require_relative "Denomination.rb"

class Register
  def initialize
    @DENOMINATIONS = [
      Denomination.new("toonie", 2.0),
      Denomination.new("loonie", 1.0),
      Denomination.new("quarter", 0.25),
      Denomination.new("dime", 0.1),
      Denomination.new("nickel", 0.05)
    ]
  end

  def round_to_nickel(total)
    rounded_total = (total * 20).round.to_f / 20
    return rounded_total
  end

  def get_change(total)
    total = (round_to_nickel(total)).to_f
    coins = {}
    @DENOMINATIONS.each do | denomination |
      value = denomination.get_value
      name = denomination.get_name
      count = 0
      while total - value >= 0
        count += 1
        total -= value
      end
      if count > 0
        coins[name] = count
      end
      total = total.round(2)
    end
    return coins
  end

  def print_coins(coins)
    output = "You need to despense "
    coin_types = coins.keys.length
    coin_counter = 0
    counter = 0
    if coin_types > 0
      coins.each do | coin, qty |
        counter += 1
        coin_counter += qty
        if coin_types == 1 && qty < 2
          output += "#{qty} #{coin}.";
        elsif coin_types == 1 && qty > 1
          output += "#{qty} #{coin}s.";
        elsif qty > 1 && counter == coin_types
          output += "and #{qty} #{coin}s.";
        elsif counter == coin_types
          output += "and #{qty} #{coin}.";
        elsif coin_types == 2 && qty > 1
          output += "#{qty} #{coin}s ";
        elsif coin_types == 2
          output += "#{qty} #{coin} ";
        elsif qty > 1
          output += "#{qty} #{coin}s, ";
        else
          output += "#{qty} #{coin}, ";
        end
      end
    else
      output = "You don't need to dispense any change"
    end
    puts output
    puts "Total coins: #{coin_counter}"   
  end
end  