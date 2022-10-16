function vet = teste_N_fixo(img)
  imgGray = double(rgb2gray(img))/255;
  index = 0
  for n=0.1:1
    index = index + 1
    [imgResult, er] = promediacao(imgGray, 10, n);
    vet(index) = er;
    vet_lv(index) = n;
  endfor

  plot(vet_lv, vet);
end
