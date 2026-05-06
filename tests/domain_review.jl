include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(75, 37, 19, 58)
@assert score(item) == 188
@assert lane(item) == "ship"
