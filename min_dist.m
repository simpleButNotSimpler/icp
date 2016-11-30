function [a, b, c] = min_dist(v, sx, sy, sz, n),
  s = [sx(1), sy(1), sz(1)];
  min_v = norm(v-s);
  a = sx(1); b = sy(1); c = sz(1);
  index = 1;
  
  for i=2:n,
    s = [sx(i), sy(i), sz(i)];
    temp = norm(v-s);
    if temp < min_v,
       min_v = temp;
       index = i;
    endif;
  endfor;
    a = sx(index); b = sy(index); c = sz(index);
endfunction;