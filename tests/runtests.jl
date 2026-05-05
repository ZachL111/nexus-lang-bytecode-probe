include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(93, 98, 13, 10, 10)
@assert score(signal_case_1) == 258
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(92, 84, 12, 6, 12)
@assert score(signal_case_2) == 268
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(91, 102, 12, 25, 6)
@assert score(signal_case_3) == 184
@assert classify(signal_case_3) == "accept"
