% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers-layers.R
\name{ConvolutionTranspose1D}
\alias{ConvolutionTranspose1D}
\title{ConvolutionTranspose1D}
\usage{
ConvolutionTranspose1D(filter_shape, num_filters = NULL,
  activation = activation_identity, init = init_glorot_uniform(),
  pad = FALSE, strides = 1, bias = TRUE, init_bias = 0,
  output_shape = NULL, name = "")
}
\arguments{
\item{filter_shape}{int or list of int - shape (spatial extent) of the
receptive field, not including the input feature-map depth. E.g. (3,3) for a
2D convolution.}

\item{num_filters}{(int, defaults to None) – number of filters (output
feature-map depth), or () to denote scalar output items (output shape will
have no depth axis).}

\item{activation}{(Function) - optional activation Function}

\item{init}{(scalar or matrix or initializer, defaults to
init_glorot_uniform()) – initial value of weights W}

\item{pad}{(bool or list of bools) – if False, then the operation will be
shifted over the “valid” area of input, that is, no value outside the area
is used. If pad=True on the other hand, the operation will be applied to all
input positions, and positions outside the valid region will be considered
containing zero. Use a list to specify a per-axis value.}

\item{strides}{(int or tuple of ints, defaults to 1) – stride of the
operation. Use a list of ints to specify a per-axis value.}

\item{bias}{(bool) – whether to include bias}

\item{init_bias}{(scalar or matrix or initializer, defaults to 0) – initial
value of weights b}

\item{output_shape}{(int or tuple of ints) – output shape. When strides > 2,
the output shape is non-deterministic. User can specify the wanted output
shape. Note the specified shape must satisify the condition that if a
convolution is perform from the output with the same setting, the result
must have same shape as the input.}

\item{name}{string (optional) the name of the Function instance in the network}
}
\description{
Layer factory function to create a 1D convolution transpose layer with
optional non-linearity. Same as ConvolutionTranspose() except that
filter_shape is verified to be 1-dimensional. See ConvolutionTranspose() for
extensive documentation.
}
