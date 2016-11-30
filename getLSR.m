function q = getLSR(sx, sy, sz, px, py, pz, n),
    m = masterMat(sx, sy, sz, px, py, pz, n);
    mEgv = maxEgv(m);
    q = quaternion(mEgv(1), mEgv(2), mEgv(3), mEgv(4));
endfunction;