#!/usr/bin/env ruby

require 'byebug'
require 'pp'

class Generator 
  attr_reader :dictionary, :size, :permutations
  
  PASSWORD_SIZE = 36

  def initialize(size = 15)
    return usage if ARGV.count < 2

    @permutations = []
    @size = size 
    @dictionary = dictionary_generator

    generate_all_permutations(size)
  end 

  def usage
    puts "Usage: #{$0} -n <number_of_chars>"
  end 

  def generate_permutations_of_the_size(n = 1)
    dictionary.map { |c| puts c } if n == 1 

    current_permutation = dictionary[0] * n

    for i in 0...n do 
      for j in 1...dictionary.size do 
        current_permutation[i] = dictionary[j]
        puts current_permutation
        @permutations << current_permutation
      end
    end

    @permutations = @permutations.uniq
  end


  def generate_all_permutations(n = 1)
    for i in 1...size + 1 do 
      generate_permutations_of_the_size(i)
    end 
  end

  def print_permutations
    permutations.each { |e| puts e }
  end

  private

  def to_array(e)
    result = e.map { |c| c .to_s }
  end 

  def dictionary_generator
    ('а'..'я').to_a + 
      ('А'..'Я').to_a + 
      ('a'..'z').to_a + 
      ('A'..'Z').to_a + 
      ('0'..'9').to_a +
      ('!'..'?').to_a
  end
end

o = Generator.new(20)

# o.print_permutations
