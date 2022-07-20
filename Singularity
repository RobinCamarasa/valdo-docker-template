Bootstrap: docker
From: pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

%post
    mkdir -p /home
    mkdir -p /input
    mkdir -p /output
    chmod 755 /home
    chmod 755 /input
    chmod 755 /output
    python -m pip install -U pip
    python -m pip install -r /home/requirements.txt

%runscript
    python /home/process.py ${0} ${@}

%files
    requirements.txt /home/
    process.py /home/
    ./ /home/

%labels
    # TODO change your team name
    nl.diagnijmegen.rse.algorithm.name ValdoTorch
    nl.diagnijmegen.rse.algorithm.hardware.cpu.count 1
    nl.diagnijmegen.rse.algorithm.hardware.cpu.capabilities ()
    nl.diagnijmegen.rse.algorithm.hardware.memory 10G
    nl.diagnijmegen.rse.algorithm.hardware.gpu.count 1
    nl.diagnijmegen.rse.algorithm.hardware.gpu.cuda_compute_capability ()
    nl.diagnijmegen.rse.algorithm.hardware.gpu.memory 8G
