// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// rcpp_polydar
Rcpp::List rcpp_polydar(NumericVector x, IntegerVector dim, NumericVector xyThresh, NumericVector alpha, NumericVector lmax, IntegerVector minTriangles, IntegerVector MAX_ITER);
RcppExport SEXP _polydar_rcpp_polydar(SEXP xSEXP, SEXP dimSEXP, SEXP xyThreshSEXP, SEXP alphaSEXP, SEXP lmaxSEXP, SEXP minTrianglesSEXP, SEXP MAX_ITERSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type dim(dimSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type xyThresh(xyThreshSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type alpha(alphaSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type lmax(lmaxSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type minTriangles(minTrianglesSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type MAX_ITER(MAX_ITERSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_polydar(x, dim, xyThresh, alpha, lmax, minTriangles, MAX_ITER));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_polydar_rcpp_polydar", (DL_FUNC) &_polydar_rcpp_polydar, 7},
    {NULL, NULL, 0}
};

RcppExport void R_init_polydar(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
