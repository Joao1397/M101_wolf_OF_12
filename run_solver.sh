#!/bin/bash

foamCleanTutorials

# foamCleanPolyMesh

blockMesh | tee log.blockMesh

surfaceFeatures | tee log.surfaceFeatures

snappyHexMesh | tee log.snappyHexMesh

# snappyHexMesh –overwrite

checkMesh -writeSets -latestTime | tee log.checkmesh

paraFoam -builtin

# cp 3/polyMesh/* constant/polyMesh
# rm -rf 1
# rm -rf 2
# rm -rf 3
# checkMesh -latestTime

#!/bin/bash

# foamCleanTutorials
# rm -r 0 > /dev/null 2>&1
# blockMesh | tee log.blockMesh
# surfaceFeatures | tee log.surfaceFeatures

# decomposePar

# mpirun -np 4 snappyHexMesh -parallel | tee log.snappyHexMesh

#Clean dictionary with no regions but with cellZone
#mpirun -np 4 snappyHexMesh -dict system/snappyHexMeshDict_v1 -parallel | tee log.snappyHexMesh

#Clean dictionary with no regions and no cellZone
#mpirun -np 4 snappyHexMesh -dict system/snappyHexMeshDict_v2 -parallel | tee log.snappyHexMesh


# mpirun -np 4 checkMesh -latestTime -parallel| tee log.checkMesh

#reconstructParMesh -latestTime

#paraFoam -builtin
