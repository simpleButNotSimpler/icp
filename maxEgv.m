function egv = maxEgv(mat),
  [v, lamb] = eig(mat);
  maxev = lamb(1,1);
  index = 1;
  
  for i=2:4,
    if lamb(i,i) > maxev,
      maxev = lamb(i,i);
      index = i;
    endif;
  endfor;
  
  egv = v(:, index);
endfunction;