targets = Array.new
tar1, tar2, tar3, tar4 = nil

tar1 = rand(9)
targets.push(tar1)

while(true)
    tar2 = rand(9)
    if (targets.include?(tar2) == false) 
        targets.push(tar2)
        break;
    else
        next;
    end
end

while(true)
    tar3 = rand(9)
    if (targets.include?(tar3) == false) 
        targets.push(tar3)
        break;
    else
        next;
    end
end

while(true)
    tar4 = rand(9)
    if (targets.include?(tar4) == false) 
        targets.push(tar4)
        break;
    else
        next;
    end
end

# 답 스포당하기 
# print targets
# puts ""

puts "Game Start!" 

try = 0
strike = 0
ball = 0

start_time = Time.new
while (strike != 4)
    answer = gets.chomp

    if answer.to_s.length == 4
        answer_list = answer.split("").to_a.map(&:to_i)
        print answer_list
        puts ""
    else
        puts "Wrong input"
        next
    end

    strike = 0
    ball = 0
    try += 1
    (0..3).each do |i|
        if targets[i] == answer_list[i]
            # puts "strike"
            strike += 1
        else 
            if targets.include?(answer_list[i])
                # puts "ball"
                ball += 1
            else
                # puts "wrong"
            end
        end
    end
    puts "#{strike}S#{ball}B"
    puts "try: #{try}"
end
end_time = Time.new
time_duration = end_time - start_time

puts "What's your name"
name = gets.chomp.to_s

file = File.new("score.txt", "a")
file.puts "이름: #{name}/Try수: #{try}/맞춘 시간: #{time_duration}초"
file.close