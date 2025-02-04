def caesar_cipher(string, shift_factor)
  array_output = Array.new
  string.each_char do |char|
    if ((char >= 'a' && char <= 'z') || (char >= 'A' && char <= 'Z'))
      if is_upper?(char)
        new_char = encrypt_char(char.downcase, shift_factor)
        array_output.push(new_char.upcase)
      else
        new_char = encrypt_char(char, shift_factor)
        array_output.push(new_char)
      end
    else
      array_output.push(char)
    end
  end
  p array_output.join
end

def encrypt_char(ch, shift_factor)
  ordinal = ch.ord + shift_factor
  if ordinal > 122
    ordinal = ordinal - 26
  end
  ordinal.chr
end

def is_upper?(ch)
  ch == ch.upcase
end

caesar_cipher("What a string!", 5)