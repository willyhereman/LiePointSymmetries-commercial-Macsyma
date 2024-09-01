
/* Information for symmetry program, file: s_readme.txt       */

/* ********************************************************** */
/*                                                            */
/*           *** M A C S Y M A  P R O G R A M ***             */
/*                                                            */
/*   COMPUTER ASSISTED CALCULATION OF THE SYMMETRY GROUPS     */
/*                OF DIFFERENTIAL EQUATIONS                   */
/*                                                            */
/*  program name: SYMMGRP.MAX                                 */
/*                                                            */
/*  purpose: find the determining equations needed to         */
/*           compute the symmetry group of a given system     */
/*           of differential equations                        */
/*                                                            */
/*  computers: tested on VAX-11/750 & 780,                    */
/*             VAX-8600 and on VAX-2000, and                  */
/*             on PC: PC-Macsyma 417.125 and 2.0              */
/*                                                            */
/*  language: MACSYMA release 412,                            */
/*            compatible with REX MACSYMA 305                 */
/*            and MACSYMA 309                                 */
/*                                                            */
/*  authors: B. Champagne and P. Winternitz,                  */
/*           Centre de Recherches Mathematiques,              */
/*           Universite de Montreal, Montreal, Quebec, Canada */
/*                                                            */
/*                            and                             */
/*           W. Hereman,                                      */
/*           Department of Mathematical and Computer Sciences */
/*           Colorado School of Mines,                        */
/*           Golden, CO 80401, USA                            */
/*                                                            */
/*  updated: May 29, 1995                                     */
/*                                                            */
/* ********************************************************** */

The main source of information and usage of the program is the paper:

B. Champagne, W. Hereman and P. Winternitz,
``The Computer Calculation of Lie Point Symmetries of Large
Systems of Differential Equations",
Computer Physics Communications, vol. 66, pp. 319-340, 1991

The paper is written in LATEX and is also on file with the CPC Program
Library at The Queen's University of Belfast, Belfast BT7 1NN, Northern 
Ireland. In producing the paper the pages containing the TEST RUN OUTPUT,
the LISTING OF SYMMGRP.MAX and the LISTING OF PRINTEQN.MAX have to be 
printed separately. If you like a paper copy print the ASCII files 
s_trun.out, symmgrp.max and printeqn.max.

Note: The file s_manual.tex contains the body of this paper, but not 
      the files TEST RUN OUTPUT, the LISTING OF SYMMGRP.MAX and the 
      LISTING OF PRINTEQN.MAX (these are ASCII files).

             ------------------------------------------------

Further documentation about Lie symmetry software can be found in my
review papers (with lots of references):

W. Hereman,
``Symbolic Software for Lie Symmetry Analysis".
In: CRC Handbook of Lie Group Analysis of Differential Equations.
Vol. III, Chapter 13, Ed.: N.H. Ibragimov, CRC Press, Boca Raton, 
Florida (October, 1995), in press (on the floppy under as crc.tex)

W. Hereman,
``Review of symbolic software for the computation of Lie symmetries 
of differential equations",
Euromath Bulletin, vol. 2, no. 1, pp. 45-82 (1994) (not on floppy)

W. Hereman
``Review of Symbolic Software for Lie Symmetry Analysis",
to appear in: Mathematical and Computer Modelling, vol. 20,
Special Issue on Algorithms for Nonlinear Systems, 1995,
in press (on floppy as mcm.tex)

