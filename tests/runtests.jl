include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(66, 100, 19, 8, 8)
@assert score(signal_case_1) == 194
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(85, 89, 16, 15, 11)
@assert score(signal_case_2) == 211
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(77, 77, 12, 19, 6)
@assert score(signal_case_3) == 155
@assert classify(signal_case_3) == "review"
