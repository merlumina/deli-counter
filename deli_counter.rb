katz_deli = []

def line(katz_deli)
    current_line = "The line is currently"
    if katz_deli == []
        puts current_line += " empty."
    else
        current_line += ":"
        katz_deli.each_with_index {|name, index| current_line += " #{index + 1}. #{name}"}
        puts current_line
        end
end

def take_a_number(katz_deli, new_customer)
    katz_deli.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli == []
        puts "There is nobody waiting to be served!"
    else
        current_customer = katz_deli.shift
        puts "Currently serving #{current_customer}."
    end
end