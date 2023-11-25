class Student
  attr_reader :surname, :school, :grade, :place

  def initialize (surname, school, grade, place)
    @surname = surname
    @school = school
    @grade = grade
    @place = place
  end
end


arr = [
  Student.new('Shevchenko', '143', 10, 2),
  Student.new('Petrenko', '210', 11, 1),
  Student.new('Yarmolenko', '185', 10, 5),
  Student.new('Kobzar', '291', 10, 1),
  Student.new('Symonenko', '310', 9, 1),
  Student.new('Tkachuk', '329', 7, 2),
  Student.new('Larin', '214', 11, 6),
  Student.new('Danylenko', '143', 11, 1)
]


def task1(arr)
  res = arr.select {|i| i.place <= 3}.map{|i| i.school}
  res = res.uniq

  res
end


def task2(arr)
  res = arr.select {|i| i.place <= 3}.map{|i| i.school}
  res = res.inject(Hash.new(0)){|h, v| h[v] += 1; h}
  res = res.max_by{|_, v| v}

  res
end

def task3(arr)
  res = arr.select{|i| i.place == 1}.map{|i| [i.surname, i.grade]}

  res
end

puts "Task 1: #{task1(arr)}"
puts "Task 2: #{task2(arr)}"
puts "Task 3: #{task3(arr)}"