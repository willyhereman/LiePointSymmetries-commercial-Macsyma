/* Command file for the first run of the Karpman case */
/* Modify this file for subsequent runs with the remaining data files: */
/* s_kar2.dat, s_kar3.dat, etc ... */

batchload("symmgrp.max");
writefile("s_kar1.out");
batch("s_kar1.dat");
symmetry(1,0,0);
printeqn(lode);
save("lodekar1.lsp",lode);
closefile();
quit();
