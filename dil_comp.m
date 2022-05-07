function y_comp = dil_comp(x,horiz_scale,vert_scale,conv_type)

  [horiz_numerator,horiz_denominator] = rat(horiz_scale);
  [vert_numerator,vert_denominator] = rat(vert_scale);
  [L,C] = size(x);
  x = x/255;


  if (horiz_denominator != 1)
    N = horiz_numerator;
    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif

    insert_zero = horiz_numerator - 1
    Y = zeros(L,C+(C*insert_zero));

    for i = 1:L
      Y(i,1:insert_zero+1:end - insert_zero) = x(i,1:end);
    endfor

   [yconv_L,yconv_C] = size(conv(Y(1,1:end),w));
    new_conv = zeros(L,yconv_C);

    for i = 1:L
      new_conv(i,1:end) = conv(Y(i,1:end),w);
    endfor

    N = horiz_denominator;

    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif

    [new_yconv_L,new_yconv_C] = size(conv(new_conv(1,1:end),w));
    new_yconv = zeros(L,new_yconv_C);

    for i = 1:L
      new_yconv(i,1:end) = conv(new_conv(i,1:end),w);
    endfor

    [y_comp_L,y_comp_C] = size(new_yconv(1,1:N:end));
     y_comp = zeros(L,y_comp_C);

     for i = 1:L
      y_comp(i,1:end) = new_yconv(i,1:N:end);
     endfor

  endif

  if(vert_denominator != 1)
    [L,C] = size(y_comp);
    N = vert_numerator;
    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif

    insert_zero = vert_numerator - 1
    Y = zeros(L+(L*insert_zero),C);
 
    for i = 1:C
      Y(1:insert_zero+1:end - insert_zero,i) = y_comp(1:end,i);
    endfor
    
    [yconv_L,yconv_C] = size(conv(Y(1:end,1),w));
    new_conv = zeros(yconv_L,C);

    for i = 1:C
      new_conv(1:end,i) = conv(Y(1:end,i),w);
    endfor
    
    N = vert_denominator;

    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif
    
    [new_yconv_L,new_yconv_C] = size(conv(new_conv(1:end,1),w));
    new_yconv = zeros(new_yconv_L,C);

    for i = 1:C
      new_yconv(1:end,i) = conv(new_conv(1:end,i),w);
    endfor
    
    [y_comp_L,y_comp_C] = size(new_yconv(1:N:end,1));
     y_comp = zeros(y_comp_L,C);

     for i = 1:C
      y_comp(1:end,i) = new_yconv(1:N:end,i);
     endfor
     imshow(y_comp.^0.5)
     
    endif
    
endfunction
