function [y,er] = promediacao(grey_img,Num_versions,mult_factor)

[L,C] = size(grey_img);

for k=1:Num_versions
    z(:,:,k) = grey_img + mult_factor * randn(L,C);
end

y = zeros(L,C);

for k=1:Num_versions
    y(:,:) = y(:,:) + z(:,:,k);
end

y = y/Num_versions;
er = y/grey_img
endfunction


