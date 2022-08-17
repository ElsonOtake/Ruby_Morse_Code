def decode_char(code)
  morse_dict = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
    "-----" => "0"
  }
  morse_dict[code]
end

def decode_word(morse_word)
  roman_word = ""
  morse_word.split.each { |letter|
    roman_word << decode_char(letter)
  }
  return roman_word
end

def decode(text)
  answer = ""
  text.split("   ").each { |word|
    answer << "#{decode_word(word)} "
  }
  return answer.strip
end

p decode("-- -.--   -. .- -- .")
p decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
