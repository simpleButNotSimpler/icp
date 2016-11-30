function er = icpTest(sx, sy, sz, px, py, pz, n, ntimes, threshold),
    cx = px;
    cy = py;
    cz = pz;
    
    
    for i=1:ntimes,
        [dx, dy, dz] = corresp(sx, sy, sz, cx, cy, cz, n);
        [cx, cy, cz, er] = setTransform(dx, dy, dz, cx, cy, cz, n, 1);
        %fig1 = scatter3(cx, cy, cz, 10, 'y', "filled");
    endfor;
    
    fig1 = scatter3(cx, cy, cz, 10, 'g', "filled");
endfunction;