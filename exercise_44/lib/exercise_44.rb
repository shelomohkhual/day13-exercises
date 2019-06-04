def partition(array,num)
    sa=[]
    ba=[]
    array.each do |x|
        if x >= num
            ba << x
        else
            sa << x
        end
    end
    return ga=sa,ba
end

def merge(h1,h2)
    merged={}
    merged.merge!(h1,h2)
    return merged
end

def censor(string,arr)
    newstring=string.split(" ")
    final=Array.new
    newstring.each{|word|final.push(arr.include?(word.downcase) ? word.gsub(/[aeiouAEIOU]/,"*") : word)}
    final=final.join(" ")
    return final
  end

def power_of_two?(number)
    return false if number == 0
    while(number % 2  == 0)
      number = number / 2
    end
    return false if number > 1
    true
end
  
def palindrome?(string)
    rvsd=[]
    newstring=string.split("")
    (1..newstring.length).each do
        rvsd << newstring.pop
        end
    rvsd=rvsd.join("")
    if rvsd == string
        return true 
    else
        return false
    end
end

def substrings(string)
    result = []
    newstring = string.split("")
    repeat = newstring.length
    (0..repeat-1).each do |i|
        (i..repeat-1).each do |j|
            result.push(newstring[i..j].join)
        end
    end
    return result
end

def palindrome_substrings(string)
    palsub = []
    sub = substrings(string)
    sub.each do |x|
        if palindrome?(x) && x.length > 1
            palsub.push x
        end
    end
    return palsub
end
