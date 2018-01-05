require 'pry'

def start
  puts "Enter a list of letters"
  action = gets.strip

  array = action.split(',')

  merged = letter_to_ascii(array)

  puts "Would you like to sort?"
  puts "1) ASC"
  puts "2) DESC"
  response = gets.to_i
  case response
    when 1
      order_asc(merged)
    when 2
      order_desc(merged)
    else
      puts "Enter valid response"
  end

end

def letter_to_ascii(array)
  print(merged)
  merged
end

def print(hash)
  hash.each { |hash| puts hash }
end

def order_asc(merged)
  sort = merged.sort_by(&:to_a)
  print(sort)
  continue
end


def order_desc(merged)
  sort = merged.sort_by(&:to_a).reverse!
  print(sort)
  continue
end

def continue
  puts "Again?"
  puts "1) Yes"
  puts "2) No"
  response = gets.to_i
  case response
    when 1
      start
    when 2
      puts "have a good day!"
      exit 0
    else
      puts "Enter valid response"
  end
end

start
