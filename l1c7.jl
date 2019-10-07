function f(x)
    return x*(Float64(1.0)/x)
end

for x in LinRange(1,2,10000)
    print("f(",x,")=")
    print(f(x),'\n')
end
