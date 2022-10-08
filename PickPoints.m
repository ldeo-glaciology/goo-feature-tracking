% PickPoints

n=1;
p1 = [];
p2 = [[] []];

while 1
    
    
       temp1 = ginput(1);
       if isempty(temp1)==1; break;end
       [p1(n,:)] = temp1;
       subplot(1,2,1)
       hold on 
       plot(p1(n,1),p1(n,2),'g*')
       
       subplot(1,2,2)
       hold on 
       plot(p1(n,1),p1(n,2),'g*')
       
       
%      if isempty(x1(n,:))==1; continue; end
       
       
       temp2 = ginput(1);
       
       if isempty(temp2)==1; p1 = p1(1:n-1,:);break;end
       [p2(n,:)] =temp2;subplot(1,2,1)
       hold on 
       plot(p2(n,1),p2(n,2),'r*')
       plot([p1(n,1) p2(n,1)],[p1(n,2) p2(n,2)],'k-')
       
       subplot(1,2,2)
       hold on 
       plot(p2(n,1),p2(n,2),'r*')
       plot([p1(n,1) p2(n,1)],[p1(n,2) p2(n,2)],'k-')

       
       n=n+1;
end

x_1 = p1(:,1);
x_2 = p2(:,1);

y_1 = p1(:,2);
y_2 = p2(:,2);

p1
p2



