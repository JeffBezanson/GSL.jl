#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################
# 14.4 Singular Value Decomposition #
#####################################
export gsl_linalg_SV_decomp, gsl_linalg_SV_decomp_mod,
       gsl_linalg_SV_decomp_jacobi, gsl_linalg_SV_solve


### Function uses unknown type; disabled
### # This function factorizes the M-by-N matrix A into the singular value
# decomposition A = U S V^T for  M >= N.  On output the matrix A is replaced by
# U. The diagonal elements of the singular value matrix S are stored in the
# vector S. The singular values are non-negative and form a non-increasing
# sequence from S_1 to S_N. The matrix V contains the elements of V in
# untransposed form. To form the product U S V^T it is necessary to take the
# transpose of V.  A workspace of length N is required in work.          This
# routine uses the Golub-Reinsch SVD algorithm.
# 
### #   {$M \ge N$} 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type S::Ptr{gsl_vector}
### #XXX Unknown input type work::Ptr{gsl_vector}
### function gsl_linalg_SV_decomp (A::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, S::Ptr{gsl_vector}, work::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_SV_decomp, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A, V, S, work )
### end


### Function uses unknown type; disabled
### # This function computes the SVD using the modified Golub-Reinsch algorithm,
# which is faster for  M>>N.  It requires the vector work of length N and the
# N-by-N matrix X as additional working space.
# 
### #   {$M \gg N$} 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type X::Ptr{gsl_matrix}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type S::Ptr{gsl_vector}
### #XXX Unknown input type work::Ptr{gsl_vector}
### function gsl_linalg_SV_decomp_mod (A::Ptr{gsl_matrix}, X::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, S::Ptr{gsl_vector}, work::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_SV_decomp_mod, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}), A,
###         X, V, S, work )
### end


### Function uses unknown type; disabled
### # This function computes the SVD of the M-by-N matrix A using one-sided Jacobi
# orthogonalization for  M >= N.  The Jacobi method can compute singular values
# to higher relative accuracy than Golub-Reinsch algorithms (see references for
# details).
# 
### #   {$M \ge N$} 
### #   Returns: Cint
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type S::Ptr{gsl_vector}
### function gsl_linalg_SV_decomp_jacobi (A::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, S::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_SV_decomp_jacobi, "libgsl"), Cint,
###         (Ptr{gsl_matrix}, Ptr{gsl_matrix}, Ptr{gsl_vector}), A, V, S )
### end


### Function uses unknown type; disabled
### # This function solves the system A x = b using the singular value
# decomposition (U, S, V) of A which must have been computed previously with
# gsl_linalg_SV_decomp.          Only non-zero singular values are used in
# computing the solution. The parts of the solution corresponding to singular
# values of zero are ignored.  Other singular values can be edited out by
# setting them to zero before calling this function.          In the over-
# determined case where A has more rows than columns the system is solved in
# the least squares sense, returning the solution x which minimizes ||A x -
# b||_2.
# 
### #   Returns: Cint
### #XXX Unknown input type U::Ptr{gsl_matrix}
### #XXX Unknown input type V::Ptr{gsl_matrix}
### #XXX Unknown input type S::Ptr{gsl_vector}
### #XXX Unknown input type b::Ptr{gsl_vector}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_linalg_SV_solve (U::Ptr{gsl_matrix}, V::Ptr{gsl_matrix}, S::Ptr{gsl_vector}, b::Ptr{gsl_vector}, x::Ptr{gsl_vector})
###     ccall( (:gsl_linalg_SV_solve, "libgsl"), Cint, (Ptr{gsl_matrix},
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_vector}), U,
###         V, S, b, x )
### end