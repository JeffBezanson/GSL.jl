#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 23.5 Reading ntuples #
########################
export gsl_ntuple_read


### Function uses unknown type; disabled
### # This function reads the current row of the ntuple file for ntuple and stores
# the values in ntuple->data.
# 
### #   Returns: Cint
### #XXX Unknown input type ntuple::Ptr{gsl_ntuple}
### function gsl_ntuple_read (ntuple::Ptr{gsl_ntuple})
###     ccall( (:gsl_ntuple_read, "libgsl"), Cint, (Ptr{gsl_ntuple}, ), ntuple
###         )
### end