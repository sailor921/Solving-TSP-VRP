function SelCh=Mutate(SelCh,Pm)
%% 变异操作
%输入：
%SelCh  被选择的个体
%Pm     变异概率
%输出：
%SelCh	变异后的个体

[NSel,L]=size(SelCh); %被选择的个体的行列
for i=1:NSel
    if Pm>=rand %若伪随机数落进变异概率
        R=randperm(L-1); %除去染色体尾1位再突变
        R(R==1)=[]; %除去VRP路线首位可突变的可能
        SelCh(i,R(1:2))=SelCh(i,R(2:-1:1)); %换位变异
    end
end