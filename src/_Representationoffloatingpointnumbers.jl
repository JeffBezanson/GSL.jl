#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################################
# 41.1 Representation of floating point numbers #
#################################################
export gsl_ieee_fprintf_float, gsl_ieee_fprintf_double,
       gsl_ieee_fprintf_double, gsl_ieee_fprintf_double,
       gsl_ieee_fprintf_double, gsl_ieee_fprintf_double, gsl_ieee_printf_float,
       gsl_ieee_printf_double


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stream. A pointer is used to pass the number
# indirectly, to avoid any undesired promotion from float to double.  The
# output takes one of the following forms,             NaNthe Not-a-Number
# symbol            Inf, -Infpositive or negative infinity
# 1.fffff...*2^E, -1.fffff...*2^Ea normalized floating point number
# 0.fffff...*2^E, -0.fffff...*2^Ea denormalized floating point number
# 0, -0positive or negative zero               The output can be used directly
# in GNU Emacs Calc mode by preceding it with 2# to indicate binary.
# 
### #   @item [non-standard IEEE float], [non-standard IEEE double] 
### #   an unrecognized encoding 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_float (stream::Ptr{FILE}, x::Ptr{Cfloat})
###     ccall( (:gsl_ieee_fprintf_float, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cfloat}), stream, x )
### end


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stream. A pointer is used to pass the number
# indirectly, to avoid any undesired promotion from float to double.  The
# output takes one of the following forms,             NaNthe Not-a-Number
# symbol            Inf, -Infpositive or negative infinity
# 1.fffff...*2^E, -1.fffff...*2^Ea normalized floating point number
# 0.fffff...*2^E, -0.fffff...*2^Ea denormalized floating point number
# 0, -0positive or negative zero               The output can be used directly
# in GNU Emacs Calc mode by preceding it with 2# to indicate binary.
# 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_double (stream::Ptr{FILE}, x::Ptr{Cdouble})
###     ccall( (:gsl_ieee_fprintf_double, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cdouble}), stream, x )
### end


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_double (stream::Ptr{FILE}, x::Ptr{Cdouble})
###     ccall( (:gsl_ieee_fprintf_double, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cdouble}), stream, x )
### end


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_double (stream::Ptr{FILE}, x::Ptr{Cdouble})
###     ccall( (:gsl_ieee_fprintf_double, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cdouble}), stream, x )
### end


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_double (stream::Ptr{FILE}, x::Ptr{Cdouble})
###     ccall( (:gsl_ieee_fprintf_double, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cdouble}), stream, x )
### end


### Function uses unknown type; disabled
### # These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
### #   Returns: Void
### #XXX Unknown input type stream::Ptr{FILE}
### function gsl_ieee_fprintf_double (stream::Ptr{FILE}, x::Ptr{Cdouble})
###     ccall( (:gsl_ieee_fprintf_double, "libgsl"), Void, (Ptr{FILE},
###         Ptr{Cdouble}), stream, x )
### end


# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
#   Returns: Void
function gsl_ieee_printf_float (x::Ptr{Cfloat})
    ccall( (:gsl_ieee_printf_float, "libgsl"), Void, (Ptr{Cfloat}, ), x )
end


# These functions output a formatted version of the IEEE floating-point number
# pointed to by x to the stream stdout.
# 
#   Returns: Void
function gsl_ieee_printf_double (x::Ptr{Cdouble})
    ccall( (:gsl_ieee_printf_double, "libgsl"), Void, (Ptr{Cdouble}, ), x )
end