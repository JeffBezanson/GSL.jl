#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 8.3.10 Vector properties #
############################
export gsl_vector_isnull, gsl_vector_ispos, gsl_vector_isneg,
       gsl_vector_isnonneg, gsl_vector_equal


### Function uses unknown type; disabled
### # These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_isnull (v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_isnull, "libgsl"), Cint, (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_ispos (v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_ispos, "libgsl"), Cint, (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_isneg (v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_isneg, "libgsl"), Cint, (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_isnonneg (v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_isnonneg, "libgsl"), Cint, (Ptr{gsl_vector}, ), v )
### end


### Function uses unknown type; disabled
### # This function returns 1 if the vectors u and v are equal (by comparison of
# element values) and 0 otherwise.
# 
### #   Returns: Cint
### #XXX Unknown input type u::Ptr{gsl_vector}
### #XXX Unknown input type v::Ptr{gsl_vector}
### function gsl_vector_equal (u::Ptr{gsl_vector}, v::Ptr{gsl_vector})
###     ccall( (:gsl_vector_equal, "libgsl"), Cint, (Ptr{gsl_vector},
###         Ptr{gsl_vector}), u, v )
### end