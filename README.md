# PARSEC pseudopotentials library

This repository provides a growing collection of norm-conserving Troullier-Martins (TM) pseudopotentials. The [Pseudopotential](https://github.com/jlm785/pseudopotential) code by [Jose L. Martins](https://github.com/jlm785) is used to generate data. The _POTRE.DAT format for PARSEC and the UPF format are available.  

## Citation
* N. Troullier and Jose L. Martins, *Efficient pseudopotentials for plane-wave calculations*, [Physical Review B **43**, 1993](https://doi.org/10.1103/PhysRevB.43.1993) (1991).

## Directory structure
```
parsec-pseudo/
├─ functional_relativistic/
│  └─ index_element_electrons/
│     ├─ atom.dat
│     ├─ element_POTRE.DAT
│     ├─ element.upf
│     └─ README.md
└─ README.md
```

## Available elements
### PBE, full relativistic
| | | | | | | | | | | | | | | | | | |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| H | | | | | | | | | | | | | | | | | He |
| Li | Be | | | | | | | | | | | B | C | N | O | F | Ne |
| Na | Mg | | | | | | | | | | | Al | Si | P | [S](PBE_FR/16_S_6v) | Cl | Ar |
| K | Ca | Sc | Ti | V | Cr | Mn | Fe | Co | Ni | Cu | Zn | Ga | Ge | As | [Se](PBE_FR/34_Se_6v) | Br | Kr |
| Rb | Sr | Y | Zr | Nb | [Mo](PBE_FR/42_Mo_6v) | Tc | Ru | Rh | Pd | Ag | Cd | In | Sn | Sb | Te | I | Xe |
| Cs | Ba | | Hf | Ta | [W](PBE_FR/74_W_6v) | Re | Os | Ir | Pt | Au | Hg | Tl | Pb | Bi | Po | At | Rn |
| Fr | Ra | | Rf | Db | Sg | Bh | Hs | Mt | Ds | Rg | Cn | Nh | Fl | Mc | Lv | Ts | Og |
| | | | | | | | | | | | | | | | | | |
| | | La | Ce | Pr | Nd | Pm | Sm | Eu | Gd | Tb | Dy | Ho | Er | Tm | Yb | Lu | |
| | | Ac | Th | Pa | U | Np | Pu | Am | Cm | Bk | Cf | Es | Fm | Md | No | Lr | |
| | | | | | | | | | | | | | | | | | |

