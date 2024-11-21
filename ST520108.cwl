#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: SS5208/DT5201

steps:
  SS5208:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: Directory
    out:
    - DT5201
