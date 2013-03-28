#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 38.2 Initializing the Solver #
################################
export gsl_multifit_fsolver_alloc, gsl_multifit_fdfsolver_alloc,
       gsl_multifit_fsolver_set, gsl_multifit_fdfsolver_set,
       gsl_multifit_fsolver_free, gsl_multifit_fdfsolver_free,
       gsl_multifit_fsolver_name, gsl_multifit_fdfsolver_name


### Function uses unknown type; disabled
### # This function returns a pointer to a newly allocated instance of a solver of
# type T for n observations and p parameters.  The number of observations n
# must be greater than or equal to parameters p.          If there is
# insufficient memory to create the solver then the function returns a null
# pointer and the error handler is invoked with an error code of GSL_ENOMEM.
# 
### #   Returns: Ptr{gsl_multifit_fsolver}
### #XXX Unknown input type T::Ptr{gsl_multifit_fsolver_type}
### #XXX Unknown output type Ptr{gsl_multifit_fsolver}
### function gsl_multifit_fsolver_alloc (T::Ptr{gsl_multifit_fsolver_type}, n::Csize_t, p::Csize_t)
###     ccall( (:gsl_multifit_fsolver_alloc, "libgsl"),
###         Ptr{gsl_multifit_fsolver}, (Ptr{gsl_multifit_fsolver_type}, Csize_t,
###         Csize_t), T, n, p )
### end


### Function uses unknown type; disabled
### # This function returns a pointer to a newly allocated instance of a derivative
# solver of type T for n observations and p parameters.  For example, the
# following code creates an instance of a Levenberg-Marquardt solver for 100
# data points and 3 parameters,                 const
# gsl_multifit_fdfsolver_type * T               = gsl_multifit_fdfsolver_lmder;
# gsl_multifit_fdfsolver * s               = gsl_multifit_fdfsolver_alloc (T,
# 100, 3);  The number of observations n must be greater than or equal to
# parameters p.          If there is insufficient memory to create the solver
# then the function returns a null pointer and the error handler is invoked
# with an error code of GSL_ENOMEM.
# 
### #   Returns: Ptr{gsl_multifit_fdfsolver}
### #XXX Unknown input type T::Ptr{gsl_multifit_fdfsolver_type}
### #XXX Unknown output type Ptr{gsl_multifit_fdfsolver}
### function gsl_multifit_fdfsolver_alloc (T::Ptr{gsl_multifit_fdfsolver_type}, n::Csize_t, p::Csize_t)
###     ccall( (:gsl_multifit_fdfsolver_alloc, "libgsl"),
###         Ptr{gsl_multifit_fdfsolver}, (Ptr{gsl_multifit_fdfsolver_type},
###         Csize_t, Csize_t), T, n, p )
### end


### Function uses unknown type; disabled
### # This function initializes, or reinitializes, an existing solver s to use the
# function f and the initial guess x.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
### #XXX Unknown input type f::Ptr{gsl_multifit_function}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_multifit_fsolver_set (s::Ptr{gsl_multifit_fsolver}, f::Ptr{gsl_multifit_function}, x::Ptr{gsl_vector})
###     ccall( (:gsl_multifit_fsolver_set, "libgsl"), Cint,
###         (Ptr{gsl_multifit_fsolver}, Ptr{gsl_multifit_function},
###         Ptr{gsl_vector}), s, f, x )
### end


### Function uses unknown type; disabled
### # This function initializes, or reinitializes, an existing solver s to use the
# function and derivative fdf and the initial guess x.
# 
### #   Returns: Cint
### #XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
### #XXX Unknown input type fdf::Ptr{gsl_multifit_function_fdf}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_multifit_fdfsolver_set (s::Ptr{gsl_multifit_fdfsolver}, fdf::Ptr{gsl_multifit_function_fdf}, x::Ptr{gsl_vector})
###     ccall( (:gsl_multifit_fdfsolver_set, "libgsl"), Cint,
###         (Ptr{gsl_multifit_fdfsolver}, Ptr{gsl_multifit_function_fdf},
###         Ptr{gsl_vector}), s, fdf, x )
### end


### Function uses unknown type; disabled
### # These functions free all the memory associated with the solver s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
### function gsl_multifit_fsolver_free (s::Ptr{gsl_multifit_fsolver})
###     ccall( (:gsl_multifit_fsolver_free, "libgsl"), Void,
###         (Ptr{gsl_multifit_fsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions free all the memory associated with the solver s.
# 
### #   Returns: Void
### #XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
### function gsl_multifit_fdfsolver_free (s::Ptr{gsl_multifit_fdfsolver})
###     ccall( (:gsl_multifit_fdfsolver_free, "libgsl"), Void,
###         (Ptr{gsl_multifit_fdfsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
# 
### #   Returns: Ptr{Cchar}
### #XXX Unknown input type s::Ptr{gsl_multifit_fsolver}
### function gsl_multifit_fsolver_name (s::Ptr{gsl_multifit_fsolver})
###     ccall( (:gsl_multifit_fsolver_name, "libgsl"), Ptr{Cchar},
###         (Ptr{gsl_multifit_fsolver}, ), s )
### end


### Function uses unknown type; disabled
### # These functions return a pointer to the name of the solver.  For example,
# printf ("s is a '%s' solver\n",                   gsl_multifit_fdfsolver_name
# (s));  would print something like s is a 'lmder' solver.
# 
### #   Returns: Ptr{Cchar}
### #XXX Unknown input type s::Ptr{gsl_multifit_fdfsolver}
### function gsl_multifit_fdfsolver_name (s::Ptr{gsl_multifit_fdfsolver})
###     ccall( (:gsl_multifit_fdfsolver_name, "libgsl"), Ptr{Cchar},
###         (Ptr{gsl_multifit_fdfsolver}, ), s )
### end