function H = drawLine(I0,J0,If,Jf,dimM,dimN)
    H = zeros(dimM,dimN);
    deltaI = If - I0;
    deltaJ = Jf - J0;
    m = deltaI/deltaJ;

    if(deltaI > deltaJ)
        for a=J0:Jf 
            b = I0 + m * (a - J0);
            b = ceil(b);
            H(a,b) = 1;
        end
    else
        for a=I0:If 
            b = J0 + m * (a - I0);
            b = ceil(b);
            H(a,b) = 1;
        end
    end

    
end