def partition(array,num)
    sa=[]
    ba=[]
    array.each do |x|
        if num < x
            ba << x
        elsif num >= x
            sa << x
        end
        aa=[sa,ba]
    end
end