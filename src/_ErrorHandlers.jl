#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################
# 3.3 Error Handlers #
######################
export gsl_error_handler_t, gsl_set_error_handler, gsl_set_error_handler_off


### Function uses unknown type; disabled
### # This is the type of GSL error handler functions.  An error handler will be
# passed four arguments which specify the reason for the error (a string), the
# name of the source file in which it occurred (also a string), the line number
# in that file (an integer) and the error number (an integer).  The source file
# and line number are set at compile time using the __FILE__ and __LINE__
# directives in the preprocessor.  An error handler function returns type void.
# Error handler functions should be defined like this,                 void
# handler (const char * reason,                         const char * file,
# int line,                         int gsl_errno)
# 
### #   Returns: 
### #XXX Unknown output type 
### function gsl_error_handler_t ()
###     ccall( (:gsl_error_handler_t, "libgsl"), , () )
### end


### Function uses unknown type; disabled
### # This function sets a new error handler, new_handler, for the GSL library
# routines.  The previous handler is returned (so that you can restore it
# later).  Note that the pointer to a user defined error handler function is
# stored in a static variable, so there can be only one error handler per
# program.  This function should be not be used in multi-threaded programs
# except to set up a program-wide error handler from a master thread.  The
# following example shows how to set and restore a new error handler,
# /* save original handler, install new handler */           old_handler =
# gsl_set_error_handler (&my_handler);                      /* code uses new
# handler */           .....                      /* restore original handler
# */           gsl_set_error_handler (old_handler);  To use the default
# behavior (abort on error) set the error handler to NULL,
# old_handler = gsl_set_error_handler (NULL);
# 
### #   Returns: Ptr{gsl_error_handler_t}
### #XXX Unknown input type new_handler::Ptr{gsl_error_handler_t}
### #XXX Unknown output type Ptr{gsl_error_handler_t}
### function gsl_set_error_handler (new_handler::Ptr{gsl_error_handler_t})
###     ccall( (:gsl_set_error_handler, "libgsl"), Ptr{gsl_error_handler_t},
###         (Ptr{gsl_error_handler_t}, ), new_handler )
### end


### Function uses unknown type; disabled
### # This function turns off the error handler by defining an error handler which
# does nothing. This will cause the program to continue after any error, so the
# return values from any library routines must be checked.  This is the
# recommended behavior for production programs.  The previous handler is
# returned (so that you can restore it later).
# 
### #   Returns: Ptr{gsl_error_handler_t}
### #XXX Unknown output type Ptr{gsl_error_handler_t}
### function gsl_set_error_handler_off ()
###     ccall( (:gsl_set_error_handler_off, "libgsl"),
###         Ptr{gsl_error_handler_t}, () )
### end