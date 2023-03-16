
t1=0;
t2=0;
n=4;
btime=[ 2 3 1 5 ];       
wtime=zeros(1,n);      
tatime=zeros(1,n);
for i=2:1:n
   wtime(i)=btime(i-1)+wtime(i-1);  %waiting time will be sum of burst time of previous process and waiting time of previous process
   t1=t1+wtime(i);                  %calculating total time
end
for i=1:1:n
    tatime(i)=btime(i)+wtime(i);    %turn around time=burst time +wait time
    t2=t2+tatime(i);                %total turn around time
end
disp ('Process  Burst time   Waiting time  Turn Around time') ; %displaying final values
for i=1:1:n
    fprintf('P%d\t\t\t%d\t\t\t%d\t\t\t\t%d\n',(i+1),btime(i),wtime(i),tatime(i));
    
end

fprintf('Average Waiting Time: %f\n',(t1/n));
fprintf('Average Turn Around Time: %f\n',(t2/n));

