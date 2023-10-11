module TestPkg

using IJulia

export add_kernel

function add_kernel(t)
    installkernel("julia_$(t)_threads", env=Dict("JULIA_NUM_THREADS"=>"$t"))
end

end
