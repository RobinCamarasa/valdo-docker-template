FROM ...
#TODO change base docker image
# Syntax: # FROM [base_image]

#TODO fill in all ...

RUN mkdir -p /home

WORKDIR /home

RUN python -m pip install -U pip


COPY requirements.txt /home/
RUN python -m pip install -r requirements.txt

COPY process.py /home/
#TODO copy method components into docker
COPY ... /home/

ENTRYPOINT python -m process $0 $@

## ALGORITHM LABELS ##

# These labels are required
#TODO change ... to teamname
LABEL nl.diagnijmegen.rse.algorithm.name=...

# These labels are required and describe what kind of hardware your algorithm requires to run.
#TODO check that this has the right information (can generate this with evalutils)
LABEL nl.diagnijmegen.rse.algorithm.hardware.cpu.count=...
LABEL nl.diagnijmegen.rse.algorithm.hardware.cpu.capabilities=()
LABEL nl.diagnijmegen.rse.algorithm.hardware.memory=...
LABEL nl.diagnijmegen.rse.algorithm.hardware.gpu.count=1
LABEL nl.diagnijmegen.rse.algorithm.hardware.gpu.cuda_compute_capability=()
LABEL nl.diagnijmegen.rse.algorithm.hardware.gpu.memory=...