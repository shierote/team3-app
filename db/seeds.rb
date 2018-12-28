require 'boxmuller.rb'

bm = BoxMuller.new(1.0, 0.2)
date = Date.today

100.times do
  puts "========================="
  user = User.create(
     email: Faker::Internet.email, 
     password: Faker::Internet.password
  )
  puts user
  10.times do
    date = date.next_month
    p_n = rand(1..4)
    fee = user.fee.new(
      month: date, 
      people_number: p_n,
      electricity: bm.rand*5392*p_n,
      gas: bm.rand*3080*p_n,
      water: bm.rand*2189*p_n
    )
    fee.save
    puts fee
  end
end
