module Letterweight
  def self.length(string)
    char_array = string.split('')
    sum = char_array.inject(0) do |sum, l|
      sum + self::width(l)
    end
  end

  def self.width(letter)
    return self::length(l) if letter.length > 1
    case letter
    when '' then return 0.0
    when 'a' then return 2.67
    when 'b' then return 2.67
    when 'c' then return 2.67
    when 'd' then return 2.67
    when 'e' then return 2.67
    when 'f' then return 1.23
    when 'g' then return 2.67
    when 'h' then return 2.67
    when 'i' then return 1.23
    when 'j' then return 2.67
    when 'k' then return 2.67
    when 'l' then return 1.23
    when 'm' then return 4
    when 'n' then return 2.67
    when 'o' then return 2.67
    when 'p' then return 2.67
    when 'q' then return 2.67
    when 'r' then return 1.23
    when 's' then return 2.67
    when 't' then return 1.23
    when 'u' then return 2.67
    when 'v' then return 2.67
    when 'w' then return 3.2
    when 'x' then return 2.67
    when 'y' then return 2.67
    when 'z' then return 2.67
    when 'A' then return 3.2
    when 'B' then return 3.2
    when 'C' then return 3.2
    when 'D' then return 3.2
    when 'E' then return 3.2
    when 'F' then return 3.2
    when 'G' then return 3.2
    when 'H' then return 3.2
    when 'I' then return 1.23
    when 'J' then return 3.2
    when 'K' then return 1.23
    when 'L' then return 1.23
    when 'M' then return 4
    when 'N' then return 3.2
    when 'O' then return 3.2
    when 'P' then return 3.2
    when 'Q' then return 3.2
    when 'R' then return 3.2
    when 'S' then return 3.2
    when 'T' then return 3.2
    when 'U' then return 3.2
    when 'V' then return 3.2
    when 'W' then return 4.6
    when 'X' then return 3.2
    when 'Y' then return 3.2
    when 'Z' then return 3.2
    when ' ' then return 1.5
    when ',' then return 1.23
    when '.' then return 1.23
    when ';' then return 1.23
    when '?' then return 3.2
    when '@' then return 4.8
    when '$' then return 3.2
    when '%' then return 2.67
    when '^' then return 2
    when '*' then return 1.5
    when '(' then return 1.23
    when ')' then return 2
    when '&' then return 3.2
    when '!' then return 1.23
    when '-' then return 1.23
    when "'" then return 1.23
    when '"' then return 2.67
    when '/' then return 1.23
    when '|' then return 1.23
    when '`' then return 1.23
    when '~' then return 2.67
    when '[' then return 2
    when ']' then return 2
    when '{' then return 2
    when '}' then return 2
    when '=' then return 2.67
    when '+' then return 2.67
    else return 2.67
    end
  end

  String.class_eval do
    def to_em
      Letterweight::length(self) / 4.0
    end
  end
end