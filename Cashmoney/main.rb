require_relative "Register.rb"

def get_total()
  total = -1
  while total == nil || total < 0
    print "Enter the total: "
    total = Float(gets.chomp) rescue nil
  end
  return total 
end

register = Register.new
total = get_total()
register.print_coins(register.get_change(total))
