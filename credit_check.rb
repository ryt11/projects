
def card_validation(card_num)
valid = false
nums = card_num.split('')
num_len = nums.length
mutated = []

if card_num.length.even?
  (num_len - 1).times do |i|
    if i.even?
      mutated << (nums[i].to_i * 2)
    else
      mutated << (nums[i].to_i)
    end
  end
else
  (num_len - 1).times do |i|
    if i.odd?
      mutated << (nums[i].to_i * 2)
    else
      mutated << (nums[i].to_i)
    end
  end

end

second_mutation = []
mutated.each do |mut|

  if mut.to_s.length > 1
    temp_arr = mut.to_s.split('')
    sum = 0
    temp_arr.each do |digit|
      sum += digit.to_i
    end
    second_mutation << sum
  else
    second_mutation << mut
  end
end

sum = 0 + card_num[-1].to_i
second_mutation.each do |num|
  sum += num

end

if sum % 10 == 0
  valid = true
end


if valid
  puts "The account number #{card_num} has been validated."
else
  puts "Account number #{card_num} validation unsuccessful."
end
end

card_validation("5541808923795240")


#Valid Account numbers: 5541808923795240, 4024007136512380, 6011797668867828
#Invalid Account numbers: 5541801923795240, 4024007106512380, 6011797668868728
#American Express Valid Account Number: 342804633855673
#American Express Invalid Account Number: 342801633855673
