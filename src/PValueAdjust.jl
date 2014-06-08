module PValueAdjust

export benjaminiHochberg, benjaminiYekutieli, bonferroni, hochberg, holm

include("helper.jl")
include("bonferroni.jl")
include("benjaminiHochberg.jl")
include("hochberg.jl")
include("holm.jl")
include("benjaminiYekutieli.jl")

end # module
