class Item
  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def name
    @name
  end

  def price(day = Date.today)
    if day.wednesday?
      (Float(@price)*0.9).round(2).to_s
    end
  else
    @price
  end

  def description
    @description
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
  end
end