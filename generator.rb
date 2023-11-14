#!/usr/bin/env ruby

require 'byebug'
require 'pp'

class Generator 
  attr_accessor :dictionsry, :dictionary, :total_dick
  attr_reader :total_dictionary, :spicial_symbolsm, :total_dick, :size

  PASSWORD_SIZE = 36

  def initialize(size = 15)
    @size = size 
    @total_dick = ('а'..'я').to_a + 
      ('А'..'Я').to_a + 
      ('a'..'z').to_a + 
      ('A'..'Z').to_a + 
      ('0'..'9').to_a +
      ('!'..'?').to_a
  end 

  private

  def to_array(e)
    result = e.map { |c| c }
    puts result
  end 

  def generate_permutations_of_the_size(n)
  end
end

o = Generator.new 

puts o.total_dick.join('')
