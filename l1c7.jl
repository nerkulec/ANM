function f(x)
    return x*(Float64(1.0)/x)
end

for x in LinRange(1,2,101)
    print("f(",Float64(x),")=")
    print(f(x),'\n')
end
