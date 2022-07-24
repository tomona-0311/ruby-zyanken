puts "ジャンケン"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

play_number = gets.to_i
random_hander = rand(3)
jankens = ["グー","チョキ","パー","戦わない"]

#ループ
while play_number >= 4
    puts "------------------------------------------"
    puts "ジャンケンに必要な数字0〜３を入力してください"
    puts　"ジャンケン..."
    puts  "0(グー)1(チョキ)2(パー)3(戦わない)"
    play_number = gets.to_i
end

#0から３の場合
if play_number == 0 || play_number ==1 || play_number = 2
    puts "ポン"
    puts "あなた : #{jankens[play_number]}を出しました" 
    puts "相手 :   #{jankens[random_hander]}を出しました"
    puts "---------------------------------------"
    
   # あいこの場合 ((ループ))
   if play_number == random_hander
       puts "あいこ!!!"
       return true
       
 　 #勝った時 
 　    elsif (play_number ==  0   &&   random_hander == 1 ) || (play_number == 1 && random_hander == 2)  || (play_number == 2 && random_hander== 0)
       $result_janken = "win"
        return false
    
    #負けた時
        elsif (play_number == 1 && random_hander== 0 ) || (play_number == 2 && random_hander== 1 )  || (play_number == 0 && random_hander== 2)
        $result_janken = "lose"
        return false
        exit
    end

elsif    play_number == 3
    puts "戦わない"
    exit
end 
   #ここまでがジャンケンの実装
   
   #あっち向いてホイ
    
    
  #  if play_nember == random_nember
    #    puts "あいこです。もう一度ジャンケンをします"
      #  return true
       # elsif play_namber == 3 ||rondom_number == 3
        #    puts "ジャンケンが放棄されました.ゲームは終了です"
        #    return false
        #    elsif  play_number - rondom_number ==3