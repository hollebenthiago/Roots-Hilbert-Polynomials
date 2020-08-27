restart 
loadPackage "RandomIdeals" 
R = QQ; 
rR = "QQ"; 
var = 9; 
d = 4; 
g = 125; 
rep = 70000; 
S = R[x_1..x_9]; 
 f = randomSquareFreeMonomialIdeal; 
everyRoot = [] 
for i to rep do { 
   I = f((g:d), S); 
   p = hilbertPolynomial(coker gens I, Projective => false); 
   everyRoot = append(everyRoot, roots p); 
} 
file = concatenate("./roots_equi/", rR, "/var", toString(var), "_deg", toString(d), "_gens", toString(g), "_rep", toString(rep)) 
for i to rep do { 
   for j to #everyRoot_i -1 do { 
       file << concatenate(toString(realPart everyRoot_i_j), ", ", toString(imaginaryPart everyRoot_i_j)) << endl; 
   } 
} 
file << close; 
exit()