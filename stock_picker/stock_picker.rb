def sunday_trader(array)
    sell = 0
    buy = 0
    profit = 0
    day_of_profit = []
    
    
    for i in 0...array.length
        for j in (i+1)...array.length
            if ((array[j] - array[i]) > profit) 
                profit = (array[j] - array[i]) 
                buy = i
                sell = j
            end
        end
    end
    
    day_of_profit << buy << sell
    print day_of_profit
    
end

sunday_trader([17,3,6,9,15,8,6,1,10])