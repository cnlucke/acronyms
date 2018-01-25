require "pry"

def is_palindrome?(word)
  if !word.is_a?(String)
    raise ArgumentError
  elsif word.empty?
    false
  else
    tested_word = word.downcase.gsub(/\W/, "")
    tested_word == tested_word.reverse
  end
end


# FACTORIAL 4 is 4 x 3 x 2 x 1


# RangeError if input exceeds 10000
def old_factorial(int)
  if !int.is_a?(Integer) || int < 0
    raise ArgumentError
  end

  if int > 10000
    raise RangeError
  end

  final = 1
  int.downto(1) do |i|
    final = final * i
  end

  final
end

def factorial(int)
  if int == 1
    1
  else
    int * factorial(int-1)
  end
end
