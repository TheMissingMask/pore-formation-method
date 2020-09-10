cd ../
mkdir em eq md
cd em  
gmx grompp -f ../initial/mdp/em.mdp -p ../initial/topol.top -c ../initial/membrane.gro -o em.tpr
gmx mdrun -deffnm em -v
cd ../eq
gmx grompp -f ../initial/mdp/eq.mdp -n ../em/index.ndx -c ../em/em.gro -p ../initial/topol.top -r ../initial/ref.gro -o eq.tpr
gmx mdrun -deffnm eq -v -dlb yes 
cd ../md
gmx grompp -f ../initial/mdp/md.mdp -n ../em/index.ndx -c ../eq/eq.gro -p ../initial/topol.top -r ../initial/ref.gro -o md.tpr
gmx mdrun -deffnm md -v -dlb yes 
