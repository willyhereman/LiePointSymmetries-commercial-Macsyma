/* Command file for Harry Dym Equation */
/* Uses the file s_hd.dat  */

batchload("symmgrp.max")$
writefile("s_hd.out");
batch("s_hd.dat")$
symmetry(1,0,0)$
printeqn(lode)$
save("lodehd.lsp",lode)$
closefile(); 
quit();


