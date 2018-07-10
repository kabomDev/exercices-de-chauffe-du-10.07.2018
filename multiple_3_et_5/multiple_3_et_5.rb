def integers_below(n)
    i = 0
    y = 0
    for i in 1...n.to_i
        if i % 3 == 0 || i % 5 == 0
            y += i
        end
    end
    p y.to_s
end
integers_below_10("10")

def integers_below_1000(n)
    i = 0
    y = 0
    for i in 1...n.to_i
        if i % 3 == 0 || i % 5 == 0
            y += i
        end
    end
    p y.to_s
end
integers_below_1000("1000")
