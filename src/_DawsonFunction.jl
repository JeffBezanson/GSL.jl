#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.9 Dawson Function #
#######################
export gsl_sf_dawson, gsl_sf_dawson_e


# These routines compute the value of Dawson's integral for x.
# 
#   Exceptional Return Values: GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_dawson (x::Cdouble)
    ccall( (:gsl_sf_dawson, "libgsl"), Cdouble, (Cdouble, ), x )
end


### Function uses unknown type; disabled
### # These routines compute the value of Dawson's integral for x.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_dawson_e (x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_dawson_e, "libgsl"), Cint, (Cdouble,
###         Ptr{gsl_sf_result}), x, result )
### end