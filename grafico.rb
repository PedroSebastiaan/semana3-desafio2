
ary = [5, 3, 2, 5, 10]

a = ary.map {|x| x*2}


def chart (array)

    x = array.max

    array.each do |e|
        1.times do
            print "| "
        end
        e.times do
            print "*"
        end
        print "\n"
    end
    1.times do
        print "> "
    end
    x.times do
        print"-"
    end
    print "\n"
end

chart a