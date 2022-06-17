class Person
  altr_accessor :name, :age
  altr_reader :id

  def initialize(age, name = 'Unknow', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services
    return true if of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
