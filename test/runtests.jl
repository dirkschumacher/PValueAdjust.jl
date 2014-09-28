tests = [
    "bonferroni",
    "holm",
    "hochberg",
    "benjaminiHochberg",
    "benjaminiYekutieli",
    "padjust"]

println("Running tests:")

for t in tests
    test_fn = "$t.jl"
    println(" * $test_fn")
    include(test_fn)
end