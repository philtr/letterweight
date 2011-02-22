module Letterweight
  def self.length(string)
    char_array = string.split('')
    sum = char_array.inject(0) do |sum, l|
      sum + self::width(l)
    end
  end

  def self.width(letter)
    return self::length(letter) if letter.length > 1
    case letter
    when ''  then return 0.00
    when 'a' then return 0.67
    when 'b' then return 0.67
    when 'c' then return 0.67
    when 'd' then return 0.67
    when 'e' then return 0.67
    when 'f' then return 0.31
    when 'g' then return 0.67
    when 'h' then return 0.67
    when 'i' then return 0.31
    when 'j' then return 0.67
    when 'k' then return 0.67
    when 'l' then return 0.31
    when 'm' then return 1.00
    when 'n' then return 0.67
    when 'o' then return 0.67
    when 'p' then return 0.67
    when 'q' then return 0.67
    when 'r' then return 0.31
    when 's' then return 0.67
    when 't' then return 0.31
    when 'u' then return 0.67
    when 'v' then return 0.67
    when 'w' then return 0.80
    when 'x' then return 0.67
    when 'y' then return 0.67
    when 'z' then return 0.67
    when 'A' then return 0.80
    when 'B' then return 0.80
    when 'C' then return 0.80
    when 'D' then return 0.80
    when 'E' then return 0.80
    when 'F' then return 0.80
    when 'G' then return 0.80
    when 'H' then return 0.80
    when 'I' then return 0.31
    when 'J' then return 0.80
    when 'K' then return 0.31
    when 'L' then return 0.31
    when 'M' then return 1.00
    when 'N' then return 0.80
    when 'O' then return 0.80
    when 'P' then return 0.80
    when 'Q' then return 0.80
    when 'R' then return 0.80
    when 'S' then return 0.80
    when 'T' then return 0.80
    when 'U' then return 0.80
    when 'V' then return 0.80
    when 'W' then return 1.15
    when 'X' then return 0.80
    when 'Y' then return 0.80
    when 'Z' then return 0.80
    when ' ' then return 0.38
    when ',' then return 0.31
    when '.' then return 0.31
    when ';' then return 0.31
    when '?' then return 0.80
    when '@' then return 1.20
    when '$' then return 0.80
    when '%' then return 0.67
    when '^' then return 0.50
    when '*' then return 0.38
    when '(' then return 0.31
    when ')' then return 0.50
    when '&' then return 0.80
    when '!' then return 0.31
    when '-' then return 0.31
    when "'" then return 0.31
    when '"' then return 0.67
    when '/' then return 0.31
    when '|' then return 0.31
    when '`' then return 0.31
    when '~' then return 0.67
    when '[' then return 0.50
    when ']' then return 0.50
    when '{' then return 0.50
    when '}' then return 0.50
    when '=' then return 0.67
    when '+' then return 0.67
    else return 0.67
    end
  end

  String.class_eval do
    def to_em
      Letterweight::length(self)
    end
  end
end