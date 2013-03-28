#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 29.2 Creation and Calculation of Chebyshev Series #
#####################################################
export gsl_cheb_alloc, gsl_cheb_free, gsl_cheb_init


### Function uses unknown type; disabled
### # This function allocates space for a Chebyshev series of order n and returns a
# pointer to a new gsl_cheb_series struct.
# 
### #   Returns: Ptr{gsl_cheb_series}
### #XXX Unknown output type Ptr{gsl_cheb_series}
### function gsl_cheb_alloc (n::Csize_t)
###     ccall( (:gsl_cheb_alloc, "libgsl"), Ptr{gsl_cheb_series}, (Csize_t, ),
###         n )
### end


### Function uses unknown type; disabled
### # This function frees a previously allocated Chebyshev series cs.
# 
### #   Returns: Void
### #XXX Unknown input type cs::Ptr{gsl_cheb_series}
### function gsl_cheb_free (cs::Ptr{gsl_cheb_series})
###     ccall( (:gsl_cheb_free, "libgsl"), Void, (Ptr{gsl_cheb_series}, ), cs )
### end


### Function uses unknown type; disabled
### # This function computes the Chebyshev approximation cs for the function f over
# the range (a,b) to the previously specified order.  The computation of the
# Chebyshev approximation is an O(n^2) process, and requires n function
# evaluations.
# 
### #   Returns: Cint
### #XXX Unknown input type cs::Ptr{gsl_cheb_series}
### #XXX Unknown input type f::Ptr{gsl_function}
### function gsl_cheb_init (cs::Ptr{gsl_cheb_series}, f::Ptr{gsl_function}, a::Cdouble, b::Cdouble)
###     ccall( (:gsl_cheb_init, "libgsl"), Cint, (Ptr{gsl_cheb_series},
###         Ptr{gsl_function}, Cdouble, Cdouble), cs, f, a, b )
### end