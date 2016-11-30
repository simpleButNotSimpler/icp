function s = getScale(sx, sy, sz, px, py, pz, q, n),
    den = 0;
    num = 0;
    s = zeros(3);
    
    for j=1:3,
        den = 0;
        num = 0;
        for i=1:n,
            si = [sx(i); sy(i); sz(i)];
            pi = [px(i); py(i); pz(i)];
            num = num + transpose(si) * transpose( rotfromquat(q, transpose(E(j) * pi)) );          
            
            den = den + transpose(pi)*E(j)*pi;
        endfor;
        
        s(j, j) = num / den;
    endfor;

endfunction;