restart 
-- loadPackage "RandomIdeals" 
loadPackage "NautyGraphs"
R = QQ; 
rR = "QQ"; 
var = 7; 
-- d = 5; 
-- g = 125; 
-- rep = 70000; 
S = R[x_1..x_var]; 
-- f = randomSquareFreeMonomialIdeal; 
everyRoot = [] 

gs = lines get concatenate("data/graph",toString(var), ".g6")

c = 0
for g in gs do { 
   I = stringToEdgeIdeal(g, S); 
   p = hilbertPolynomial(coker gens I, Projective => false); 
   everyRoot = append(everyRoot, roots(p, Precision => 32, Unique => true));
   
   c = c + 1;
   print(c, #gs);
} 
file = concatenate("./roots_edgeideals_V/", rR, "/", toString(var), "vertices") 
for i to #everyRoot - 1 do { 
   for j to #everyRoot_i -1 do { 
       file << concatenate(toString(realPart everyRoot_i_j), ", ", toString(imaginaryPart everyRoot_i_j)) << endl; 
   } 
} 
file << close; 
exit()

 F?beo
F?bbo