function [x,y] = convert_srd_to_srn (i,j,L,C)

  x = round(2*((j-1)/(C-1)-(1/2));
  y = round(2*((L-i)/(L-1)-(1/2));

  endfunction
