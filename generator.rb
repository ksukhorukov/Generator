#!/usr/bin/env ruby

require 'byebug'
require 'pp'

class Generator 
  attr_reader :dictionary, :size, :permutations
  
  PASSWORD_SIZE = 36

  def initialize(size = 15)
    @permutations = []
    @size = size 
    @dictionary = ('а'..'я').to_a + 
      ('А'..'Я').to_a + 
      ('a'..'z').to_a + 
      ('A'..'Z').to_a + 
      ('0'..'9').to_a +
      ('!'..'?').to_a

    generate_all_permutations(size)
  end 

  def generate_permutations_of_the_size(n = 1)
    if n == 1 then dictionary.map { |c| puts c } end 

    current_permutation = dictionary[0] * n

    for i in 0...n do 
      for j in 1...dictionary.size do 
        current_permutation[i] = dictionary[j]
        permutations << current_permutation
      end
    end
  end


  def generate_all_permutations(n = 1)
    for i in 1...size do 
      generate_permutations_of_the_size(i)
    end 
  end

  def print_permutations
    permutations.each { |i| puts permutations[i] }
  end

  private

  def to_array(e)
    result = e.map { |c| c }
  end 
end

o = Generator.new(5)

o.print_permutations
