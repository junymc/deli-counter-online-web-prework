require 'pry'

# def line(katz_deli)
#   string = "The line is currently:"
#   newkatz_deli = [string]
#    if katz_deli.length == 0
#     puts "The line is currently empty."
#    else
#     katz_deli.each_with_index do |name, index|
#     newkatz_deli << "#{index + 1}. #{name}"
#    end
#    puts newkatz_deli.join(' ')
#  end
# end
#
# def take_a_number(katz_deli, name)
#   number = katz_deli.length + 1
#   katz_deli.push(name)
#   puts "Welcome, #{name}. You are number #{number} in line."
# end
#
# def now_serving(katz_deli)
#   if katz_deli.length == 0
#     puts "There is nobody waiting to be served!"
#   else
#     puts "Currently serving #{katz_deli[0]}."
#     katz_deli.shift
#     katz_deli
#   end
#
# end

# refactor so that we don't need to pass around katz_deli
# also, just print the number being served and not the name
$ticket_number = 0
$katz_deli = []

# def line
#   string = "The line is currently:"
#   newkatz_deli = [string]
#    if katz_deli.length == 0
#     puts "The line is currently empty."
#    else
#     katz_deli.each_with_index do |name, index|
#     newkatz_deli << "#{index + 1}. #{name}"
#    end
#    puts newkatz_deli.join(' ')
#  end
# end

def take_a_number
  number = $katz_deli.length + 1
  $ticket_number += 1
  $katz_deli.push($ticket_number)
  puts "Welcome, your ticket number is #{$ticket_number}. You are number #{number} in line."
end

def now_serving
  if $katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{$katz_deli[0]}."
    $katz_deli.shift
    $katz_deli
  end

end
# for example
# take_a_number
# "Welcome, your number is 23 and you are number 4 in line"

my_line = []
binding.pry
puts "goodbye"
