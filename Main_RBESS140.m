%This code is for RBESS
clc
clear all
close all;

% Loading daily load patteren
fileID = fopen('two_day_daily_load_latest.txt','r');
formatSpec = '%f';
Loadshape_data = fscanf(fileID,formatSpec);
LS=length(Loadshape_data);

% Loading daily solar patteren
fileID = fopen('two_day_daily_solar_sunny.txt','r');
formatSpec = '%f';
Solarshape = fscanf(fileID,formatSpec);

%Variable declaration
Voltagebase=zeros(137,LS);
TPLbase=zeros(LS,1);
CHA_start=zeros(LS,1);
CHA_stop=zeros(LS,1);
DISCHA_start=zeros(LS,1);
DISCHA_stop=zeros(LS,1);
Voltagebat=zeros(137,LS);
TPLbat=zeros(LS,1);
SOC=zeros(LS,124);
bat_power=zeros(LS,124);
P_expo_lim=zeros(LS,124);
net_power=zeros(LS,124);

% Activating the openDSS simulation platform
DSSObj = actxserver('OpenDSSEngine.DSS');
Start = DSSObj.Start(0);
DSSText = DSSObj.Text;
DSSCircuit=DSSObj.ActiveCircuit;
DSSSolution=DSSCircuit.Solution;
DSSActiveClass = DSSCircuit.ActiveClass;

% Redirecting masters to MATLAB script.
DSSText.command='Compile C:\Uniten_RCT\Research\Research_Supervision\Masters\Masters_project_Dilini\Software\TNB_network\Storage_RBESS\masters_BESS_Bat_140.dss';

% Load Flow of the base system
% Setting the solving mode to Daily
% Activation of daily mode
DSSText.Command='Set VoltageBases = "[11 0.4]"';
DSSText.Command='CalcVoltageBases';
DSSText.command='Set MaxControlIter=1000';
DSSText.command='set mode=daily stepsize=1m';
DSSText.Command = 'Set number=1';  % Still in Daily mode, but each Solve does one hour
% DSSCircuit.Solution.dblHour = 0.0;

