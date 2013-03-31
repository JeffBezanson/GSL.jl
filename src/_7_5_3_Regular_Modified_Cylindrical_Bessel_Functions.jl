#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.5.3 Regular Modified Cylindrical Bessel Functions #
#######################################################
export gsl_sf_bessel_I0, gsl_sf_bessel_I0_e, gsl_sf_bessel_I1,
       gsl_sf_bessel_I1_e, gsl_sf_bessel_In, gsl_sf_bessel_In_e,
       gsl_sf_bessel_In_array, gsl_sf_bessel_I0_scaled,
       gsl_sf_bessel_I0_scaled_e, gsl_sf_bessel_I1_scaled,
       gsl_sf_bessel_I1_scaled_e, gsl_sf_bessel_In_scaled,
       gsl_sf_bessel_In_scaled_e, gsl_sf_bessel_In_scaled_array


# These routines compute the regular modified cylindrical Bessel function of
# zeroth order, I_0(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_I0(x::Cdouble)
    ccall( (:gsl_sf_bessel_I0, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular modified cylindrical Bessel function of
# zeroth order, I_0(x).
# 
#   Returns: Cint
function gsl_sf_bessel_I0_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_I0_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the regular modified cylindrical Bessel function of
# first order, I_1(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_I1(x::Cdouble)
    ccall( (:gsl_sf_bessel_I1, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the regular modified cylindrical Bessel function of
# first order, I_1(x).
# 
#   Returns: Cint
function gsl_sf_bessel_I1_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_I1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the regular modified cylindrical Bessel function of
# order n, I_n(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_In{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_bessel_In, :libgsl), Cdouble, (Cint, Cdouble), n, x )
end


# These routines compute the regular modified cylindrical Bessel function of
# order n, I_n(x).
# 
#   Returns: Cint
function gsl_sf_bessel_In_e{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_In_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the values of the regular modified cylindrical Bessel
# functions I_n(x) for n from nmin to nmax inclusive, storing the results in
# the array result_array.  The start of the range nmin must be positive or
# zero.  The values are computed using recurrence relations for efficiency, and
# therefore may differ slightly from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_In_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_In_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble), nmin, nmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of zeroth order \exp(-|x|) I_0(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_I0_scaled(x::Cdouble)
    ccall( (:gsl_sf_bessel_I0_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of zeroth order \exp(-|x|) I_0(x).
# 
#   Returns: Cint
function gsl_sf_bessel_I0_scaled_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_I0_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of first order \exp(-|x|) I_1(x).
# 
#   Returns: Cdouble
function gsl_sf_bessel_I1_scaled(x::Cdouble)
    ccall( (:gsl_sf_bessel_I1_scaled, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of first order \exp(-|x|) I_1(x).
# 
#   Returns: Cint
function gsl_sf_bessel_I1_scaled_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_I1_scaled_e, :libgsl), Cint,
        (Cdouble, Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of order n, \exp(-|x|) I_n(x)
# 
#   Returns: Cdouble
function gsl_sf_bessel_In_scaled{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    ccall( (:gsl_sf_bessel_In_scaled, :libgsl), Cdouble, (Cint, Cdouble),
        n, x )
end


# These routines compute the scaled regular modified cylindrical Bessel
# function of order n, \exp(-|x|) I_n(x)
# 
#   Returns: Cint
function gsl_sf_bessel_In_scaled_e{gsl_int<:Integer}(n::gsl_int, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_In_scaled_e, :libgsl), Cint, (Cint,
        Cdouble, Ptr{gsl_sf_result}), n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# This routine computes the values of the scaled regular cylindrical Bessel
# functions \exp(-|x|) I_n(x) for n from nmin to nmax inclusive, storing the
# results in the array result_array. The start of the range nmin must be
# positive or zero.  The values are computed using recurrence relations for
# efficiency, and therefore may differ slightly from the exact values.
# 
#   Returns: Cint
function gsl_sf_bessel_In_scaled_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, x::Cdouble)
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_bessel_In_scaled_array, :libgsl), Cint,
        (Cint, Cint, Cdouble, Cdouble), nmin, nmax, x, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end