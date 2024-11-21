#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5208: Directory
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: SS5214/DT5201
  DT5209:
    type: Directory
    outputSource: SS5214/DT5209

steps:
  SS5214:
    in:
      DT5208: DT5208
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5208: Directory
        DT5210: Directory
      outputs:
        DT5201: Directory
        DT5209: Directory
    out:
    - DT5209
    - DT5201
