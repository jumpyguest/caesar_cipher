# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  context 'when shift factor is 5' do
    let(:shift_factor) { 5 }
    let(:string) { 'What' }

    it 'works with Camel case word' do
      result = caesar_cipher(string, shift_factor)
      expect(result).to eq('Bmfy')
    end

    let(:string_non_alphabet) { 'What!' }
    it 'works with non-alphabet character' do
      result = caesar_cipher(string_non_alphabet, shift_factor)
      expect(result).to eq('Bmfy!')
    end

    let(:string_mutliple_word) { 'What a string!' }
    it 'works with multiple words' do
      result = caesar_cipher(string_mutliple_word, shift_factor)
      expect(result).to eq('Bmfy f xywnsl!')
    end
  end
end

describe '#encrypt_char' do
  context 'when shift factor is 5' do
    let(:shift_factor) { 5 }

    it 'works with small case letter' do
      char = encrypt_char('a', shift_factor)
      expect(char).to eq('f')
    end

    it 'works with big case letter' do
      char = encrypt_char('A', shift_factor)
      expect(char).to eq('F')
    end
  end
end
