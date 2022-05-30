function [P_Gen] = solarextraction(i,DSSObj,DSSText,DSSCircuit,DSSSolution)

DSSCircuit.SetActiveElement('PVSystem.PV1');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,1)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV2');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,2)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV3');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,3)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV4');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,4)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV5');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,5)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV6');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,6)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV7');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,7)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV8');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,8)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV9');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,9)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV10');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,10)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV11');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,11)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV12');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,12)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV13');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,13)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV14');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,14)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV15');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,15)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV16');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,16)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV17');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,17)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV18');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,18)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV19');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,19)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV20');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,20)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV21');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,21)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV22');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,22)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV23');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,23)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV24');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,24)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV25');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,25)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV26');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,26)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV27');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,27)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV28');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,28)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV29');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,29)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV30');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,30)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV31');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,31)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV32');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,32)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV33');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,33)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV34');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,34)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV35');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,35)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV36');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,36)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV37');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,37)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

DSSCircuit.SetActiveElement('PVSystem.PV38');
S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
P_Gen(i,38)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV39');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,39)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV40');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,40)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV41');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,41)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV42');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,42)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV43');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,43)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV44');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,44)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV45');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,45)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV46');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,46)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV47');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,47)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV48');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,48)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV49');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,49)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV50');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,50)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV51');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,51)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV52');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,52)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV523');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,53)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV54');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,54)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV55');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,55)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV56');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,56)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV57');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,57)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV58');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,58)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV59');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,59)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV60');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,60)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV61');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,61)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV62');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,62)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV63');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,63)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV64');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,64)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV65');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,65)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV66');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,66)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV67');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,67)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV68');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,68)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV69');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,69)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV70');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,70)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV71');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,71)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV72');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,72)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV73');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,73)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV74');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,74)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV75');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,75)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV76');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,76)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV77');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,77)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV78');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,78)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV79');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,79)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV80');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,80)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV81');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,81)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV82');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,82)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV83');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,83)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV84');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,84)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV85');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,85)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV86');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,86)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV87');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,87)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV88');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,88)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV89');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,89)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV90');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,90)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV91');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,91)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV92');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,92)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV93');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,93)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV94');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,94)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV95');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,95)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV96');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,96)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV97');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,97)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV98');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,98)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV99');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,99)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV100');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,100)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV101');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,101)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV102');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,102)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV103');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,103)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV104');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,104)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV105');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,105)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV106');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,106)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV107');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,107)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV108');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,108)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV109');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,109)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV110');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,110)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV111');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,111)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV112');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,112)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV113');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,113)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV114');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,114)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV115');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,115)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV116');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,116)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV117');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,117)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV118');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,118)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV119');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,119)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV120');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,120)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV121');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,121)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV122');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,122)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV123');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,123)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));

% DSSCircuit.SetActiveElement('PVSystem.PV124');
% S_Gen1=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
% P_Gen(i,124)=-1*(S_Gen1(1)+S_Gen1(3)+S_Gen1(5));
end