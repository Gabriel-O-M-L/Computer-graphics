function curve_draw

  matriz = zeros(500,500);
  [L,C] = size (matriz);
  for t = 0:0.000001:1

      x = cos(2 * pi * t);
      y = sin(2 * pi * t);
      [i,j] = convert_srn_to_srd(x,y,L,C);

      matriz(i,j) = 1;

  end
  imshow(matriz);
end
