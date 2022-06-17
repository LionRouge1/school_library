class Person
  def initialize(name = "Unknow", age, parent_permission = true)
    @id = Random.rand(1..100)
    @name = name
    @age = age 
    @parent_permission = parent_permission
  end

  altr_reader: @id
  altr_reader: @name
  altr_reader: @age
  altr_writer: @name
  altr_writer: @age

  def is_of_age?
    @age >= 18
  end

  private :is_of_age

  def can_use_services
    return true if is_of_age? || @parent_permission
  end
end