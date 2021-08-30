require 'rspec'
require './lib/main'

RSpec.describe CaeserCipher do

  describe '#encode' do

    it 'encodes a single letter' do
      expect(subject.encode('b', 3)).to eql('e')
    end

    it 'encodes another single letter' do
      expect(subject.encode('x', 4)).to eql('b')
    end

    it 'encodes all english alphabets' do
      expect(subject.encode('abcdefghijklmnopqrstuvwxyz', 5)).to eql('fghijklmnopqrstuvwxyzabcde')
    end

    it 'encodes a capital letter while preserving case' do
      expect(subject.encode('B', 3)).to eql('E')
    end

    it 'encodes another capital letter while preserving case' do
      expect(subject.encode('X', 3)).to eql('A')
    end

    it 'encodes all capital english alphabets' do
      expect(subject.encode('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 5)).to eql('FGHIJKLMNOPQRSTUVWXYZABCDE')
    end

    it 'doesnot encode non-alphabet letters' do
      expect(subject.encode('!12@&!', 3)).to eql('!12@&!')
    end

    it 'encodes a sentence' do
      expect(subject.encode('rafting is fun', 2)).to eql('tchvkpi ku hwp') 
    end

    it 'encodes a sentence with punctuation' do
      expect(subject.encode('hello, this is fun is it not?', 12)).to eql('tqxxa, ftue ue rgz ue uf zaf?')
    end

    it 'encodes a sentence with a high shift value' do
      expect(subject.encode('can YOU encode THIS???', 155)).to eql('bzm XNT dmbncd SGHR???')
    end

    it 'encodes a sentence with even higher shift value' do
      expect(subject.encode('can YOU encode THIS???', 1550)).to eql('sqd OEK udsetu JXYI???')
    end
  end
end
