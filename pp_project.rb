arr = ["**********************************************************", "P","A","R","A", "D","I","G","M","S"," ", "O","F" , " ","P","R","O","G","R","A","M","M","I","N","G", "************************************************************"]
arr.each do |element|
    print  element
    sleep(0.30)

end
 
puts(" ")
puts(" ")

arr1 = ["                                                                   ", "L","O","A","D","I","N","G",".",".",".",".","."]
arr1.each do |element|
    print  element
    sleep(0.28)

end
puts("")
  
  class MatrixInput         #baseclass
    def initialize(rows, cols)
      @rows = rows
      @cols = cols
      @data = Array.new(rows) { Array.new(cols, 0) }
    end
  
    def set_value(row, col, value)
      @data[row][col] = value
    end
  
    def get_value(row, col)
      @data[row][col]
    end
  end
  
  class MatrixOperations < MatrixInput         #derivedclass
    #addition of two matrices

    def add(other)
      result = MatrixOperations.new(@rows, @cols)
      @rows.times do |row|
        @cols.times do |col|
          result.set_value(row, col, get_value(row, col) + other.get_value(row, col))
        end
      end
      result
    end

  # subtraction of two matrices

    def subtract(other)
      result = MatrixOperations.new(@rows, @cols)
      @rows.times do |row|
        @cols.times do |col|
          result.set_value(row, col, get_value(row, col) - other.get_value(row, col))
        end
      end
      result
    end

    #multiplication of two matrices
    
    def multiply(other)
        result = MatrixOperations.new(@rows, @cols)
        @rows.times do |row|
          @cols.times do |col|
            result.set_value(row, col, get_value(row, col) * other.get_value(col, row))
          end
        end
        result
      end

      #tranpose of two matrices

      def get_transpose(other)
        result = MatrixInput.new(@cols, @rows)
        @cols.times do |col|
          @rows.times do |row|
            result.set_value(col, row, get_value(row, col))
          end
        end
        result
      end

      def equality
        @rows.times do |i|
          @columns.times do |j|
            return false if @matrix[i][j] != m2.matrix[i][j]
          end
        end
        true
      end
     
  loop do 
  puts ("  ")

    puts "******************************************TOPIC->OPERATIONS ON MATRIX*******************************************"
  
  puts("ENTER YOUR CHOICE TO PERFORM THE FOLLOWING OPERATIONS ON MATRICES :");
  puts("1) ADDITION")
  puts("2) SUBTRACTION")
  puts("3) MULTIPLICATION")
  puts("4) GET THE TRANSPOSE OF BOTH THE MATRICES ")
  puts("5) CHECKING THE EQUALITY OF MATRICES")
 
  puts("6) EXIT")
  puts (" ")
  puts(" ")

    puts ("your choice")
    ch= gets. chomp.to_i

  
   puts "Enter the number of rows:"
   rows = gets.chomp.to_i
  
   puts "Enter the number of columns:"
   cols = gets.chomp.to_i
  
   puts "Enter the first matrix:"
   m1 = MatrixOperations.new(rows, cols)
    rows.times do |row|
    cols.times do |col|
      m1.set_value(row, col, gets.chomp.to_i)
    end
   end

  

   puts "Enter the second matrix:"
   m2 = MatrixOperations.new(rows, cols)
   rows.times do |row|
    cols.times do |col|
      m2.set_value(row, col, gets.chomp.to_i)
    end
   end

 
   case ch
  
   when 1  
   puts "Result of adding the two matrices:"
   result = m1.add(m2)
   rows.times do |row|
    cols.times do |col|
      print result.get_value(row, col), " "
    end
    puts (" ")
    end
    puts("")
   puts("---------------------------------------------------------------------------------------------------------------------------")
   puts("")
    when 2 
   puts "Result of subtracting the two matrices:"
   result = m1.subtract(m2)
   rows.times do |row|
    cols.times do |col|
      print result.get_value(row, col), " "
    end
   puts (" ")
   end
   puts("")
 puts("---------------------------------------------------------------------------------------------------------------------------")

 when 3
  puts("Result of Multiplication of two Matrices:")
  result = m1.multiply(m2)
  rows.times do |row|
    cols.times do |col|
      print result.get_value(row, col), " "
  end
  puts (" ")
  end
  puts("")
  puts("---------------------------------------------------------------------------------------------------------------------------")
 when 4
  puts("Result of Transpose  of two Matrices:")
  result = m1.get_transpose(m2)
  puts("Transpose of Matrix 1 : ")
  rows.times do |row|
    cols.times do |col|

   print result.get_value(row, col), " "
    end
    puts (" ")

  end

  result = m2.get_transpose(m1)
  puts("Transpose of Matrix 2 : ")
  rows.times do |row|
    cols.times do |col|
   print result.get_value(row, col), " "
    end
    puts (" ")

  end
  puts("")
  puts("---------------------------------------------------------------------------------------------------------------------------")
 when 5
  if m1 == m2
    puts "Matrices are equal"
  else
    puts "Matrices are not equal"
  end
  puts("")
  puts("---------------------------------------------------------------------------------------------------------------------------")
 when 6 
  break
 else
  puts("invalid ch")
  puts("")
 puts("---------------------------------------------------------------------------------------------------------------------------")
 end

 end
 end


