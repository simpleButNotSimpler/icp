function vec = rotfromquat(q, v),
    [vv, angle] = q2rot(q);
    vv = sin(angle/2)*vv;
    
    r = [vv(1), vv(2), vv(3)];
    w = cos(angle/2);
    
    temp = cross(r, v)+ w*v;
    temp = cross(2*r, temp);
    vec =  temp + v;
endfunction;