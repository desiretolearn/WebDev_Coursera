puts 3
3.times{puts "Hello World"}

single_quote = 'Hello sushma \n Hello Vamsi \n Hello Monish'
double_quote = "Hello sushma \n Hello Vamsi \n Hello Monish"

puts single_quote
puts double_quote

def multiply(one,two)
	"#{one} multiplied by #{two} equals #{one * two}"
end
puts multiply(3,5)

my_name = "sushma"
puts my_name.capitalize
my_name.capitalize!
my_name[0] = ' '
puts my_name
puts my_name.lstrip!
puts my_name

cur_weather = %Q{It's a hot day outside and this is in doublequotes}
cur_weather.lines do |line|
	line.sub! 'hot','rainy'
	puts "#{line.strip}"
end

arr_a = [1,"two", :three]
puts arr_a[1]

arr_words = %w{Hello all this is sushma!}
puts arr_words[-2]
puts "#{arr_words.first}-#{arr_words.last}"
p arr_words[-3,2]
p arr_words[2..4]

puts arr_words.join(',')

arr_words.pop
puts arr_words.join(',')
arr_words.shift
puts arr_words.join(',')

arr_b = [1,3,4,7,8,10] 
arr_b.each{|n| puts n}
 arr_b.each{|n| print n}

 arr_c = arr_b.select {|n| n>4}
 puts arr_c

 arr_d = arr_b.reject {|n| n>4}
 puts arr_d

 arr_b.map! {|n| n*2} 
 puts arr_b

editor_props = {"font" => "Arial", "size" => 12}
 puts editor_props.length
 puts editor_props["font"]
 editor_props["color"] = "Red"
 editor_props.each_pair do |key,value|
 	puts "Key : #{key} Value : #{value}"
 end

 word_freq = Hash.new(0)
p word_freq
 sent = "chicka chicka boom boom"
sent.split.each do |w|
	p w
	word_freq[w] +=1
end
p word_freq

family_tree = {oldest: "Vamsi",older:"Sushma"}
family_tree[:youngest] = "Monish"
puts family_tree

def adjust_color (props = {foreground: "red", background: "yellow"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
		puts "Background: #{props[:background]}" if props[:background]
end 
adjust_color
adjust_color({:foreground=>"pink"})
adjust_color({:background=>"pink"})

adjust_color({foreground:"pink",:background=>"purple"})

class Person 
      def initialize (name,age)
        @name = name
        @age = age
    end
    def name
    	@name
    end
    def name= (new_name)
    	@name = new_name
    end
    def get_info
      @additional_info = "Intersting"
      "Name:#{@name}, Age: #{@age}"
    end
  end
  person1 = Person.new("Joe",45)
  p person1.instance_variables
  puts person1.get_info
  p person1.instance_variables
  puts person1.name
  person1.name = "Sushma"
  puts person1.name



