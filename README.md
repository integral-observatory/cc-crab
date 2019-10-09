# cc-crab

uses Crab observation with ISGRI to find recommended minimal energy for imaging and spectral analysis.

Notes by CF:
It is built so that to input parameters (time), the notebook computes some output
that can be stored in a portable manner. This output includes the systematic needed
to fit the spectrum, the minimum valid energy et.

It makes use of wrappers developed by VS and of INTEGRAL docker containers, which
are publicly available.

In the Makefile:

nb2worker is a wrapper to run a docker container and produce output that is 
discoverable (?)

integralsw/osa-python is the docker image

nbrun runs notebook in a way that can be used as a service (?)

Wrappers are available in github

