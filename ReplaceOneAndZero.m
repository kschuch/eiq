function Matrix = ReplaceOneAndZero(Matrix)

[rownum,colnum] = size(Matrix);

for i = 1:rownum
    for j = 1:colnum
        if Matrix(i,j)==1
           Matrix(i,j)=0;
           
        else Matrix(i,j)=1
  
        end   
    end   
end






    