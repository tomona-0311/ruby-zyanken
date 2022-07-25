
def janken

random_hander = rand(3)
jankens = ["グー","チョキ","パー","戦わない"]
puts "ジャンケン"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
play_number = gets.to_i
#ループ
while play_number >= 4
    puts "------------------------------------------"
    puts "ジャンケンに必要な数字0〜３を入力してください"
    puts　"ジャンケン..."
    puts  "0(グー),1(チョキ),2(パー),3(戦わない)"
    play_number = gets.to_i
end

#0から３の場合
if play_number == 0 || play_number == 1 || play_number == 2
    puts "ポン"
    puts "あなた : #{jankens[play_number]}を出しました" 
    puts "相手 :   #{jankens[random_hander]}を出しました"
    puts "---------------------------------------"
    
   # あいこの場合 ((ループ))
   if play_number == random_hander
     puts "あいこ!!!"
     return true
 　   #勝った時
 　   elsif (play_number ==  0   &&   random_hander == 1 ) || (play_number == 1 && random_hander == 2 )  || (play_number == 2 && random_hander == 0)
     $result_janken = "win"
        return false
     #負けた時
     elsif (play_number == 1 && random_hander== 0 ) || (play_number == 2 && random_hander== 1 )  || (play_number == 0 && random_hander == 2)
        $result_janken = "lose"
        return false
        
        exit
    end
elsif play_number == 3
    puts "戦わない"
    exit
end
end
   #ここまでがジャンケンの実装
   
   #あっち向いてホイ
 def last_game
  second_randam = rand(3)
  directions = ["上","下","右","左"]
  
  puts "あっち向いて〜"
  puts "0(上),1(下),2(右),3(左)"
  my_direction = gets.to_i
  puts "ほい"
  puts "----------------"
  
   puts "あなた：#{directions[my_direction]}"
   puts "相手：#{directions[my_direction]}"

  #勝つ時
  if $result_janken == "win" && my_direction == second_randam
    puts "Victory！！"
    return false

   #負けの時
   elsif $result_janken == "lose" && my_direction == second_randam
    puts "lose....."
    return false
    
    #あいこの時
else
    puts "ジャンケンから始める"
    return janken
    end 
end  
#ここまでがあっち向いてホイの範囲


#ゲームを連結させて、ループに回す方法
def game
  if janken == true #jankenが（true）成立するなら
    return true
    
  elsif last_game == true #last_gameが（true）成立するなら
    return true
    
  else
    return false
  
  end

end
next_game = true
while next_game do
    next_game = game
    
end




#if janken =="win" && last_game == 
    
  #  if play_nember == random_nember
    #    puts "あいこです。もう一度ジャンケンをします"
      #  return true
       # elsif play_namber == 3 ||rondom_number == 3
        #    puts "ジャンケンが放棄されました.ゲームは終了です"
        #    return false
        #    elsif  play_number - rondom_number ==3