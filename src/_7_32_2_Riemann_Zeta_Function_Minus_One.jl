#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################################
# 7.32.2 Riemann Zeta Function Minus One #
##########################################
export sf_zetam1_int, sf_zetam1_int_e, sf_zetam1, sf_zetam1_e


# These routines compute \zeta(n) - 1 for integer n, n \ne 1.
# 
#   Returns: Cdouble
function sf_zetam1_int(n::Integer)
    ccall( (:gsl_sf_zetam1_int, :libgsl), Cdouble, (Cint, ), n )
end
@vectorize_1arg Number sf_zetam1_int


# These routines compute \zeta(n) - 1 for integer n, n \ne 1.
# 
#   Returns: Cint
function sf_zetam1_int_e(n::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_zetam1_int_e, :libgsl), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_zetam1_int_e


# These routines compute \zeta(s) - 1 for arbitrary s, s \ne 1.
# 
#   Returns: Cdouble
function sf_zetam1(s::Real)
    ccall( (:gsl_sf_zetam1, :libgsl), Cdouble, (Cdouble, ), s )
end
@vectorize_1arg Number sf_zetam1


# These routines compute \zeta(s) - 1 for arbitrary s, s \ne 1.
# 
#   Returns: Cint
function sf_zetam1_e(s::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_zetam1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), s, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_zetam1_e
