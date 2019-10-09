# cc-crab

uses Crab observation with ISGRI to find recommended minimal energy for imaging and spectral analysis.

It is built so that to input parameters (time), the notebook computes some output
that can be stored in a portable manner. This output includes the systematic needed
to fit the spectrum, the minimum valid energy et.

It makes use of wrappers developed by VS and of INTEGRAL docker containers, which
are publicly available.

# In the Makefile:

integralsw/osa-python is the *base* docker image

for details on the nb2workflow functions see directly https://github.com/volodymyrss/nb2workflow

extract of some of the functions useful here:

- *nbrun* runs notebook in a one-shot way. This can be done for test locally, and it is also done inside CWL container job (e.g. on REANA)

- *nb2service* runs a discoverable service that can execute the notebook on demand.
 
- *nb2worker* builds a container, either one-shot (for CWL) or service


