class Atbash
  def initialize
    littlebet = "a".upto("z").to_a
    bigbet = "A".upto("Z").to_a

    @map = amap(littlebet).merge(amap(bigbet))
  end

  def translate(word)
    word.split("").map {|c|
      @map[c] || c
    }.join("")
  end

  def amap(bet)
    bet.each_with_index.map {|a, index|
      {a => bet.reverse[index]}
    }.inject(&:merge)
  end
end
