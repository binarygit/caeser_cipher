#!/usr/bin/ruby
require 'pry-byebug'

class CaeserCipher
  def encode(message, shift)
    message.split('').map do |character|
      if alphabet?(character)
        encoded_character = shifted_ascii_value(ascii_value(character), shift).chr
        encoded_character.capitalize! if capital?(character)
        encoded_character
      else
        character
      end
    end
           .join
  end

  def shifted_ascii_value(ascii_value, shift = 0)
    potential_ascii_value = ascii_value + shift

    if (97..122).include?(potential_ascii_value)
      potential_ascii_value
    else
      potential_ascii_value = (potential_ascii_value - 122) + 96
      shifted_ascii_value(potential_ascii_value)
    end
  end

  def ascii_value(character)
    character.downcase.ord
  end

  def capital?(character)
    character.match?(/[A-Z]/)
  end

  def alphabet?(character)
    character.match?(/^[A-Z]+$/i)
  end
end
