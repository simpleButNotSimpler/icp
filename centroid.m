function [a, b, c] = centroid(px, py, pz, n),
    a = px(1);
    b = py(1);
    c = pz(1);
    
    for i=1:n,
        a = a + px(i);
        b = b + py(i);
        c = c + pz(i);  
    endfor;
    
    a = a / n;
    b = b / n;
    c = c / n;   
endfunction;