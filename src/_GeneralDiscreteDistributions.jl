#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.28 General Discrete Distributions #
########################################
export gsl_ran_discrete_preproc, gsl_ran_discrete, gsl_ran_discrete_pdf,
       gsl_ran_discrete_free


### Function uses unknown type; disabled
### # This function returns a pointer to a structure that contains the lookup table
# for the discrete random number generator.  The array P[] contains the
# probabilities of the discrete events; these array elements must all be
# positive, but they needn't add up to one (so you can think of them more
# generally as “weights”)—the preprocessor will normalize appropriately.  This
# return value is used as an argument for the gsl_ran_discrete function below.
# 
### #   Returns: Ptr{gsl_ran_discrete_t}
### #XXX Unknown output type Ptr{gsl_ran_discrete_t}
### function gsl_ran_discrete_preproc (K::Csize_t, P::Ptr{Cdouble})
###     ccall( (:gsl_ran_discrete_preproc, "libgsl"), Ptr{gsl_ran_discrete_t},
###         (Csize_t, Ptr{Cdouble}), K, P )
### end


### Function uses unknown type; disabled
### # After the preprocessor, above, has been called, you use this function to get
# the discrete random numbers.
# 
### #   Returns: Csize_t
### #XXX Unknown input type r::Ptr{gsl_rng}
### #XXX Unknown input type g::Ptr{gsl_ran_discrete_t}
### function gsl_ran_discrete (r::Ptr{gsl_rng}, g::Ptr{gsl_ran_discrete_t})
###     ccall( (:gsl_ran_discrete, "libgsl"), Csize_t, (Ptr{gsl_rng},
###         Ptr{gsl_ran_discrete_t}), r, g )
### end


### Function uses unknown type; disabled
### # Returns the probability P[k] of observing the variable k.  Since P[k] is not
# stored as part of the lookup table, it must be recomputed; this computation
# takes O(K), so if K is large and you care about the original array P[k] used
# to create the lookup table, then you should just keep this original array
# P[k] around.
# 
### #   Returns: Cdouble
### #XXX Unknown input type g::Ptr{gsl_ran_discrete_t}
### function gsl_ran_discrete_pdf (k::Csize_t, g::Ptr{gsl_ran_discrete_t})
###     ccall( (:gsl_ran_discrete_pdf, "libgsl"), Cdouble, (Csize_t,
###         Ptr{gsl_ran_discrete_t}), k, g )
### end


### Function uses unknown type; disabled
### # De-allocates the lookup table pointed to by g.
# 
### #   Returns: Void
### #XXX Unknown input type g::Ptr{gsl_ran_discrete_t}
### function gsl_ran_discrete_free (g::Ptr{gsl_ran_discrete_t})
###     ccall( (:gsl_ran_discrete_free, "libgsl"), Void,
###         (Ptr{gsl_ran_discrete_t}, ), g )
### end