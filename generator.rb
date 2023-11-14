#!/usr/bin/env ruby

require 'byebug'
require 'pp'

class Generator 
  attr_accessor :dictionsry, :dictionary, :total_dick
  attr_reader :total_dictionary, :spicial_symbolsm, :total_dick

  PASSWORD_SIZE = 36

  def initialize
    @total_dictionary = ('а'..'я').to_a + 
      ('А'..'Я').to_a + 
      ('a'..'z').to_a + 
      ('A'..'Z').to_a + 
      ('0'..'9').to_a +
      ('!'..'?').to_a
  
    pp total_dictionary
  end 

  private

  def to_array(e)
    result = e.map { |c| c }
    puts result
  end 
end

o = Generator.new 

puts o.total_dick