W. Hereman,
``SYMMGRP.MAX and other symbolic program for symmetry analysis
of partial differential equations",
in: `Exploiting Symmetry in Applied and Numerical Analysis',
Lectures in Applied Mathematics {\bf 29}, 
Proceedings of the AMS-SIAM Summer Seminar, Fort Collins, 
July 26-August 1, 1992, Eds.: E. Allgower, K. Georg and R. Miranda, 
American Mathematical Society, Providence, Rhode Island, pp. 241-257 (1993)
(not on the floppy)
 
             ----------------------------------------------

Sections of the following papers are also devoted to the use of SYMMGRP.MAX

File kdv95.tex:

W. Hereman and W. Zhuang,
``Symbolic software for soliton theory",
Proceedings of Conference KdV '95, April 1995, Amsterdam, The Netherlands, 
Eds.: M. Hazewinkel, H. W. Capel and E. M. de Jager, 
Kluwer Academic Publishers, pp. 361-378 (1995).
Also: Acta Applicandae Mathematicae, vol 39, pp. 361-378 (1995)

File pdeimacs.tex:

W. Hereman,
``Symbolic software for the study of nonlinear partial differential equations",
in: Advances in Computer Methods for Partial Differential Equations VII,
Proceedings of the 7th IMACS International Conference on Computer Methods 
for Partial Differential Equations,
Rutgers University, New Brunswick, New Jersey, June 22-24, 1992,
Eds.: R. Vichnevetsky, D. Knight and G. Richter, 
IMACS, New Brunswick, New Jersey, pp. 326-332 (1993)

                -------------------------------------

The main program is called SYMMGRP.MAX. There is also a small program, 
called PRINTEQN.MAX that allows printing the determining equations.
The programs are in the subdirectory PROGRAM. These program files and
the demonstration files are regular text files in ASCII code. 

The demonstration files are in the subdirectory TESTDECK.
There are data, command and output files for the Korteweg-de Vries,
the Harry Dym, the nonlinear Schrodinger and Karpman equations. 
The latter case is explicitly documented in the papers in Computer
Physics Communications. 

The papers, the manual (mentioned above) and documentation are in the 
subdirectory DOCUMENT.

                    -------------------------- 

The software is also available via anonymous FTP from our ftp site:

ftp.mines.colorado.edu

FTP to that site, login with anonymous, use your email address or name
as password. Then change to the directory pub/papers/math_cs_dept/software.

The symmetry software is in the subdirectory symmetry.

                    --------------------------

How to use the program:

After the files are in place on your system (that should have Macsyma),
you may want to try the simple cases (Korteweg-de Vries, Harry Dym, and
nonlinear Schrodinger equations).

Before you batch the command file, e.g. s_kdv.com, make sure that
the lines in that file specify the correct path. The path specification
differs for various platforms (PC, work station or main computer).

For example, if you have s_kdv.com (as well as s_kdv.dat and the files
symmgrp.max and printeqn.max) in the subdirectory symmetry under c:\macsyma
on your PC, then the command file should read:

/* Command file for Korteweg-de Vries Equation */
/* Uses the file s_kdv.dat  */

batchload("c:\\macsyma\\symmetry\\symmgrp.max")$
writefile("c:\\macsyma\\symmetry\\s_kdv.out");
batch("c:\\macsyma\\symmetry\\s_kdv.dat")$
symmetry(1,0,0)$
printeqn(lode)$
save("c:\\macsyma\\symmetry\\lodekdv.lsp",lode)$
closefile(); 
quit();

Similar changes may have to be made for other platforms. 
Consult the Macsyma guide (or manual) for your system. 

To run the KdV case at the prompt (c1) under Macsyma on your PC, type 

batch("c:\\macsyma\\symmetry\\s_kdv.com");

                    --------------------------

Some information about the history of the program and its current 
scope and capabilities:

The original program designed by Benoit Champagne in 1985 has been modified 
to make it possible to find the Lie point symmetries for large systems 
of differential equations involving e.g. 10 independent variables and 10 
dependent variables.

So far, the program calculates the system of determining equations for
the unknown coefficients of the vector field. It does not solve this
system of linear homogeneous equations automatically, however, a feedback 
mechanism allows to drastically simplify these calculations.

How does the feedback mechanism work?

One runs the program on one or more selected equations and then extracts
information from the determining equations that result. This information,
usually stating the independence of some of the independent or dependent
variables, or expressing linearity of coefficients in the dependent
variables, etc., is then added to the data file for the next run.
This allows to solve the determining equations with the help from the computer.
Although it still involves manual intervention, this approach avoids quite 
a few trivial errors because all the simplifications are taken care of by 
the program.

The user is strongly advised to look at the examples in the demo files
to get an idea what kind of information one may put in, and how to do it.
In the paper one example (dealing with a system of equations due to 
Vladimir Karpman) is completely documented. The corresponding files are in
the subdirectory TESTDECK.

Once the complete solution to the determining equations is known one can
verify it. There are two obvious ways of doing this:

Method 1: One runs the program again with the complete solution in a data file.
There should finally no determining equations be left.

Method 2: As one goes along, one can save a list of determining equations
in lisp form and later on evaluate these equations for a given solution.
If the solution is correct the determining equations should be satisfied
trivially. 

                     --------------------------

Some important notes about the use of the parameters in the data file.

SIX parameters have been introduced, these parameters have to be specified 
in the data file.

The first parameter,

parameters : [a1,ss,,...,] $

contains a list of constant parameters occurring in the given equations and
that may be factored out and subsequently cancelled in eliminations.
Needless to say that the parameters should be nonzero and that one can not
use any names that are already used in the program (such as p, q, m, ei, etc.)
or that are used by MACSYMA (e.g. c1, d1, ... , beta which refers to the beta 
function).

The second parameter,

sublisteqs : [ei,ej,...,ek] $

allows to run the program for one (or more) selected equation(s) at the time.

Example:

sublisteqs : [e1] $

will force the program to apply the prolongation to the first equation
of the system only. Of course, all the substitutions are made from the
entire system. If you want to run the program on all the equations you put

sublisteqs : [all] $

The third parameter,

highest_derivatives : some positive integer $

allows to extract partial information from the prolongation.
Its aim is to be able to use only the terms involving the
highest derivatives u[l,j] of u[l] after application of the
prolongation and substitution for the vi, as selected in the data file.

Example:

highest_derivatives : 2 $

will extract all information from the highest and second highest derivatives.
If you want to obtain all the determining equations you put

highest_derivatives : all $

The fourth parameter,

info_given : true $

allows to submit information about the eta's, phi's, obtained from previous 
runs of the program. If no information is submitted one must set

info_given : false $

This is the major modification and improvement because it allows
to solve the system of determining equations via feedback.

The fifth parameter,

warnings : true $

allows to control the `warning' statements in case the program divides by
parameters which could be zero. If you do not want the extra warnings set

