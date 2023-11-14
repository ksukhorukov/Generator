#!/usr/bin/env ruby

require 'byebug'
require 'pp'

class Generator 
  attr_reader :dictionary, :size
  
  PASSWORD_SIZE = 36

  def initialize(size = 15)
    @size = size 
    @dictionary = ('а'..'я').to_a + 
      ('А'..'Я').to_a + 
      ('a'..'z').to_a + 
      ('A'..'Z').to_a + 
      ('0'..'9').to_a +
      ('!'..'?').to_a
  end 

  def generate_permutations_of_the_size(n = 1)
    if n == 1 then dictionary.map { |c| puts c } end 
  end

  private

  def to_array(e)
    result = e.map { |c| c }
    puts result
  end 
end

o = Generator.new 

o.generate_permutations_of_the_size
