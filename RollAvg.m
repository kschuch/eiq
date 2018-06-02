function RollAvg(Matrix)

bin = (20*60)-1; % number of binned frames excluding the current frame
[rownum,colnum] = size(Matrix);
tend= colnum - bin;

figure
for i = 1:(rownum-1)
    
    A = Matrix(i,:);
    RollAvgA = movmean(A, [0 bin],'Endpoints','discard');
    subplot(rownum,1,i);
    a = area(RollAvgA);
    a.FaceColor = 'black';
    a.EdgeColor = 'none';
    xlim([1 tend]);
    xticks([1 3600 7200 10800 14400 18000]);
    xticklabels({'','','','','',''});
    yticks([0 1]);
    yticklabels({'' ''});
  
end
 
% plot the last animal with the x-axis labels
 A = Matrix(rownum,:);
 RollAvgA = movmean(A, [0 bin],'Endpoints','discard');
 subplot(rownum,1,rownum);
 a = area(RollAvgA);
 a.FaceColor = 'black';
 a.EdgeColor = 'none';
 xlim([1 tend]);
 xticks([1 3600 7200 10800 14400 18000]);
 xticklabels({'0','1','2','3','4','5'});
 xlabel('Hours');
 yticks([0 1]);
 yticklabels({'' ''});
    
    
