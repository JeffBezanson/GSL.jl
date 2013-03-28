#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.23 Spherical Vector Distributions #
########################################
export gsl_ran_dir_2d, gsl_ran_dir_2d_trig_method, gsl_ran_dir_3d,
       gsl_ran_dir_nd


### Function uses unknown type; disabled
### # This function returns a random direction vector v = (x,y) in two dimensions.
# The vector is normalized such that |v|^2 = x^2 + y^2 = 1.  The obvious way to
# do this is to take a uniform random number between 0 and 2\pi and let x and y
# be the sine and cosine respectively.  Two trig functions would have been
# expensive in the old days, but with modern hardware implementations, this is
# sometimes the fastest way to go.  This is the case for the Pentium (but not
# the case for the Sun Sparcstation).  One can avoid the trig evaluations by
# choosing x and y in the interior of a unit circle (choose them at random from
# the interior of the enclosing square, and then reject those that are outside
# the unit circle), and then dividing by  \sqrt{x^2 + y^2}.  A much cleverer
# approach, attributed to von Neumann (See Knuth, v2, 3rd ed, p140, exercise
# 23), requires neither trig nor a square root.  In this approach, u and v are
# chosen at random from the interior of a unit circle, and then
# x=(u^2-v^2)/(u^2+v^2) and y=2uv/(u^2+v^2).
# 
### #   {$\sqrt{x^2 + y^2}$} 
### #   Returns: Void
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_dir_2d (r::Ptr{gsl_rng}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
###     ccall( (:gsl_ran_dir_2d, "libgsl"), Void, (Ptr{gsl_rng}, Ptr{Cdouble},
###         Ptr{Cdouble}), r, x, y )
### end


### Function uses unknown type; disabled
### # This function returns a random direction vector v = (x,y) in two dimensions.
# The vector is normalized such that |v|^2 = x^2 + y^2 = 1.  The obvious way to
# do this is to take a uniform random number between 0 and 2\pi and let x and y
# be the sine and cosine respectively.  Two trig functions would have been
# expensive in the old days, but with modern hardware implementations, this is
# sometimes the fastest way to go.  This is the case for the Pentium (but not
# the case for the Sun Sparcstation).  One can avoid the trig evaluations by
# choosing x and y in the interior of a unit circle (choose them at random from
# the interior of the enclosing square, and then reject those that are outside
# the unit circle), and then dividing by  \sqrt{x^2 + y^2}.  A much cleverer
# approach, attributed to von Neumann (See Knuth, v2, 3rd ed, p140, exercise
# 23), requires neither trig nor a square root.  In this approach, u and v are
# chosen at random from the interior of a unit circle, and then
# x=(u^2-v^2)/(u^2+v^2) and y=2uv/(u^2+v^2).
# 
### #   Returns: Void
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_dir_2d_trig_method (r::Ptr{gsl_rng}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
###     ccall( (:gsl_ran_dir_2d_trig_method, "libgsl"), Void, (Ptr{gsl_rng},
###         Ptr{Cdouble}, Ptr{Cdouble}), r, x, y )
### end


### Function uses unknown type; disabled
### # This function returns a random direction vector v = (x,y,z) in three
# dimensions.  The vector is normalized such that |v|^2 = x^2 + y^2 + z^2 = 1.
# The method employed is due to Robert E. Knop (CACM 13, 326 (1970)), and
# explained in Knuth, v2, 3rd ed, p136.  It uses the surprising fact that the
# distribution projected along any axis is actually uniform (this is only true
# for 3 dimensions).
# 
### #   Returns: Void
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_dir_3d (r::Ptr{gsl_rng}, x::Ptr{Cdouble}, y::Ptr{Cdouble}, z::Ptr{Cdouble})
###     ccall( (:gsl_ran_dir_3d, "libgsl"), Void, (Ptr{gsl_rng}, Ptr{Cdouble},
###         Ptr{Cdouble}, Ptr{Cdouble}), r, x, y, z )
### end


### Function uses unknown type; disabled
### #  This function returns a random direction vector  v = (x_1,x_2,...,x_n) in n
# dimensions.  The vector is normalized such that  |v|^2 = x_1^2 + x_2^2 + ...
# + x_n^2 = 1.  The method uses the fact that a multivariate Gaussian
# distribution is spherically symmetric.  Each component is generated to have a
# Gaussian distribution, and then the components are normalized.  The method is
# described by Knuth, v2, 3rd ed, p135–136, and attributed to G. W. Brown,
# Modern Mathematics for the Engineer (1956).
# 
### #   {$v = (x_1,x_2,\ldots,x_n)$} 
### #   {$|v|^2 = x_1^2 + x_2^2 + \cdots + x_n^2 = 1$} 
### #   Returns: Void
### #XXX Unknown input type r::Ptr{gsl_rng}
### function gsl_ran_dir_nd (r::Ptr{gsl_rng}, n::Csize_t, x::Ptr{Cdouble})
###     ccall( (:gsl_ran_dir_nd, "libgsl"), Void, (Ptr{gsl_rng}, Csize_t,
###         Ptr{Cdouble}), r, n, x )
### end