% Total energy import
E_WoB_D1_120=load('E_WoB_D1_120.mat');
E_WB_D1_120=load('E_WB_D1_120.mat');
E_WoB_D2_120=load('E_WoB_D2_120.mat');
E_WB_D2_120=load('E_WB_D2_120.mat');

E_WoB_D1_140=load('E_WoB_D1_140.mat');
E_WB_D1_140=load('E_WB_D1_140.mat');
E_WoB_D2_140=load('E_WoB_D2_140.mat');
E_WB_D2_140=load('E_WB_D2_140.mat');

A=E_WoB_D1_120.E_WoB_D1;
B=E_WB_D1_120.E_WB_D1;
C=E_WoB_D2_120.E_WoB_D2;
D=E_WB_D2_120.E_WB_D2;

AA=E_WoB_D1_140.E_WoB_D1;
BB=E_WB_D1_140.E_WB_D1;
CC=E_WoB_D2_140.E_WoB_D2;
DD=E_WB_D2_140.E_WB_D2;

Day1=[A B;AA BB]/1000;
Day2=[C D;CC DD]/1000;
figure()
x0=10;
y0=10;
width=700;
height=350;
set(gcf,'position',[x0,y0,width,height]);
subplot(121)
b1=bar(Day1)
b1(1).FaceColor=[0 0.4 1]
b1(2).FaceColor=[1 0 0.8]
ylim([2 3.5])
xticklabels({'120%','140%'})
xlabel('Day 1');
ylabel('Total imported energy (MWh)');

subplot(122)
b1=bar(Day2)
b1(1).FaceColor=[0 0.4 1]
b1(2).FaceColor=[1 0 0.8]
ylim([2 3.5])
xticklabels({'120%','140%'})
xlabel('Day 2');
ylabel('Total imported energy (MWh)');

legend('Without RBESS','With RBESS','NumColumns',2,...
    'Position',[0.343033864478966 0.943809525086766 0.354285708069801 0.054285713008472]);