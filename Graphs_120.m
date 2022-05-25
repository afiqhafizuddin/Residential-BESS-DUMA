close all;
LS=2881;
%voltage
V_B_120=load('V_B_120.mat');
V_WB_WOC_120=load('V_WB_WOC_120.mat');
V_WB_WC_120=load('V_WB_WC_120.mat');
Voltagecusbefore=V_B_120.Voltagecusbefore;
Voltagecus_wt_vc=V_WB_WOC_120.Voltagecus_wt_vc;
Voltagecus= V_WB_WC_120.Voltagecus;

%grid power
GP_B_120=load('GP_B_120.mat');
GP_WB_WOC_120=load('GP_WB_WOC_120.mat');
GP_WB_WC_120=load('GP_WB_WC_120.mat');
Grid_power_woB=GP_B_120.Grid_power_woB;
Grid_power_wB_wt_vc=GP_WB_WOC_120.Grid_power_wB_wt_vc;
Grid_power_wB=GP_WB_WC_120.Grid_power_wB;

%Loss
L_B_120=load('L_B_120.mat');
L_WB_WOC_120=load('L_WB_WOC_120.mat');
L_WB_WC_120=load('L_WB_WC_120.mat');
TPLbase=L_B_120.TPLbase;
TPLbat_wt_vc=L_WB_WOC_120.TPLbat_wt_vc;
TPLbat=L_WB_WC_120.TPLbat;

xx=[0 24 24 0];
yy=[1 1 1.12 1.12];
xxx=[24 48 48 24];


% Voltage graph

figure();
x0=10;
y0=10;
width=1500;
height=300;
set(gcf,'position',[x0,y0,width,height]);
subplot(131);
%without battery
t=0:(1/(60)):48;
plot(t,Voltagecusbefore');
hold on;
plot([1 LS],[1.1 1.1],'--r','LineWidth',1.5);
plot([24 24],[1 1.12],'-k');
p1=patch(xx,yy,[0.9 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
p2=patch(xxx,yy,[1 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
uistack(p1,'bottom')
uistack(p2,'bottom')
hold off;
ylim([1 1.12])
xticks([0:4:48]);
xlim([0 48]);
colormap('hsv');
xlabel('Time (hr)')
ylabel('Voltage (p.u.)')
txt={'Day 1'};
text(10,1.01,txt,'Fontsize',8)
txt={'Day 2'};
text(34,1.01,txt,'Fontsize',8)

%without voltage control
subplot(132);
t=0:(1/(60)):48;
plot(t,Voltagecus_wt_vc');
hold on;
plot([1 LS],[1.1 1.1],'--r','LineWidth',1.5);
plot([24 24],[1 1.12],'-k');
p1=patch(xx,yy,[0.9 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
p2=patch(xxx,yy,[1 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
uistack(p1,'bottom')
uistack(p2,'bottom')
hold off;
ylim([1 1.12])
xticks([0:4:48]);
xlim([0 48]);
colormap('hsv');
xlabel('Time (hr)')
ylabel('Voltage (p.u.)')
txt={'Day 1'};
text(10,1.01,txt,'Fontsize',8)
txt={'Day 2'};
text(34,1.01,txt,'Fontsize',8)

%with voltage control
subplot(133);
t=0:(1/(60)):48;
plot(t,Voltagecus');
hold on;
plot([1 LS],[1.1 1.1],'--r','LineWidth',1.5);
plot([24 24],[1 1.12],'-k');
p1=patch(xx,yy,[0.9 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
p2=patch(xxx,yy,[1 1 0.9],'FaceAlpha',0.5,'EdgeColor','None')
uistack(p1,'bottom')
uistack(p2,'bottom')
hold off;
ylim([1 1.12])
xticks([0:4:48]);
xlim([0 48]);
colormap('hsv');
xlabel('Time (hr)')
ylabel('Voltage (p.u.)')
txt={'Day 1'};
text(10,1.01,txt,'Fontsize',8)
txt={'Day 2'};
text(34,1.01,txt,'Fontsize',8)



% Grid power graph
figure();
t=0:(1/(60)):48;
plot(t,Grid_power_woB,'--','Color','[0 0.4 1]','LineWidth',1);
hold on;
plot(t,Grid_power_wB_wt_vc,'-','Color','[1 0 0.8]','LineWidth',1);
plot(t,Grid_power_wB,'-.','Color','[1 0.8 0.2]','LineWidth',1);
hold off;
legend('w/o RBESS', 'RBESS w/o VC','RBESS w VC','FontSize',8);
xticks([0:4:48]);
xlim([0 48]);
xlabel('Time (hr)')
ylabel('Power (kW)')


%losses
figure();
% x0=10;
% y0=10;
% width=500;
% height=300;
% set(gcf,'position',[x0,y0,width,height]);
plot(t,TPLbase,'--','Color','[0 0.4 1]','LineWidth',1);
hold on;
plot(t,TPLbat_wt_vc,'-','Color','[1 0 0.8]','LineWidth',1);
plot(t,TPLbat,'-.','Color','[1 0.8 0.2]','LineWidth',1);
hold off;
xticks([0:4:48]);
xlim([0 48]);
xlabel('Time (hr)')
ylabel('Loss (kW)')
legend('w/o RBESS', 'RBESS w/o VC','RBESS w VC','FontSize',8);
