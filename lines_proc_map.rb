def process_data(lines)
  records = lines.map { |line| line.split(',')}
  group_by_dept = records.group_by { |e| e[2]}
  results = {}
  group_by_dept.select { |dept, emps| 
    results[dept.strip] = emps.select { |emps| emps.first}.max[3].strip
  }
  results
end

lines = File.readlines('input.txt')
result = process_data(lines)

File.open("output.txt", "w") {|file|
  result.each {|key, value|
    file.write("#{key}: #{value}\n")
  }
}

