include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(72, 34, 32, 86)
@assert score(item) == 168
@assert lane(item) == "ship"
