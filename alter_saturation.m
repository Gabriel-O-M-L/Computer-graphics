function alter_saturation(x)

  y = rgb2hsv(x);
  
  for j = 0.05:0.10:0.95
    y(:,:,2) = j;
    close all
    y_rgb = hsv2rgb(y);
    imshow(y_rgb);
    pause;
    close all
  end
