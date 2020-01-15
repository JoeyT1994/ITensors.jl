module ITensors

using Random,
      Printf,
      LinearAlgebra,
      StaticArrays,
      TimerOutputs,
      Reexport

#####################################
# Global Variables
#
const GLOBAL_PARAMS = Dict("WarnTensorOrder" => 14)
const GLOBAL_TIMER = TimerOutput()

#####################################
# Tensor
#
include("Tensors/Tensors.jl")

#####################################
# Index and IndexSet
#
include("smallstring.jl")
include("readwrite.jl")
include("tagset.jl")
include("arrow.jl")
include("index.jl")
include("indexset.jl")

#####################################
# ITensor
#
include("itensor.jl")
include("decomp.jl")
include("iterativesolvers.jl")

#####################################
# QNs
#
include("qn.jl")
include("qnindex.jl")
include("qnitensor.jl")

###########################################################
# MPS/MPO
#
include("mps/mps.jl")
include("mps/mpo.jl")
include("mps/sweeps.jl")
include("mps/projmpo.jl")
include("mps/observer.jl")
include("mps/dmrg.jl")

###########################################################
# Physics
#
include("physics/tag_types.jl")
include("physics/lattices.jl")
include("physics/site_types/spinhalf.jl")
include("physics/site_types/spinone.jl")
include("physics/site_types/electron.jl")
include("physics/site_types/tj.jl")
include("physics/autompo.jl")

end # module ITensors
