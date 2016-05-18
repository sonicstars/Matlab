function [Win,WinPresent]=cthunf(H,M,CTa,n)
Win=0;%初始化勝場次數
for cc=1:1:n 
Head=H;%角色血量
Minions=M;%手下數量與血量
CThun=CTa;%克蘇恩攻擊
    for ct=1:1:CThun 
        Minions(Minions==0)=[];%如果有小怪的血量歸零，移除檯面
        a=randi(length(Minions)+1,1,1);%本次攻擊打哪裡
        if a>length(Minions)%判斷不是打小怪，頭血量減一
            Head=Head-1;
        else 
            Minions(a)=Minions(a)-1;%如果打小怪，該小怪血量減一
        end
        clear a
    end

    if Head<=0;%如果頭的血量小於零，算勝場
        Win=Win+1;
    end
clear Head Minions CThun a e ct HM
end
WinPresent=Win/n;

