module PValueAdjust

export benjaminiHochberg, benjaminiYekutieli, bonferroni, hochberg, holm, hommel, padjust

include("helper.jl")
include("bonferroni.jl")
include("benjaminiHochberg.jl")
include("hochberg.jl")
include("holm.jl")
include("hommel.jl")
include("benjaminiYekutieli.jl")
include("padjust.jl")

end # module
