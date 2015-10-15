module JuliaSets
using PyPlot

export visJuliaSet, generatePlot

function visJuliaSet{T <: Real}(R::Function, x::Array{T, 1}, y::Array{T, 1}, 
	n_iter::Int64=1000, escape_tol::Float64=1e6)

	A = zeros(length(x), length(y))
	for i in 1:length(x)
  		for j in 1:length(y)
    		z = x[i] + im * y[j]
    		for k in 1:n_iter
      			z = R(z)
      			if abs(z) > escape_tol # diverged
        			A[i,j] = k
        			break
      			end
    		end
    		if A[i,j] == 0 # didn't diverge
      			A[i,j] = escape_tol + 1
    		end
  		end
	end
	A
end

function generatePlot(A::Array{Float64,2})
	matshow(A')
end


end # module
