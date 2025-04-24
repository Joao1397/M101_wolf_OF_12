#!/bin/bash

foamCleanTutorials
blockMesh | tee log.blockMesh
surfaceFeatures | tee log.surfaceFeatures
decomposePar
mpirun -np 2 snappyHexMesh -parallel | tee log.snappyHexMesh
mpirun -np 2 checkMesh -latestTime -parallel | tee log.checkMesh
reconstructPar -latestTime
paraFoam -builtin

# cp 3/polyMesh/* constant/polyMesh
# rm -rf 1
# rm -rf 2
# rm -rf 3
# checkMesh -latestTime
