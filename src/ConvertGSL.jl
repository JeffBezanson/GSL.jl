#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>

# Converts GSL data structures to Julia data types

export GSL_ERROR, custom_gsl_error_handler, complex_packed_ptr, complex_packed_array

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_array(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

#Convert gsl_complex_packed_ptr to Vector{Complex128}
complex_packed_ptr(c::Vector{Cdouble}) = Complex128[c[2i-1]+im*c[2i] for i=1:int(length(c)/2)]

#Register this error handler as GSL's default
#where possible, maps errors to Julia's own exceptions
function custom_error_handler(reason, file, line, errno)
    if errno == 0; return; end # GSL_SUCCESS
    if errno == 1 # GSL_EDOM: input domain error, e.g sqrt(-1)
        throw(DomainError())
    elseif errno == 2 || errno == 16
        # GSL_ERANGE: output range error, e.g. exp(1e100)
        # or GSL_EOVRFLW: overflow
        throw(OverflowError())
    elseif errno == 4 # GSL_EINVAL: invalid argument supplied by user
        throw(ArgumentError(string(bytestring(reason), " at ",
                                   bytestring(file), ":", line)))
    elseif errno == 8 # GSL_ENOMEM: malloc failed
        throw(MemoryError())
    elseif errno == 12 # GSL_EZERODIV: tried to divide by zero
        throw(DivideByZeroError())
    elseif errno == 19 # GSL_EBADLEN: matrix, vector lengths are not conformant
        throw(BoundsError())
    elseif errno == 32 # GSL_EOF: end of file
        throw(EOFError())
    else # convert all other errors into generic ErrorException
        error(strerror(errno), " -- ",
              bytestring(reason), " at ", bytestring(file), ":", line)
    end
    return
end

GSL_ERROR{T<:Integer}(errno::T)=custom_error_handler("", "None", 0, errno)

# This is the first point in loading the package where we try to actually access
# a function from within libgsl. This will fail if libgsl is not installed or
# otherwise unavailable.
try 
convert(Ptr{gsl_error_handler_t},
    cfunction(custom_error_handler, Void,
    (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint)))
catch
  error("Could not find the GNU Scientific Library.
Please ensure that libgsl is installed on your system and is available on the system path.")
end
custom_gsl_error_handler = convert(Ptr{gsl_error_handler_t},
    cfunction(custom_error_handler, Void,
    (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint)))
set_error_handler(custom_gsl_error_handler)


