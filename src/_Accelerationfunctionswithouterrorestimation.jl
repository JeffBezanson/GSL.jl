#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 30.2 Acceleration functions without error estimation #
########################################################
export gsl_sum_levin_utrunc_alloc, gsl_sum_levin_utrunc_free,
       gsl_sum_levin_utrunc_accel


### Function uses unknown type; disabled
### # This function allocates a workspace for a Levin u-transform of n terms,
# without error estimation.  The size of the workspace is O(3n).
# 
### #   Returns: Ptr{gsl_sum_levin_utrunc_workspace}
### #XXX Unknown output type Ptr{gsl_sum_levin_utrunc_workspace}
### function gsl_sum_levin_utrunc_alloc (n::Csize_t)
###     ccall( (:gsl_sum_levin_utrunc_alloc, "libgsl"),
###         Ptr{gsl_sum_levin_utrunc_workspace}, (Csize_t, ), n )
### end


### Function uses unknown type; disabled
### # This function frees the memory associated with the workspace w.
# 
### #   Returns: Void
### #XXX Unknown input type w::Ptr{gsl_sum_levin_utrunc_workspace}
### function gsl_sum_levin_utrunc_free (w::Ptr{gsl_sum_levin_utrunc_workspace})
###     ccall( (:gsl_sum_levin_utrunc_free, "libgsl"), Void,
###         (Ptr{gsl_sum_levin_utrunc_workspace}, ), w )
### end


### Function uses unknown type; disabled
### # This function takes the terms of a series in array of size array_size and
# computes the extrapolated limit of the series using a Levin u-transform.
# Additional working space must be provided in w.  The extrapolated sum is
# stored in sum_accel.  The actual term-by-term sum is returned in
# w->sum_plain. The algorithm terminates when the difference between two
# successive extrapolations reaches a minimum or is sufficiently small. The
# difference between these two values is used as estimate of the error and is
# stored in abserr_trunc.  To improve the reliability of the algorithm the
# extrapolated values are replaced by moving averages when calculating the
# truncation error, smoothing out any fluctuations.
# 
### #   Returns: Cint
### #XXX Unknown input type w::Ptr{gsl_sum_levin_utrunc_workspace}
### function gsl_sum_levin_utrunc_accel (array::Ptr{Cdouble}, array_size::Csize_t, w::Ptr{gsl_sum_levin_utrunc_workspace}, sum_accel::Ptr{Cdouble}, abserr_trunc::Ptr{Cdouble})
###     ccall( (:gsl_sum_levin_utrunc_accel, "libgsl"), Cint, (Ptr{Cdouble},
###         Csize_t, Ptr{gsl_sum_levin_utrunc_workspace}, Ptr{Cdouble},
###         Ptr{Cdouble}), array, array_size, w, sum_accel, abserr_trunc )
### end