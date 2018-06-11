
OLDIFS=$IFS

for i in astar bzip23 gccc gromacs h264ref hmmer lbm mcf povray sjeng soplex sphinx
    do
    	echo "$i\n\n"
        cd "$i"
        sh run.sh
        cd ..
        echo "\n......................................................\n"
done
