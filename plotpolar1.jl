# Q(1) general question: how to plot n-th roots on the unit circle in polar projection in Julia
using Plots; gr()

# set step size θ
θ = π/6

# plot points at angle θ at step size π/6 from 0 to 2π, points on the circle NOT to be beconnected, a way to do that is
# plot one root at a time as a segment with first end point at orign [0,0], and second end point at [i*π/6,1].
# Q(2): is this the intended/natural way to do this type of plot?
b1=Float64[1:2;].-1.0

# Q(3): how to plot "π/6" instead of the value of θ in plot title and in annotations?
plot(proj=:polar, m=0, title="polar projection step size $θ")
for i in 1:Int64(2π/θ)
    # with marker point size m=5
    plot!(0:i*π/6:i*π/6, b1, m=5, annotations=(b1[2]*cos(i*π/6), b1[2]*sin(i*π/6), text("$i π/6", :left)))
end

# don't know why, but won't display the graph without the following statement
# Q(4): why is it that without the following statement, the code doesn't display anything?
plot!()
