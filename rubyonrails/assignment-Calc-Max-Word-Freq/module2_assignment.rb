#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer

  attr_accessor :highest_wf_count, :highest_wf_words, :content, :line_number
  
  def initialize(content,line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency
  end

  def calculate_word_frequency
    word_freq = Hash.new(0)
    words_array = @content.split
    words_array.each do |word|
                      word.downcase!
                      word_freq[word]+= 1
                      end                        
    word_freq = word_freq.select {|word,count| count == word_freq.values.max}
    @highest_wf_count = word_freq.values[0]
    @highest_wf_words = word_freq.keys
    end
end
#  Implement a class called Solution. 
class Solution

  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines
  
  def initialize
    @analyzers = []
  end
  
  def analyze_file
    IO.readlines('test.txt').each.with_index do |line,line_num| 
    line_analyzer = LineAnalyzer.new(line,line_num+1)
    @analyzers.push(line_analyzer)
    end

  end
  def calculate_line_with_highest_frequency

    @highest_count_words_across_lines = []
    max_count_arr = []
    @analyzers.each do |n|
        max_count_arr << n.highest_wf_count
    end
    @highest_count_across_lines = max_count_arr.max
    max_lines = @analyzers.select {|la| la.highest_wf_count == @highest_count_across_lines}
    max_lines.each do|n|
        @highest_count_words_across_lines.push(n)
    end         
  end

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
  def print_highest_word_frequency_across_lines
      puts "The following words have the highest word frequency per line:" 
      @highest_count_words_across_lines.each do |n|
        puts "#{n.highest_wf_words} appears in #{n.line_number}"
      end
  end
  
end


