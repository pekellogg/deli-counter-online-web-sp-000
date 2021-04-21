def add_cus(deli, cus)
    deli.push(cus)
end

def cus_queue(deli)
    new_deli = []
    deli.each_with_index do |customer, index|
        phrase = "#{index += 1}. #{customer}"
        new_deli.push(phrase)
    end
    new_deli
end

def line(deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        cus = cus_queue(deli)
        puts "The line is currently: #{cus.join(" ")}"
    end
end

def take_a_number(deli, name)
    new_cus = add_cus(deli, name)
    cus_order = cus_queue(deli)
    cus_amount = cus_order.length
    puts "Welcome, #{name}. You are number #{cus_amount} in line."
end

def now_serving(deli)
    if !deli.empty?
        current_cus = deli.shift
        puts "Currently serving #{current_cus}."
    else
        puts "There is nobody waiting to be served!"
    end
end