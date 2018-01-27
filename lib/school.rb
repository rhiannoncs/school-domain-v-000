class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student_hash|
      puts student_hash
      student_hash.sort
      puts student_hash
    end
    @roster
  end
  
end

school = School.new("Just Some School")
school.add_student("Ian", 1)
school.add_student("Josie", 0)
school.add_student("Charlie", 1)