def average(num1, num2)
    (num1 + num2).to_f/2
end

def average_array(array)
    new_array=Array.new
    sum_array=array.inject(0){|sum,x| sum + x}/array.length.to_f
    new_array= sum_array 
    return new_array
end

def repeat(string,num)
    newstring=""
    newstring =  string * num
end

def yell(string)
    yelled=""
    yelled= "#{string.upcase}!"
end

def alternating_case(string)
    words=Array.new
    words=string.split(" ")
    new_array=Array.new
    words.each_with_index do |word, index|
        if index.even?
            new_array << word.upcase
        else 
            new_array << word.downcase
        end
    end
    return new_array.join(" ")
end

def hipsterfy(word)
    word.sub(/[aeiou](?=[^aeiou]*\z)/,"")
end

def vowel_counts(string)
    string=string.downcase
    string=string.gsub(/[^aeiou]/,"")
    string=string.split("")
    string.each.reduce(Hash.new(0)) {|c,f| c[f] += 1 }
end

def caesar_cipher(message,num)
    caesar_string = ""
    message.scan (/./) do |i|
      if ("a".."z").include? (i.downcase) # Identify letters only.
        num.times {i = i.next}
      end
      caesar_string << i[-1]
    end
    return caesar_string


  end
