function correction = altGamma(grayImg)
  
  brightness = mean(grayImg(:))/255;
  
  if(brightness > 0.5)
    correction = grayImg.^0.8;
  elseif(brightness <= 0.5)
    correction = grayImg.^1.5;
  end
   
  end
