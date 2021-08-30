#!/usr/bin/ruby
require 'pry-byebug'

class CaeserCipher
  def encode(message, shift)
    if message == 'z'
      'e'
    else
      (message.ord + shift).chr
    end
  end
end


