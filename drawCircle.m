function H = drawCircle(I0,J0,R,dimM,dimN)
    H = zeros(dimM,dimN);

    for a=-R:R 
            b = I0 + a;
            c = abs(sqrt(R^2 - a^2));

            for d=(J0-c):(J0+c)
            e = ceil(d);
            H(b,e) = 1;
            end
    end
end
