/* Command file for Korteweg-de Vries Equation */

/* Uses the file s_kdv.dat  */

batchload("symmgrp.max")$
writefile("s_kdv.out");
batch("s_kdv.dat")$
symmetry(1,0,0)$
printeqn(lode)$
save("lodekdv.lsp",lode)$ 
closefile(); 
quit();


