require 'pry'

def start
  puts "Enter a list of letters"
  action = gets.strip

  array = action.split(',')

  letter_to_ascii(array)

  puts "Would you like to sort?"
  puts "1) ASC"
  puts "2) DESC"
  case response
    when 1
      order_asc(merged_array)
    when 2
      order_desc(merged_array)
    else
      "Enter valid response"
  end

end

def letter_to_ascii(array)
  merged_array = []
  array.map do |char|
    peice = {char => char.ord}
    merged_array << peice

    puts peice
  end
  merged_array
end

def order_asc(merged)
  puts "comming soon"
  merged.sort_by { |hsh| hsh[:zip] }
end


def order_desc(merged)
  puts "comming soon"
end

start
