module PValueAdjust

export benjaminiHochberg, benjaminiYekutieli, bonferroni, hochberg, holm, hommel

include("helper.jl")
include("bonferroni.jl")
include("benjaminiHochberg.jl")
include("hochberg.jl")
include("holm.jl")
include("hommel.jl")
include("benjaminiYekutieli.jl")

end # module
