abstract CorrectionMethod
immutable BonferroniMethod <: CorrectionMethod end
immutable BenjaminiHochbergMethod <: CorrectionMethod end
immutable BenjaminiYekutieliMethod <: CorrectionMethod end
immutable HochbergMethod <: CorrectionMethod end
immutable HolmMethod <: CorrectionMethod end
immutable HommelMethod <: CorrectionMethod end

# some constants
Bonferroni = BonferroniMethod()
BenjaminiHochberg = BenjaminiHochbergMethod()
BenjaminiYekutieli = BenjaminiYekutieliMethod()
Hochberg = HochbergMethod()
Holm = HolmMethod()
Hommel = HommelMethod()