function Ethogram(Matrix)

    [rownum,colnum]=size(Matrix);
    
    figure
    for i = 1:(rownum-1)
       
        A = Matrix(i,:);
        subplot(rownum,1,i);
            b = bar(A, 'black');
            b.BarWidth = [1];
            b.EdgeColor = 'none';
                xstart = 0.5;
                xend = colnum-0.5;
                xlim([xstart,xend]);
                xticks([1 3600 7200 10800 14400 18000]);
                xticklabels({'','','','','',''});
                yticks([0 1]);
                yticklabels({'' ''});
    end
                
     A = Matrix(rownum,:);
        subplot(rownum,1,rownum);
            b = bar(A, 'black');
            b.BarWidth = [1];
            b.EdgeColor = 'none';
                xstart = 0.5;
                xend = colnum-0.5;
                xlim([xstart,xend]);
                xticks([1 3600 7200 10800 14400 18000]);
                xticklabels({'0','1','2','3','4','5'});
                xlabel('Hours');
                yticks([0 1]);
                yticklabels({'' ''});
        
        
     
        
        
  
    
        
        

