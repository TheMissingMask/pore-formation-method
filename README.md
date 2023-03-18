# pore-formation-method

## simple illustration of method for creating holes in lipid bilayers in gromacs

### creates a single pore in a small DOPC bilayer

1) mkdir initial
2) mv * initial
3) cd initial
4) mkdir mdp
5) mv *.mdp mdp/
6) bash create_ref.sh membrane.gro
7) bash simulate.sh
