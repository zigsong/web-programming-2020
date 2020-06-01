puts "숫자를 입력해주세요"
num = gets.chomp.to_i 

if num % 4 == 0 && num % 100 != 0
    puts "윤년입니다."
else
    if num % 400 == 0 
        puts "윤년입니다."
    else
        puts "윤년이 아닙니다."
    end
end