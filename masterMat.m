function mat = masterMat(sx, sy, sz, px, py, pz, n),
    p = rv2rotm4(px(1), py(1), pz(1));
    q = v2rotm4(sx(1), sy(1), sz(1));
    mat = transpose(p) * q;
    
    for i=2:n,
        p = rv2rotm4(px(i), py(i), pz(i));
        q = v2rotm4(sx(i), sy(i), sz(i));
        mat = mat + (transpose(p) * q);
    endfor;
endfunction;