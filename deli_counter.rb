def add_cus(deli, cus)
    deli.push(cus)
end

def line(deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        cus = []
        deli.each_with_index do |person, index|
            cus << "#{index + 1}. #{person}"
        end
        puts "The line is currently: #{cus.join(" ")}"
    end
end

def take_a_number(deli, name)
    new_cus = add_cus(deli, name)
    puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
    if !deli.empty?
        # current_cus = deli.shift
        puts "Currently serving #{deli.shift}."
    else
        puts "There is nobody waiting to be served!"
    end
end