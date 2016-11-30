function mat = rv2rotm4(vx, vy, vz),
   answer = [0 -vx, -vy, -vz; vx, 0, vz, -vy; vy, -vz, 0, vx; vz, vy, -vx, 0];
   mat = answer;
endfunction;