class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    while true
      puts "数字を入力してください。"
      puts "0:グー\n1:チョキ\n2:パー"
      #player_hand = gets.to_i
      #return player_hand
      hand = gets.chomp
      unless hand == "0" || hand == "1" || hand == "2"
      puts "0〜2の数字を入力してください。"
      else
        return hand.to_i
      end
    end
  end

end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    random = Random.new()
    enemy_hand = random.rand(3)
    return enemy_hand
  end
end


class Janken
  def pon(player_hand, enemy_hand)
    kind = ["グー", "チョキ", "パー"]
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    result=(player_hand - enemy_hand +3)%3
    if result==0
      puts "相手の手は#{kind[player_hand]}です。あいこです"
    elsif result==2
      puts "相手の手は#{kind[player_hand]}です。あなたの勝ちです"

    elsif result == 1
      puts "相手の手は#{kind[player_hand]}です。あなたの負けです"
    end

  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
#① player = Player.newの記述の意味はPlayer.newでインスタンス化をしている。
#② 大文字のPlayerと小文字のplayerの違い
#class名は大文字で書かないといけない
