function [Win,WinPresent]=cthunf(H,M,CTa,n)
Win=0;%��l�Ƴӳ�����
for cc=1:1:n 
Head=H;%�����q
Minions=M;%��U�ƶq�P��q
CThun=CTa;%�JĬ������
    for ct=1:1:CThun 
        Minions(Minions==0)=[];%�p�G���p�Ǫ���q�k�s�A�����i��
        a=randi(length(Minions)+1,1,1);%��������������
        if a>length(Minions)%�P�_���O���p�ǡA�Y��q��@
            Head=Head-1;
        else 
            Minions(a)=Minions(a)-1;%�p�G���p�ǡA�Ӥp�Ǧ�q��@
        end
        clear a
    end

    if Head<=0;%�p�G�Y����q�p��s�A��ӳ�
        Win=Win+1;
    end
clear Head Minions CThun a e ct HM
end
WinPresent=Win/n;

