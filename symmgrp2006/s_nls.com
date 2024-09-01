/* Command file for Nonlinear Schrodinger Equation */

/* Uses the file s_nls.dat  */

batchload("symmgrp.max")$
writefile("s_nls.out");
batch("s_nls.dat")$
symmetry(1,0,0)$
printeqn(lode)$
/* save("lodenls.lsp",lode)$ */
closefile(); 
quit();


