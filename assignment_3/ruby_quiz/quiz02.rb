drinks = Hash["water" => 5, "milk" => 5, "soju" => 5, "beer" => 5]
money = 0 # 파일을 다시 실행하니까 total sale이 안 바뀜... 

while(true)
    puts "Which drink you gonna take?"
    puts "choice: #{drinks["water"] == 0 ? "" : "water/"} #{drinks["milk"] == 0 ? "" : "milk/"} #{drinks["soju"] == 0 ? "" : "soju/"} #{drinks["beer"] == 0 ? "" : "beer"}"
    order = gets.chomp

    file = File.new("stock.txt", "a")

    case order 
        when "water"
            if drinks["water"] > 0 
                puts "Here's water"
                drinks["water"] -= 1
                money += 1000
                # file.puts "water: #{drinks["water"]}"
                file.puts "water sold: +1000"
            else
                puts "water out of sold"
            end            
        when "milk"
            if drinks["milk"] > 0
                puts "Here's milk"
                drinks["milk"] -= 1
                money += 1500
                # file.puts "milk: #{drinks["milk"]}"
                file.puts "milk sold: +1500"
            else
                puts "milk out of sold"
            end
        when "soju"
            if drinks["soju"] > 0 
                puts "Here's soju"
                drinks["soju"] -= 1
                money += 2000
                # file.puts "soju: #{drinks["soju"]}"
                file.puts "soju sold: +2000"
            else
                puts "soju out of sold"
            end
        when "beer"
            if drinks["beer"] > 0
                puts "Here's beer"
                drinks["beer"] -= 1
                money += 2500
                # file.puts "beer: #{drinks["beer"]}"
                file.puts "beer sold: +2500"
            else 
                puts "beer out of sold"
            end
        when "quit"
            break
        else
            puts "We don't have that drink."
    end

    if(drinks["water"] == 0 && drinks["milk"] == 0 && drinks["soju"] == 0 && drinks["beer"] == 0)
        drinks = Hash["water" => 5, "milk" => 5, "soju" => 5, "beer" => 5]
        puts "Let's fill stock"        
        file.puts "total sale: #{money}"
        puts "현재 매출: #{money}"
        file.puts "========== refill stock =========="
    end

    file.close
end



