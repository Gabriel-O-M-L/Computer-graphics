function [i,j] = convert_srn_to_srd (x,y,L,C)

  j = round((((x+1)/2))*(C-1)+1);
  i = round(-((((y+1)/2))*(L-1)-L));

  endfunction