% Solving for 2881 minutes
for i  = 1:LS
    DSSText.command = 'solve';
    Voltagebase(:,i)=DSSCircuit.AllNodeVmagPUByPhase(1)';
    Voltagecusbefore=Voltagebase([4:18,20:34,36,38:52,54:69,71:85,87:93,95:109,112:124,126:end],:);
    Loss = DSSCircuit.Losses;
    TPLbase(i,1)=Loss(1,1)/1000; %to convert to kW
    
    %Extract grid power demand
    DSSCircuit.SetActiveElement(['Line.LINE1']);
    Source1(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F1(i,1) = 1*(Source1(i,1)+Source1(i,3)+Source1(i,5));
    DSSCircuit.SetActiveElement(['Line.LINE17']);
    Source2(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F2(i,1) = 1*(Source2(i,1)+Source2(i,3)+Source2(i,5));
    DSSCircuit.SetActiveElement(['Line.LINE33']);
    Source3a(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3a(i,1) = 1*(Source3a(i,1)+Source3a(i,3)+Source3a(i,5));
    DSSCircuit.SetActiveElement(['Line.LINE34']);
    Source3b(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3b(i,1) = 1*(Source3b(i,1)+Source3b(i,3)+Source3b(i,5));
    DSSCircuit.SetActiveElement(['Line.LINE109']);
    Source4a(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4a(i,1) = 1*(Source4a(i,1)+Source4a(i,3)+Source4a(i,5));
    DSSCircuit.SetActiveElement(['Line.LINE110']);
    Source4b(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4b(i,1) = 1*(Source4b(i,1)+Source4b(i,3)+Source4b(i,5));
    
    Grid_power_woB(i,1) = Grid_power_F1(i,1)+Grid_power_F2(i,1)+Grid_power_F3a(i,1)+Grid_power_F3b(i,1)+Grid_power_F4a(i,1)+Grid_power_F4b(i,1);
    
     %Extract max voltage node power demand
    DSSCircuit.SetActiveElement(['Line.LINE108']);
    Line108_woB(i,:) = DSSCircuit.ActiveCktElement.Powers;
    Line108_woB_all(i,1) = 1*(Line108_woB(i,1)+Line108_woB(i,3)+Line108_woB(i,5));
    
    % PV power extraction
    [P_Gen] = solarextraction(i,DSSObj,DSSText,DSSCircuit,DSSSolution);
    P_Gen_extract(i,:)=P_Gen(i,:);
    
    % Load demand extraction
    [P_L,Q_L] = demandextraction(i,DSSObj,DSSText,DSSCircuit,DSSSolution);
    P_L_extract(i,:)=P_L(i,:);
    
    % Excess PV generation
    Excess_P_Gen(i,:)=P_Gen_extract(i,:)-P_L_extract(i,:);
    
end

Voltagebase(1:2,:)=[];


P_Gen_extract(LS+1,1)= 0;

for i=1:1440
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WOB_D1(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j);
        else 
            GUI_WOB_D1(i,j)=0;
        end
    end  
end

for i=1441:2880
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WOB_D2(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j);
        else 
            GUI_WOB_D2(i,j)=0;
        end
    end  
end


%charging time
for j=1:LS-1
    if Excess_P_Gen(j,1)<0 && Excess_P_Gen(j+1,1)>0
        CHA_start(j,1)=j+1;
    elseif Excess_P_Gen(j,1)>0 && Excess_P_Gen(j+1,1)<0
        CHA_stop(j,1)=j;
    end
end
CHA_start(CHA_start==0)=[];
CHA_stop(CHA_stop==0)=[];

%discharging time
for j=1:LS-1
    if P_Gen_extract(j,1)==0 && P_Gen_extract(j+1,1)>0
        DISCHA_stop(j,1)=j;
    elseif P_Gen_extract(j,1)>0 && P_Gen_extract(j+1,1)==0
        DISCHA_start(j,1)=j+1;
    end
end

DISCHA_start(DISCHA_start==0)=[];
DISCHA_stop(DISCHA_stop==0)=[];

% Load Flow with a battery
SOC_final = 0.8;
SOC_reserve = 0.2;
SOC_end=0.45

% Redirecting opendss battery file
DSSText.Command='Redirect RBESS_140.dss'

DSSCircuit.SetActiveClass('Storage');
AllStorageNames = DSSActiveClass.AllNames;

%charging times
C1=CHA_start(1,1); C2=CHA_stop(1,1); C3=CHA_start(2,1); C4=CHA_stop(2,1);

%discharging times
D1=DISCHA_stop(1,1); D2=DISCHA_start(1,1); D3=DISCHA_stop(2,1); D4=DISCHA_start(2,1); 

%stored energy
SE=0.8;

%RBESS
RB=124; %no. of batteries

%for 120% PV penetration
% BESS_kWh=13.5*60;
% BESS_kW=5;

%for 140% PV penetration
BESS_kWh=14*60;
BESS_kW=5;

%initial charging and discharging rate
for k = 1:RB
    R_discharge(1,k) = (((SE-SOC_reserve)*BESS_kWh/(D1))/BESS_kW)*100;
end

DSSCircuit.SetActiveClass('Storage');
for g = 1:RB
    DSSCircuit.SetActiveElement(AllStorageNames{g});
    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge(1,g))];
end

%run with RBESS
% Setting the solving mode to Daily
% Activation of daily mode
DSSText.Command='Set VoltageBases = "[11 0.4]"';
DSSText.Command='CalcVoltageBases';
DSSText.command='Set MaxControlIter=1000';
DSSText.command='set mode=daily stepsize=1m';
DSSText.Command = 'Set number=1';  % Still in Daily mode, but each Solve does one minute

for h=1:LS
    h
    DSSText.command = 'solve';
    Voltagebat(:,h)=DSSCircuit.AllNodeVmagPUByPhase(1)';
    Voltagecus=Voltagebat([4:18,20:34,36,38:52,54:69,71:85,87:93,95:109,112:124,126:end],:);
    Loss = DSSCircuit.Losses;
    TPLbat(h,1)=Loss(1,1)/1000; %to convert to kW
    
    %Extract grid power demand
    DSSCircuit.SetActiveElement(['Line.LINE1']);
    Source1(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F1(h,1) = 1*(Source1(h,1)+Source1(h,3)+Source1(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE17']);
    Source2(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F2(h,1) = 1*(Source2(h,1)+Source2(h,3)+Source2(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE33']);
    Source3a(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3a(h,1) = 1*(Source3a(h,1)+Source3a(h,3)+Source3a(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE34']);
    Source3b(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3b(h,1) = 1*(Source3b(h,1)+Source3b(h,3)+Source3b(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE109']);
    Source4a(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4a(h,1) = 1*(Source4a(h,1)+Source4a(h,3)+Source4a(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE110']);
    Source4b(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4b(h,1) = 1*(Source4b(h,1)+Source4b(h,3)+Source4b(h,5));
    
    Grid_power_wB(h,1) = Grid_power_F1(h,1)+Grid_power_F2(h,1)+Grid_power_F3a(h,1)+Grid_power_F3b(h,1)+Grid_power_F4a(h,1)+Grid_power_F4b(h,1);
    
     %Extract max voltage node power demand
    DSSCircuit.SetActiveElement(['Line.LINE108']);
    Line108_wB(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Line108_wB_all(h,1) = 1*(Line108_wB(h,1)+Line108_wB(h,3)+Line108_wB(h,5));
    
    %extract SOC
    DSSCircuit.SetActiveClass('Storage');
    for g = 1:RB
        DSSCircuit.SetActiveElement(AllStorageNames{g});
        SOC(h,g)=str2double(DSSCircuit.ActiveDSSElement.Properties('%stored').Val);
        SOC(h,g)=SOC(h,g)/100;
        
        %extract battery power
        bp(h,:) = DSSCircuit.ActiveCktElement.Powers;
        bat_power(h,g)=-1*(bp(h,1)+bp(h,3)+bp(h,5));
    end
    
    %check and claculate the status
    %charging
    if P_Gen_extract(h+1,1)>0
        if Excess_P_Gen(h+1)>0
            if h>=C1-1 && h<=C2-1
                for k = 1:RB
                    R_charge(h+1,k) = (((SOC_final-SOC(h,k))*BESS_kWh/(C2-h))/BESS_kW)*100;
                end
                %excess PV rate
                for k = 1:RB
                    E_PV(h+1,k) = (Excess_P_Gen(h+1,k)/BESS_kW)*100;
                end
                
                %voltage
                %net power
                
                for k=1:RB
                    if Voltagecus(k,h)>=1.098
                        P_expo_lim(h+1,k)=((1.098)/Voltagecus(k,h))*(Excess_P_Gen(h,k)-R_charge(h,k)*(BESS_kW/100));
                    end

                    net_power(h+1,k)=(Excess_P_Gen(h+1,k)-(R_charge(h+1,k)*(BESS_kW/100)));

                    if net_power(h+1,k)>P_expo_lim(h+1,k) && P_expo_lim(h+1,k)~=0
                        R_charge(h+1,k) = ((Excess_P_Gen(h+1,k)- P_expo_lim(h+1,k))/BESS_kW)*100;
                    end
                end

                % adjusting the rate
                for k=1:RB
                    if E_PV(h+1,k)<R_charge(h+1,k)
                        R_charge(h+1,k)=E_PV(h+1,k);
                    end
                end
                
                DSSCircuit.SetActiveClass('Storage');
                for g = 1:RB
                    if SOC(h,g)<0.8 
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = CHARGING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge(h+1,g))];
                    else
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = IDLING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=0'];
                    end
                end
            elseif  h>=C3-1 && h<=C4-1
                for k = 1:RB
                    R_charge(h+1,k) = (((SOC_final-SOC(h,k))*BESS_kWh/(C4-h))/BESS_kW)*100;
                end
                %excess PV rate
                for k = 1:RB
                    E_PV(h+1,k) = (Excess_P_Gen(h+1,k)/BESS_kW)*100;
                end
                
                for k=1:RB
                    if Voltagecus(k,h)>=1.098
                        P_expo_lim(h+1,k)=((1.098)/Voltagecus(k,h))*(Excess_P_Gen(h,k)-R_charge(h,k)*(BESS_kW/100));
                    end
                    
                    net_power(h+1,k)=(Excess_P_Gen(h+1,k)-(R_charge(h+1,k)*(BESS_kW/100)));
                    
                    if net_power(h+1,k)>P_expo_lim(h+1,k) && P_expo_lim(h+1,k)~=0
                        R_charge(h+1,k) = ((Excess_P_Gen(h+1,k)- P_expo_lim(h+1,k))/BESS_kW)*100;
                    end
                end
                
                %  adjusting the rate
                for k=1:RB
                    if E_PV(h+1,k)<R_charge(h+1,k)
                        R_charge(h+1,k)=E_PV(h+1,k);
                    end
                end
                
                DSSCircuit.SetActiveClass('Storage');
                for g = 1:RB
                    if SOC(h,g)<0.8 
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = CHARGING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge(h+1,g))];
                    else
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = IDLING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=0'];
                    end
                end
                
            end
            %idling
        else
            for k = 1:RB
                R_charge(h+1,k) = 0;
            end
            
            
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = IDLING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge(h+1,g))];
            end
        end
        %discharging
    else
        if h<=D1-1
            for k = 1:RB
                R_discharge(h+1,k) = (((SOC(h,k)-SOC_reserve)*BESS_kWh/(D1-h))/BESS_kW)*100;
                
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge(h+1,g))];
            end
        elseif h>=(D2-1) && h<=(D3-1)
            for k = 1:RB
                R_discharge(h+1,k) = (((SOC(h,k)-SOC_reserve)*BESS_kWh/(D3-h))/BESS_kW)*100;
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge(h+1,g))];
            end
        elseif h>=(D4-1) && h<=2880
            for k = 1:RB
                R_discharge(h+1,k) = (((SOC(h,k)-SOC_end)*BESS_kWh/(LS-h))/BESS_kW)*100;
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 
%                 
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge(h+1,g))];
            end
            
        end
    end
end

Voltagebat(1:2,:)=[];

for i=1:1440
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WB_WVC_D1(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j)-bat_power(i,j);
        else 
            GUI_WB_WVC_D1(i,j)=0;
        end
    end  
end

for i=1441:2880
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WB_WVC_D2(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j)-bat_power(i,j);
        else 
            GUI_WB_WVC_D2(i,j)=0;
        end
    end  
end




% for i=1:LS
%   SOC_new(i+1,:)=SOC(i,:);
% end
% SOC_new(1,:)=SE;



%% run with RBESS without voltage control

DSSCircuit.SetActiveClass('Storage');
for g = 1:RB
    DSSCircuit.SetActiveElement(AllStorageNames{g});
    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %stored=80'];
end

%initial charging and discharging rate
for k = 1:RB
    R_discharge_wt_vc(1,k) = (((SE-SOC_reserve)*BESS_kWh/(D1))/BESS_kW)*100;
end

DSSCircuit.SetActiveClass('Storage');
for g = 1:RB
    DSSCircuit.SetActiveElement(AllStorageNames{g});
    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge_wt_vc(1,g))];
end

% Setting the solving mode to Daily
% Activation of daily mode
DSSText.Command='Set VoltageBases = "[11 0.4]"';
DSSText.Command='CalcVoltageBases';
DSSText.command='Set MaxControlIter=1000';
DSSText.command='set mode=daily stepsize=1m';
DSSText.Command = 'Set number=1';  % Still in Daily mode, but each Solve does one minute

for h=1:LS
    h
    DSSText.command = 'solve';
    Voltagebat_wt_vc(:,h)=DSSCircuit.AllNodeVmagPUByPhase(1)';
    Voltagecus_wt_vc=Voltagebat_wt_vc([4:18,20:34,36,38:52,54:69,71:85,87:93,95:109,112:124,126:end],:);
    Loss_wt_vc = DSSCircuit.Losses;
    TPLbat_wt_vc(h,1)=Loss_wt_vc(1,1)/1000; %to convert to kW
    
    %Extract grid power demand
    DSSCircuit.SetActiveElement(['Line.LINE1']);
    Source1_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F1_wt_vc(h,1) = 1*(Source1_wt_vc(h,1)+Source1_wt_vc(h,3)+Source1_wt_vc(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE17']);
    Source2_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F2_wt_vc(h,1) = 1*(Source2_wt_vc(h,1)+Source2_wt_vc(h,3)+Source2_wt_vc(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE33']);
    Source3a_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3a_wt_vc(h,1) = 1*(Source3a_wt_vc(h,1)+Source3a_wt_vc(h,3)+Source3a_wt_vc(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE34']);
    Source3b_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F3b_wt_vc(h,1) = 1*(Source3b_wt_vc(h,1)+Source3b_wt_vc(h,3)+Source3b_wt_vc(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE109']);
    Source4a_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4a_wt_vc(h,1) = 1*(Source4a_wt_vc(h,1)+Source4a_wt_vc(h,3)+Source4a_wt_vc(h,5));
    DSSCircuit.SetActiveElement(['Line.LINE110']);
    Source4b_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Grid_power_F4b_wt_vc(h,1) = 1*(Source4b_wt_vc(h,1)+Source4b_wt_vc(h,3)+Source4b_wt_vc(h,5));
    
    Grid_power_wB_wt_vc(h,1) = Grid_power_F1_wt_vc(h,1)+Grid_power_F2_wt_vc(h,1)+Grid_power_F3a_wt_vc(h,1)+Grid_power_F3b_wt_vc(h,1)+Grid_power_F4a_wt_vc(h,1)+Grid_power_F4b_wt_vc(h,1);
    
     %Extract max voltage node power demand
    DSSCircuit.SetActiveElement(['Line.LINE108']);
    Line108_wB_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
    Line108_wB_wt_vc_all(h,1) = 1*(Line108_wB_wt_vc(h,1)+Line108_wB_wt_vc(h,3)+Line108_wB_wt_vc(h,5));
    
    %extract SOC
    DSSCircuit.SetActiveClass('Storage');
    for g = 1:RB
        DSSCircuit.SetActiveElement(AllStorageNames{g});
        SOC_wt_vc(h,g)=str2double(DSSCircuit.ActiveDSSElement.Properties('%stored').Val);
        SOC_wt_vc(h,g)=SOC_wt_vc(h,g)/100;
        
        %extract battery power
        bp_wt_vc(h,:) = DSSCircuit.ActiveCktElement.Powers;
        bat_power_wt_vc(h,g)=-1*(bp_wt_vc(h,1)+bp_wt_vc(h,3)+bp_wt_vc(h,5));
    end
    
    %check and claculate the status
    %charging
    if P_Gen_extract(h+1,1)>0
        if Excess_P_Gen(h+1)>0
            if h>=C1-1 && h<=C2-1
                for k = 1:RB
                    R_charge_wt_vc(h+1,k) = (((SOC_final-SOC_wt_vc(h,k))*BESS_kWh/(C2-h))/BESS_kW)*100;
                end
                %excess PV rate
                for k = 1:RB
                    E_PV_wt_vc(h+1,k) = (Excess_P_Gen(h+1,k)/BESS_kW)*100;
                end
                
%                 %voltage
%                 %net power
%                 
%                 for k=1:RB
%                     if Voltagecus(k,h)>=1.0978
%                         P_expo_lim(h+1,k)=((1.0978)/Voltagecus(k,h))*(Excess_P_Gen(h,k)-R_charge(h,k)*(BESS_kW/100));
%                     end
% 
%                     net_power(h+1,k)=(Excess_P_Gen(h,k)-(R_charge(h+1,k)*(BESS_kW/100)));
% 
%                     if net_power(h+1,k)>P_expo_lim(h+1,k) && P_expo_lim(h+1,k)~=0
%                         R_charge(h+1,k) = ((Excess_P_Gen(h+1,k)- P_expo_lim(h+1,k))/BESS_kW)*100;
%                     end
%                 end

                % adjusting the rate
                for k=1:RB
                    if E_PV_wt_vc(h+1,k)<R_charge_wt_vc(h+1,k)
                        R_charge_wt_vc(h+1,k)=E_PV_wt_vc(h+1,k);
                    end
                end
                
                DSSCircuit.SetActiveClass('Storage');
                for g = 1:RB
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = CHARGING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge_wt_vc(h+1,g))];
                end
            elseif  h>=C3-1 && h<=C4-1
                for k = 1:RB
                    R_charge_wt_vc(h+1,k) = (((SOC_final-SOC_wt_vc(h,k))*BESS_kWh/(C4-h))/BESS_kW)*100;
                end
                %excess PV rate
                for k = 1:RB
                    E_PV_wt_vc(h+1,k) = (Excess_P_Gen(h+1,k)/BESS_kW)*100;
                end
                
%                 for k=1:RB
%                     if Voltagecus(k,h)>=1.098
%                         P_expo_lim(h+1,k)=((1.098)/Voltagecus(k,h))*(Excess_P_Gen(h,k)-R_charge(h,k)*(BESS_kW/100));
%                     end
%                     
%                     net_power(h+1,k)=(Excess_P_Gen(h,k)-(R_charge(h+1,k)*(BESS_kW/100)));
%                     
%                     if net_power(h+1,k)>P_expo_lim(h+1,k) && P_expo_lim(h+1,k)~=0
%                         R_charge(h+1,k) = ((Excess_P_Gen(h+1,k)- P_expo_lim(h+1,k))/BESS_kW)*100;
%                     end
%                 end
                
                %  adjusting the rate
                for k=1:RB
                    if E_PV_wt_vc(h+1,k)<R_charge_wt_vc(h+1,k)
                        R_charge_wt_vc(h+1,k)=E_PV_wt_vc(h+1,k);
                    end
                end
                
                DSSCircuit.SetActiveClass('Storage');
                for g = 1:RB
                    DSSCircuit.SetActiveElement(AllStorageNames{g});
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = CHARGING'];
                    DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge_wt_vc(h+1,g))];
                end
                
            end
            %idling
        else
            for k = 1:RB
                R_charge_wt_vc(h+1,k) = 0;
            end
            
            
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = IDLING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %charge=',num2str(R_charge_wt_vc(h+1,g))];
            end
        end
        %discharging
    else
        if h<=D1-1
            for k = 1:RB
                R_discharge_wt_vc(h+1,k) = (((SOC_wt_vc(h,k)-SOC_reserve)*BESS_kWh/(D1-h))/BESS_kW)*100;
                
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge_wt_vc(h+1,g))];
            end
        elseif h>=(D2-1) && h<=(D3-1)
            for k = 1:RB
                R_discharge_wt_vc(h+1,k) = (((SOC_wt_vc(h,k)-SOC_reserve)*BESS_kWh/(D3-h))/BESS_kW)*100;
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge_wt_vc(h+1,g))];
            end
        elseif h>=(D4-1) && h<=2880
            for k = 1:RB
                R_discharge_wt_vc(h+1,k) = (((SOC_wt_vc(h,k)-SOC_end)*BESS_kWh/(LS-h))/BESS_kW)*100;
%                 E_d(h,k) = P_L_extract(h,k)/BESS_kW*100;
%                 
%                 
%                 if E_d(h,k)>R_discharge(h+1,k)
%                     R_discharge(h+1,k)=E_d(h,k);
%                 end
            end
            DSSCircuit.SetActiveClass('Storage');
            for g = 1:RB
                DSSCircuit.SetActiveElement(AllStorageNames{g});
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' State = DISCHARGING'];
                DSSText.command=['Edit Storage.',AllStorageNames{g} ' %discharge=',num2str(R_discharge_wt_vc(h+1,g))];
            end
            
        end
    end
end

for i=1:1440
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WB_WoVC_D1(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j)-bat_power_wt_vc(i,j);
        else 
            GUI_WB_WoVC_D1(i,j)=0;
        end
    end  
end

for i=1441:2880
    for j= 1:124
        if Excess_P_Gen(i,j)<0
            GUI_WB_WoVC_D2(i,j)=P_L_extract(i,j)-P_Gen_extract(i,j)-bat_power_wt_vc(i,j);
        else 
            GUI_WB_WoVC_D2(i,j)=0;
        end
    end  
end

%%
%plot
% figure();
% plot(R_charge);
% hold on;
% plot(E_PV);
% hold off;
% legend('R charge', 'Excess PV','FontSize',8);

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
ylim([-800 800])
xlabel('Time (hr)')
ylabel('Power (kW)')

xx=[0 24 24 0];
yy=[1 1 1.12 1.12];
xxx=[24 48 48 24];

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

% for i=1:124
%     for j=1:LS
%         if Voltagecus(i,j)>1.1
%             Voltagecus(i,j)=1.1;
%         end
%     end
% end
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


%SOC
figure();
x0=10;
y0=10;
width=500;
height=400;
set(gcf,'position',[x0,y0,width,height]);
%without voltage control
subplot(211)
plot(t,SOC_wt_vc*100)
xticks([0:4:48]);
xlim([0 48]);
xlabel('Time (hr)')
ylabel('SoC (%)')
%with voltage control
subplot(212)
plot(t,SOC*100)
xticks([0:4:48]);
xlim([0 48]);
xlabel('Time (hr)')
ylabel('SoC (%)')

%Max voltage node net powers
figure();
x0=10;
y0=10;
width=500;
height=300;
set(gcf,'position',[x0,y0,width,height]);
plot(t,Line108_woB_all,'--','Color','[0 0.4 1]','LineWidth',1);
hold on;
plot(t,Line108_wB_wt_vc_all,'-','Color','[1 0 0.8]','LineWidth',1);
plot(t,Line108_wB_all,'-.','Color','[1 0.8 0.2]','LineWidth',1);
hold off;
xticks([0:4:48]);
xlim([0 48]);
xlabel('Time (hr)')
ylabel('Power (kW)')
legend('w/o RBESS', 'RBESS w/o VC','RBESS w VC','FontSize',8);
title('critical node');

%losses
figure();
x0=10;
y0=10;
width=500;
height=300;
set(gcf,'position',[x0,y0,width,height]);
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

%max voltage node all powers
figure();
t=0:(1/(60)):48;
plot(t,P_Gen_extract(1:2881,94),'-','LineWidth',1);
hold on;
plot(t,P_L_extract(1:2881,94),'-','LineWidth',1);
plot(t,Excess_P_Gen(1:2881,94),':','LineWidth',2);
plot(t,bat_power_wt_vc(1:2881,94),'-.','LineWidth',1);
plot(t,bat_power(1:2881,94),'--','LineWidth',1);
hold off;
xticks([0:4:48]);
xlim([0 48]);
ylim([-6 9]);
xlabel('Time (hr)')
ylabel('Power (kW)')
legend('PV','Demand', 'Excess PV', 'RBESS w/o VC', 'RBESS w VC','NumColumns',4,'FontSize',8);
title('node 94')

%max voltage node all powers
figure();
t=0:(1/(60)):48;
plot(t,P_Gen_extract(1:2881,99),'-','LineWidth',1);
hold on;
plot(t,P_L_extract(1:2881,99),'-','LineWidth',1);
plot(t,Excess_P_Gen(1:2881,99),':','LineWidth',2);
plot(t,bat_power_wt_vc(1:2881,99),'-.','LineWidth',1);
plot(t,bat_power(1:2881,99),'--','LineWidth',1);
hold off;
xticks([0:4:48]);
xlim([0 48]);
ylim([-6 9]);
xlabel('Time (hr)')
ylabel('Power (kW)')
legend('PV','Demand', 'Excess PV', 'RBESS w/o VC', 'RBESS w VC','NumColumns',4,'FontSize',8);
title('critical node')

%stack graph
figure()
G(:,1)=Line108_wB_all;
G(:,2)=P_Gen_extract(1:2881,99);
G(:,3)=bat_power(1:2881,99);
for i=1:2881
    if G(i,3)>0 
        G(i,4)=G(i,3);
        G(i,3)=0;
    else
       G(i,4)=0; 
    end 
end

H=area(G(:,1:4))
hold on
plot(P_L_extract(1:2881,99),'--y')
title('critical node');
% set(G(1),'FaceColor',[0.8 0.8 0.8]);
% set(G(2),'FaceColor',[0 0 1]);
% set(G(3),'FaceColor',[1 0 0]);
% set(G(4),'FaceColor',[1 1 0.2]);

%GUI
D11=GUI_WOB_D2(1441:2880,1);
D12=GUI_WB_WVC_D2(1441:2880,1);
D13=GUI_WB_WoVC_D2(1441:2880,1);

%Import energy
E_WoB_D1=sum(GUI_WOB_D1(:,1))
E_WoB_D2=sum(GUI_WOB_D2(:,1))
E_WB_D1=sum(GUI_WB_WVC_D1(:,1))
E_WB_D2=sum(GUI_WB_WVC_D2(:,1))


