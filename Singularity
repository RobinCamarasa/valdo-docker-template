Bootstrap: docker
From: ...

%post
    mkdir -p /home
    python -m pip install -U pip
    python -m pip install -r requirements.txt

%runscript
    python -m /home/process.py ${0} ${@}

%files
    requirements.txt /home/
    process.py /home/
    ... /home/

%labels
    nl.diagnijmegen.rse.algorithm.hardware.cpu.count ...
    nl.diagnijmegen.rse.algorithm.hardware.cpu.capabilities ()
    nl.diagnijmegen.rse.algorithm.hardware.memory ...
    nl.diagnijmegen.rse.algorithm.hardware.gpu.count 1
    nl.diagnijmegen.rse.algorithm.hardware.gpu.cuda_compute_capability ()
    nl.diagnijmegen.rse.algorithm.hardware.gpu.memory ...
