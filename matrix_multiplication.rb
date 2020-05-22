x =[[1, 2, 3] ,[4, 5, 7]]
y = [[1,2 ],[4, 5 ],[6 ,8]] 


def multiply(x, y)
    
    result = Array.new( x.length ) { Array.new( y[0].length ) {0} }  
    puts " here array is contsructed #{result} "
    # "row is count of all the regular elements of array x [i.e. x.length]"
    # "column is count of all the 1st elements of nested arrays of array y [i.e. y[0].length]"


# each loop over for because for loop holds on to values i,j & k even after the loop is done there
    (0..result.length - 1).each do |i|   #"j loops from 0 to count of(all the regular elements of result array)-1)"
        (0..result[0].length - 1).each do |j| #"j loops from 0 to count of(all the 1st elements of nested arrays of result array)-1)"
            (0..x[0].length - 1).each do |k| #"k loops from 0 to count of(all the 1st elements of nested arrays of array x)-1)"
                result[i][j] += x[i][k] * y[k][j] 
            end
        end
    end

    result #"the whole thing looks like a list"
end
#some formatting#
def matrix_form(matrix) #accepts any matrix
    matrix.each do|array|  # loops through each array element
        array.select do |x| # selects xth element
          print x.to_s.rjust(3," ") # converts xth element to string , right justifies it  and makes the string 3 spaces long
        end
        puts
    end
end


puts "x= "
matrix_form(x)


puts "y ="
matrix_form(y)


puts "answer ="
matrix = multiply( x, y )
matrix_form(matrix)
