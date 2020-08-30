loadPackage("CorrespondenceScrolls", Reload => true)
loadPackage("SpectralSequences", Reload => true)

makeRing = method();
makeRing(ZZ, ZZ, Ring) := (n, m, A) ->(
    degs := {};
    M := ZZ^n;
    ds := entries id_M;
    for i to n-1 do for j to m-1 do degs = append(degs, ds#i);
    S := A[x_0..x_(n*m-1), Degrees => degs];
    return S
)