function [ y ] = simule_piece( x,fech )
%ENTREE : x=signal émis par le haut-parleur
%         fech=fréquence d'échantillonnage de x
%SORTIE : y=signal capté par le microphone dans la pièce
%%

load('input/empreinte_ac')
if fech~=fe, error('Fréquence d''échantillonnage incorrecte'), end
empreinte=empreinte(1:80000);
y=conv(x,empreinte);


end

