module PValueAdjust
  
  export Bonferroni
  export BenjaminiHochberg
  export BenjaminiYekutieli
  export Hochberg
  export Holm
  export Hommel
  export padjust

  include("types.jl")
  include("helper.jl")
  include("bonferroni.jl")
  include("benjaminiHochberg.jl")
  include("hochberg.jl")
  include("holm.jl")
  include("hommel.jl")
  include("benjaminiYekutieli.jl")
  include("padjust.jl")

end # module