warnings : false $

The sixth parameter,

subst_deriv_of_vi : true $

controls the substitution of the partial derivatives of the vi in
in the prolonged equation. For example, if v1:u[1,[0,1]] and if u[1,[1,1]]
occurs in the prolonged equation then the derivative of u[1,[0,1]] will be 
calculated and u[1,[1,1]] will be replaced by that expression, etc., until
all the vi and all their partial derivatives are eliminated.

In some cases it is not possible to select the vi in such a way that
the differential consequences would not reintroduce lower order derivatives 
of the vi, hence causing a loop!  Therefore, we have make the substitution 
of the partial derivatives of the vi optional. If only the vi should be 
replaced and not their derivatives you put

subst_deriv_of_vi : false $

The resulting system of determining equations is `equivalent' with the one
obtained using the substitution of all the partial derivatives of the vi.
In the later case the system of determining equations may be somewhat simpler.

                     --------------------------

To learn about new updates of the program, or in case of trouble, contact me.

By phone: (303) 273-3881 (office, with messages) or 3860 (secretary), 
          or (303) 440-6089 (home, with answering service);

By fax: (303) 273-3875 (mention for Dr. Hereman)

By email: WHEREMAN@FLINT.MINES.COLORADO.EDU 
          or WHEREMAN@LIE.MINES.COLORADO.EDU

By mail:

Dr. Willy Hereman
Associate Professor
Department of Mathematical and Computer Sciences
Colorado School of Mines
Golden, Colorado 80401-1887, USA

Any comments about the program are welcomed by the authors. 
Good luck!

Willy 

Golden, May 29, 1995.

                     --------------------------

