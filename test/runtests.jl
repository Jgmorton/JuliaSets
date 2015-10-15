using JuliaSets
using Base.Test

# Define function 
function R{T <: Real}(a::Complex{T})
    a^2 - 0.75
end

# Run test problem
x = [-2:.01:2]
y = [-2:.01:2]
A = visJuliaSet(R, x, y)

@test A[1, 1] < 10
