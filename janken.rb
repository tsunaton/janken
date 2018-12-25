puts "「最初はグー！じゃんけん・・・」"
puts "[0]グー\n[1]チョキ\n[2]パー"

def janken
  hands = ["グー","チョキ","パー"]

  loop {

    @user_hand = Integer( gets, 10 ) rescue -1

    if @user_hand == 0 || @user_hand == 1 || @user_hand == 2
      break
    end

    puts "0,1,2の内から選んで入力してね！"
  }

  com_hand = rand(3)

  puts "「ぽん！」"
  puts "相手：#{hands[com_hand]}"

  if (@user_hand == 0 && com_hand == 1) || (@user_hand == 1 && com_hand == 2) || (@user_hand == 2 && com_hand == 0)
    puts "
            　 　 　　　　　　　 　 　　　　　　　　　　　 ,.へ
　　___ 　　　　　　　 　 　 　 　 　　　　　　　　　　　　ﾑ　　i
　「 ﾋ_i〉　　　 　\うおおおおおおお/ 　　　　　　　　　　　ゝ〈
　ﾄ　ノ 　　　　　　　　　　　　　　　　　　　　　　　　　　iニ(()
　i 　{ 　 　　　　　　　 　　　＿＿＿_ 　 　　　　　　　　| 　ヽ
　i　　i　　　 　　　　　　　／__,　 , ‐-＼ 　 　 　 　 　 i 　　}
　|  　i　　　　　 　　　／　（●) 　 ( ● )　＼　　　　　　 {､　 λ
  ト－　┤.　　　　　　／ 　 　（__人__） 　　　＼　　　 ,ノ　￣ ,!
　i　　　ゝ､_ 　　　　|　　　　　´￣` 　 　　　　|　 ,.'´ﾊ　 ,!
.　ヽ、 　　　｀`　､,__＼ 　　 　 　　　　　 　 ／　＼ 　ヽ／
　　　＼ノ　ﾉ　　　     ﾊ￣r/:::r―--―/::７　　 ﾉ　　　　／
　 　　 　 ヽ.　　　  ヽ::〈； . '::. :' |::/　　     /　　
　　　　　　　 `ｰ ､　　　　＼ヽ::. ;::：|/　　　　　ｒ'
　　　　　／￣二二二二二二二二二二二二二二二二ヽ
　　　　   　|         ★★勝★利★★　　　　│|
　　　　　＼＿二二二二二二二二二二二二二二二二ノ
"

  elsif (@user_hand == 0 && com_hand == 2) || (@user_hand == 1 && com_hand == 0) || (@user_hand == 2 && com_hand == 1)
    puts "
           ,,　＿
    　　／ 　　　 ｀､   負け・・・
    　 /　　　　  　●ヽ
    　/ ● '　　 　 Ｕ　l
    　l　Ｕ　　し　　u　|
    　l　u　　_＿,,ノu l
    　 ヽu＿ ´'ー´ _ u
    . 　 /0　　￣ 　ヽ.u
    　 /　u　　　　　 ヽ u
    .　|　　u　　　　　　|"

  else @user_hand == com_hand
    puts "あいこで・・・"
    janken
  end
end

janken
