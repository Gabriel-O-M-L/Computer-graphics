function y_comp = dil_comp(x,horiz_scale,vert_scale,conv_type)

  [horiz_numerator,horiz_denominator] = rat(horiz_scale);
  [vert_numerator,vert_denominator] = rat(vert_scale);
  [L,C] = size(x);

  if (horiz_denominator != 1)
    N = horiz_numerator;
    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif

    insert_zero = horiz_numerator - 1
    Y = zeros(L,C+(C*insert_zero));
    count_x = 1

    for i = 1:L
      Y(i,1:insert_zero+1:end - insert_zero) = x(i,1:end)
      count_x = count_x+1;
    endfor

    count_x = 1;

   [yconv_L,yconv_C] = size(conv(Y(1,1:C+(C*insert_zero)),w));
    new_conv = zeros(L,yconv_C);

    for i = 1:L
      new_conv(L,1:yconv_C) = conv(Y(L,1:C+(C*insert_zero)),w);
    endfor

    N = horiz_denominator;

    if(conv_type == 1)
      w = [[(1/N):(1/N):1] [((N-1)/N):(-1/N):(1/N)]];
    else
      w = ones(1,N)/N;
    endif

    [new_yconv_L,new_yconv_C] = size(conv(new_conv(1,1:yconv_C),w));
    new_yconv = zeros(L,new_yconv_C);

    for i = 1:L
      new_yconv(L,1:new_yconv_C) = conv(new_conv(L,1:yconv_C),w);
    endfor

    [y_comp_L,y_comp_C] = size(new_yconv(1,1:N:new_yconv_C));
     y_comp = zeros(L,y_comp_C);

     for i = 1:L
      y_comp(L,1:y_comp_C) = new_yconv(L,1:N:new_yconv_C);
     endfor

    endif
    imshow(y_comp)

endfunction
