# インスタンスメソッド
class Car
  def move(direction,distance)
    self.turn(direction)
    self.run(distance)
  end
  
  def turn(direction)
    puts "#{direction}に曲がります。"
  end
  
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end

end

car = Car.new
car.move("右",5)


# クラスメソッド
class Car
  def self.run(distance)
    puts "車で#{distance}キロ走ります。"
  end
  
  def self.turn(direction)
    puts "#{direction}に曲がります。"
  end
end

Car.run(10)
Car.turn("右")

# クラスメソッドオリジナル
class Car
  def self.move(direction,distance)
    puts "車で#{direction}に曲がります"
    puts "車で#{distance}キロ走ります"
  end
end

Car.move("左",100)