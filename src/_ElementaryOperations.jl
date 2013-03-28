#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.12 Elementary Operations #
##############################
export gsl_sf_multiply_e, gsl_sf_multiply_err_e


### Function uses unknown type; disabled
### # This function multiplies x and y storing the product and its associated error
# in result.
# 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_multiply_e (x::Cdouble, y::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_multiply_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), x, y, result )
### end


### Function uses unknown type; disabled
### # This function multiplies x and y with associated absolute errors dx and dy.
# The product  xy +/- xy \sqrt((dx/x)^2 +(dy/y)^2) is stored in result.
# 
### #   {$xy \pm xy \sqrt{(dx/x)^2 +(dy/y)^2}$} 
### #   Exceptional Return Values: GSL_EOVRFLW, GSL_EUNDRFLW 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_multiply_err_e (x::Cdouble, dx::Cdouble, y::Cdouble, dy::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_multiply_err_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Cdouble, Ptr{gsl_sf_result}), x, dx, y, dy, result )
### end