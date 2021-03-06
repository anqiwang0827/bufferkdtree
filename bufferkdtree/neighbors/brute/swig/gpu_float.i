%module wrapper_gpu_opencl_float

%{
    #define SWIG_FILE_WITH_INIT
    #include "base.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* X, int nX, int dX)}
%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* Xtest, int nXtest, int dXtest)}
%apply (float* INPLACE_ARRAY2, int DIM1, int DIM2) {(FLOAT_TYPE* distances, int ndistances, int ddistances)}
%apply (int* INPLACE_ARRAY2, int DIM1, int DIM2) {(int* indices, int nindices, int dindices)}

%include "base.h"      
%include "global.h"      
