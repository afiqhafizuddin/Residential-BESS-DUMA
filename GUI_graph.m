Mean_D1_120=load('Mean_D1_120.mat');
D11=Mean_D1_120.Mean_D1

Mean_D2_120=load('Mean_D2_120.mat');
D12=Mean_D2_120.Mean_D2

Mean_D1_140=load('Mean_D1_140.mat');
D21=Mean_D1_140.Mean_D1

Mean_D2_140=load('Mean_D2_140.mat');
D22=Mean_D2_140.Mean_D2

Day1=[D11(1) D21(1); D11(2) D21(2)];
Day2=[D12(1) D22(1); D12(2) D22(2)];

figure()
x0=10;
y0=10;
width=750;
height=350;
set(gcf,'position',[x0,y0,width,height]);
subplot(121)
bar(Day1)
xticklabels({'120%','140%'})
xlabel('PV penetration level')
ylabel('Daily average imported power (kW)')  
subplot(122)
bar(Day2)
xticklabels({'120%','140%'})
xlabel('PV penetration level')
ylabel('Daily average imported power (kW)')  

legend('Without RBESS','With RBESS','NumColumns',2,'Position',[0.338748150193251 0.943048639844208 0.354285708069801 0.0581039741680889])