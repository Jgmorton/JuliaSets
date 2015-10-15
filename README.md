# JuliaSets

This is a package that can be used to visualize a Julia set.  The package consists of two functions, `visJuliaSet` and `generatePlot`.  `visJuliaSet` takes the following inputs:

* R: a rational function on complex numbers
* x: an array of points on the real line
* y: an array of points on the imaginary line
* n_iter: max number of iterations on a point (**optional**)
* escape_tol: tolerance beyond which point is considered to have diverged (**optional**)

`visJuliaSet` returns a 2-D Array that can then be passed to `generatePlot` to visualize the Julia set.  An example is given below.

```bash
# Define function
function R{T <: Real}(a::Complex{T})
    a^2 - 0.75
end

x = [-2:.01:2]
y = [-2:.01:2]
A = visJuliaSet(R, x, y)
generatePlot(A)

```
![Julia set](/images/js.png)
