# DECO-DELTA 27

This is a modified version of DECO that includes a global Delta 27 (D27) symmetry. The fermions are triplets under D27 and the BSM scalar fields are anti-triplets under D27. The BSM scalars introduced are based on the [Universal Texture Zero](https://arxiv.org/abs/1710.01741) (UTZ) model developed by Ivo de Medeiros Varzielas, Graham G. Ross, and Jim Talbert. The programme counts the effective Lagrangian at each dimension using DECO developed by Simon Calo, Coenraad Marinissen and Rudi Rahn. 

If you use DECO, please cite the relevant [paper](https://arxiv.org/abs/2212.04395).

DECO relies on FORM, which can be found on Jos Vermaseren's [github repository](https://github.com/vermaseren/form).

The code is run by form, and to run the code you need to type ./form SMEFTD27UTZ.frm into the terminal after cloning the repository. 
The physics is in DECOd27WITHU1Z.h, which defines the symmetries considered.
The fields and their respective charges are in SMEFTD27UTZ.frm. The current version includes SM fermions and BSM scalars that form the Yukawa terms together with fermions. Their introduction is based on the UTZ model. 
The nth dimensional Lagrangian is stored as a .txt files named 'trynewWOFL/n/nodaggernoc.txt'. The file name made sense to me at some point. 

The Lagrangian outputs and the summary of their most recent analysis, including the comparison with the Yukawa terms present in the UTZ model, can be found in the [write up](https://www.overleaf.com/read/cpdccmjgspdv#d19d3d) Section 10 (I will update this constantly). The .txt outputs were converted to LaTeX using MATHEMATICA independent of the DECO programme. 
