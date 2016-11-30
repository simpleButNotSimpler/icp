function mat = E(i),
    switch(i)
        case 1
            mat = [1 0 0; 0 0 0; 0 0 0];
        case 2
            mat = [0 0 0; 0 1 0; 0 0 0];
        case 3
            mat = [0 0 0; 0 0 0; 0 0 1];        
    endswitch;
endfunction;