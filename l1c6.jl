function float_from_bitstring(bitstr)
    sign = 1-2*parse(Int64, bitstr[0+1])
    c = Int64(0)
    for i in 1:11
        c += parse(Int64, bitstr[i+1])*2^(11-i)
    end
    c -= 1023
    m = Float64(1.0)
    for i in 12:63
        m += parse(Int64, bitstr[i+1])*Float64(2.0)^(-i+11)
    end
    return sign*m*Float64(2)^c
end

v = float_from_bitstring("0100000010100101001001100110011001011001010010101111010011110001")
print(v, '\n')