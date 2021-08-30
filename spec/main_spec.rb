require 'rspec'
require './lib/main'

RSpec.describe CaeserCipher do

  describe '#encode' do

    it 'encodes a letter' do
      expect(subject.encode('b', 3)).to eql('e')
    end

    it 'encodes another letter' do
      expect(subject.encode('a', 1)).to eql('b')
    end

    it 'encodes yet another letter' do
      expect(subject.encode('z', 5)).to eql('e')
    end

  end
end
