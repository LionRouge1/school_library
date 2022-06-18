require './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission = 'ture')
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    return true if of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
