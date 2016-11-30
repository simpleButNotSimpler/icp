function [a, b, c, er] = setTransform(sx, sy, sz, px, py, pz, n, with_scaling),
    a = zeros(1, n);
    b = zeros(1, n);
    c = zeros(1, n);
    
    #compute the centroids
    [scentx, scenty, scentz] = centroid(sx, sy, sz, n);
    [pcentx, pcenty, pcentz] = centroid(px, py, pz, n);
   
    #get the lsr quaternion
    q = getLSR(sx, sy, sz, px, py, pz, n);
    
    
    #quaternion form of the centroids
    sbar = [scentx, scenty, scentz];
    pbar = [pcentx, pcenty, pcentz];
    
    #compute the scaling
    if with_scaling == 1,
        s = getScale(sx, sy, sz, px, py, pz, q, n);
    else
        s = [1 0 0; 0 1 0; 0 0 1];
    endif;
    
    #apply the tranformation to all the points and compute the error
    er = 0;
    for i=1:n,
        pi = [px(i), py(i), pz(i)];
        pprime = s*transpose(pi - pbar);
        p = rotfromquat(q, transpose(pprime)) + sbar;
        a(i) = p(1);
        b(i) = p(2);
        c(i) = p(3);
        er = er + norm([a(i), b(i), c(i)] - [sx(i), sy(i), sz(i)])^2;   
     endfor; 
     
endfunction;