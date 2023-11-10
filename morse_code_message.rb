MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z',
  ' ' => ' '
}.freeze


def decode_char(morse_code)
  MORSE_CODE[morse_code] || '?'
end

def decode_word(morse_word)
  morse_code_to_words = morse_word.split
  word = morse_code_to_words.map { |code| decode_char(code) }.join
end

def decode_sentence(morse_sentence)
  morse_code_to_sentence = morse_sentence.split('   ')
  sentence = morse_code_to_sentence.map { |word| decode_word(word) }.join(' ')
end