function [cx, cy, cz] = corresp(sx, sy, sz, px, py, pz, n),
    cx = zeros(1, n);
    cy = zeros(1, n);
    cz = zeros(1, n);
    
  for i=1:n,
    p = [px(i), py(i), pz(i)];
    [cx(i), cy(i), cz(i)] = min_dist(p, sx, sy, sz, n);
  endfor;
endfunction;