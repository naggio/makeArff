# coding: utf-8

#File.open("./training.csv","r") do |file|
#
#  line =  file.gets
#  print line
##  file.each_line do |line|
##    print line
##  end
#end
##Dealer,d0,d1,d2,d3,d4,p1_name,p1_0,p1_1,p1_2,p1_3,p1_4,p1_game,p2_name,p2_0,p2_1,p2_2,p2_3,p2_4,p2_game,p3_name,p3_0,p3_1,p3_2,p3_3,p3_4,p3_game,p4_name,p4_0,p4_1,p4_2,p4_3,p4_4,p4_game,p5_name,p5_0,p5_1,p5_2,p5_3,p5_4,p5_game,p6_name,p6_0,p6_1,p6_2,p6_3,p6_4,p6_game


require 'csv'
class Deck
  def initialize
    @burst_value =22
    @deck={
      'ACE'   => 4,
      'TWO'   => 4,
      'THREE' => 4,
      'FOUR'  => 4,
      'FIVE'  => 4,
      'SIX'   => 4,
      'SEVEN' => 4,
      'EIGHT' => 4,
      'NINE'  => 4,
      'TEN'   => 4,
      'JACK'  => 4,
      'QUEEN' => 4,
      'KING'  => 4,
    }
    @cards = {
      'ACE'   => 11,
      'TWO'   => 2,
      'THREE' => 3,
      'FOUR'  => 4,
      'FIVE'  => 5,
      'SIX'   => 6,
      'SEVEN' => 7,
      'EIGHT' => 8,
      'NINE'  => 9,
      'TEN'   => 10,
      'JACK'  => 10,
      'QUEEN' => 10,
      'KING'  => 10,
    }

  end
  public
  def getBurstCardNum(base_card)
#    puts @cards[base_card]
#    puts @burst_value
    rest_value = @burst_value - @cards[base_card]
    sum = 0
    puts @cards[base_card]
#    if rest_value > 11
#      @deck.each do |num|
#        p num
#      end
#    end
  end
  def getCardIntValue(base_card)
    @cards[base_card]
  end

end

puts "@RELATION blackjack"
puts "@ATTRIBUTE dealer_card	    REAL"
puts "@ATTRIBUTE player1_card_sum   REAL"
puts "@ATTRIBUTE stand_hit          REAL"
puts "@ATTRIBUTE player2_card_1     REAL"
puts "@ATTRIBUTE player2_card_2     REAL"
puts "@ATTRIBUTE player3_card_1     REAL"
puts "@ATTRIBUTE player3_card_2     REAL"
puts "@ATTRIBUTE player4_card_1     REAL"
puts "@ATTRIBUTE player4_card_2     REAL"
puts "@ATTRIBUTE player5_card_1     REAL"
puts "@ATTRIBUTE player5_card_2     REAL"
puts "@ATTRIBUTE player6_card_1     REAL"
puts "@ATTRIBUTE player6_card_2     REAL"


puts "@ATTRIBUTE class 	{WIN,DRAW,LOSE}"

puts "@DATA"
#csv_data = CSV.read("./training.csv",headers: true)
#csv_data = CSV.read("./training_thr12.csv",headers: true)
#csv_data = CSV.read("./training_data_deck_1.csv",headers: true)
#csv_data = CSV.read("./training_data_deck_2.csv",headers: true)
#csv_data = CSV.read("./training_data_deck_default.csv",headers: true)
#csv_data = CSV.read("./test_thr12.csv",headers: true)
csv_data = CSV.read("./train-20171104-1.csv",headers: true)
csv_data.each do |data|
#  puts data["d0"]
  deck = Deck.new()
  #puts deck.getBurstCardNum(data["d0"])
  print deck.getCardIntValue(data["d0"]), ","
  #  print deck.getCardIntValue(data["p1_0"])
  #  print deck.getCardIntValue(data["p1_1"]) 
  #  print(deck.getCardIntValue(data["p1_0"]) + deck.getCardIntValue(data["p1_1"]))
  print(deck.getCardIntValue(data["p1_0"]) + deck.getCardIntValue(data["p1_1"]))
  print ","
#  print  data["p1_2"]
  if data["p1_2"].nil?
  #    print "STAND",","
    print "0",","
  else
    #    print "HIT",","
    print "1",","
  end
  print deck.getCardIntValue(data["p2_0"]) ,",", deck.getCardIntValue(data["p2_1"])
  print ","
  print deck.getCardIntValue(data["p3_0"]) ,",", deck.getCardIntValue(data["p3_1"])
  print ","
  print deck.getCardIntValue(data["p4_0"]) ,",", deck.getCardIntValue(data["p4_1"])
  print ","
  print deck.getCardIntValue(data["p5_0"]) ,",", deck.getCardIntValue(data["p5_1"])
  print ","
  print deck.getCardIntValue(data["p6_0"]) ,",", deck.getCardIntValue(data["p6_1"])
  print ","
  
  puts data["p1_game"] 
#  break
end



               















