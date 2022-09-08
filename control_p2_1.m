p = [1 4 4 1 20];
r = roots(p);
r1 = 0;
r2 = -2;
r3 = -4;
den = poly([r1,r2,r3])
num = [16 16]
[res, p] = residue(num,den)