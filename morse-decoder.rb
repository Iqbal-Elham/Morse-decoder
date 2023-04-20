CODE_MORSE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }.freeze
  
  # Method to decode a Morse code character
  def decode_char(char)
    CODE_MORSE[char]
  end
  
  # print (decode_char('.-')) + "\n"
  # A
  
  # Method to decode an entire word in Morse code
  def decode_word(word)
    word_arr = word.split
    decode_word = ''
  
    word_arr.each do |char|
      decode_word += decode_char(char)
    end
  
    decode_word
  end
  
  # Method to decode the entire message in Morse code
  def decode_message(message)
    string_arr = message.split('  ')
    decoded_message = ''
  
    string_arr.each do |word|
      decoded_message += decode_word(word)
      decoded_message += ' '
    end
  
    decoded_message.strip
  end
  
  p(decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
  # A BOX FULL OF RUBIES