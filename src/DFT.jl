__precompile__()

module DFT

using Reexport

if VERSION < v"0.7.0-DEV.3187"
    @reexport using AbstractFFTs
else
    using AbstractFFTs
end

import AbstractFFTs: Plan, ScaledPlan,
                     fft, ifft, bfft, fft!, ifft!, bfft!,
                     plan_fft, plan_ifft, plan_bfft, plan_fft!, plan_ifft!, plan_bfft!,
                     rfft, irfft, brfft, plan_rfft, plan_irfft, plan_brfft,
                     fftshift, ifftshift,
                     rfft_output_size, brfft_output_size,
                     plan_inv, normalization

import Base: show, summary, size, ndims, length, eltype,
             *, A_mul_B!, inv, \, A_ldiv_B!

##############################################################################
# Native Julia FFTs:

include("ctfft.jl")
include("fftn.jl")

end
