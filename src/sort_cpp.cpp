#include <Rcpp.h>
#include <algorithm>  // Include for std::sort

using namespace Rcpp;

// [[Rcpp::export]]
NumericVector sort_cpp(NumericVector x) {
  if (x.size() == 0) {
    Rcpp::Rcout << "The vector is empty" << std::endl;
    return NumericVector();  // Return an empty vector if input is empty
  }

  std::sort(x.begin(), x.end());

  Rcpp::Rcout << "Input size: " << x.size() << std::endl;
  Rcpp::Rcout << "Sorted output: ";
  for (auto& val : x) {
    Rcpp::Rcout << val << " ";
  }
  Rcpp::Rcout << std::endl;

  return x;
}
