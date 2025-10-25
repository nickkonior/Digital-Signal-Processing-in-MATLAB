ar = [1 1 1];
rizes_par = [-0.4, -0.5, 0 ];

par = poly(rizes_par);

[r, p, k] = residue(ar, par);

disp(r);
disp(p);

disp(k);