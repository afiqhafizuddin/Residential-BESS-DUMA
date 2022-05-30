function [P_L,Q_L] = demandextraction(i,DSSObj,DSSText,DSSCircuit,DSSSolution)

    DSSCircuit.SetActiveElement('Load.LOAD1');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,1)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,1)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD2');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,2)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,2)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD3');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,3)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,3)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD4');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,4)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,4)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD5');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,5)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,5)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD6');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,6)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,6)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD7');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,7)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,7)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD8');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,8)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,8)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD9');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,9)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,9)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD10');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,10)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,10)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD11');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,11)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,11)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD12');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,12)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,12)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD13');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,13)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,13)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD14');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,14)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,14)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD15');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,15)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,15)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD16');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,16)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,16)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD17');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,17)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,17)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD18');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,18)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,18)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD19');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,19)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,19)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD20');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,20)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,20)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD21');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,21)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,21)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD22');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,22)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,22)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD23');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,23)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,23)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD24');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,24)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,24)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD25');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,25)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,25)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD26');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,26)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,26)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD27');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,27)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,27)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD28');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,28)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,28)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD29');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,29)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,29)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD30');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,30)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,30)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD31');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,31)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,31)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD32');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,32)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,32)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD33');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,33)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,33)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD34');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,34)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,34)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD35');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,35)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,35)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD36');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,36)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,36)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD37');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,37)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,37)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    DSSCircuit.SetActiveElement('Load.LOAD38');
    S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    P_L(i,38)=1*(S_L(1)+S_L(3)+S_L(5));
    Q_L(i,38)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD39');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,39)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,39)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD40');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,40)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,40)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD41');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,41)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,41)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD42');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,42)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,42)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD43');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,43)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,43)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD44');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,44)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,44)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD45');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,45)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,45)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD46');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,46)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,46)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD47');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,47)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,47)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD48');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,48)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,48)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD49');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,49)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,49)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD50');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,50)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,50)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD51');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,51)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,51)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD52');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,52)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,52)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD53');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,53)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,53)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD54');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,54)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,54)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD55');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,55)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,55)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD56');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,56)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,56)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD57');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,57)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,57)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD58');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,58)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,58)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD59');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,59)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,59)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD60');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,60)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,60)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD61');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,61)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,61)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD62');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,62)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,62)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD63');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,63)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,63)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD64');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,64)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,64)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD65');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,65)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,65)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD66');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,66)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,66)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD67');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,67)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,67)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD68');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,68)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,68)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD69');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,69)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,69)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD70');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,70)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,70)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD71');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,71)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,71)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD72');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,72)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,72)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD73');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,73)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,73)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD74');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,74)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,74)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD75');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,75)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,75)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD76');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,76)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,76)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD77');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,77)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,77)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD78');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,78)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,78)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD79');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,79)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,79)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD80');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,80)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,80)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD81');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,81)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,81)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD82');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,82)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,82)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD83');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,83)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,83)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD84');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,84)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,84)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD85');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,85)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,85)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD86');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,86)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,86)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD87');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,87)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,87)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD88');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,88)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,88)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD89');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,89)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,89)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD90');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,90)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,90)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD91');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,91)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,91)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD92');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,92)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,92)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD93');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,93)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,93)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD94');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,94)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,94)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD95');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,95)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,95)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD96');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,96)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,96)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD97');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,97)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,97)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD98');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,98)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,98)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD99');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,99)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,99)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD100');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,100)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,100)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD101');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,101)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,101)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD102');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,102)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,102)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD103');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,103)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,103)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD104');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,104)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,104)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD105');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,105)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,105)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD106');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,106)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,106)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD107');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,107)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,107)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD108');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,108)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,108)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD109');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,109)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,109)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD110');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,110)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,110)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD111');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,111)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,111)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD112');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,112)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,112)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD113');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,113)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,113)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD114');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,114)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,114)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD115');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,115)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,115)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD116');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,116)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,116)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD117');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,117)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,117)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD118');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,118)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,118)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD119');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,119)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,119)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD120');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,120)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,120)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD121');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,121)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,121)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD122');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,122)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,122)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD123');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,123)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,123)=1*(S_L(2)+S_L(4)+S_L(6));;
    
    % DSSCircuit.SetActiveElement('Load.LOAD124');
    % S_L=DSSCircuit.ActiveElement.Powers; % obtained 1X8 matrix
    % P_L(i,124)=1*(S_L(1)+S_L(3)+S_L(5));
    % Q_L(i,124)=1*(S_L(2)+S_L(4)+S_L(6));;
 

end