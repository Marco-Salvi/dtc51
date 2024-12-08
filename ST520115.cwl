#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5208: Directory
  DT5210: Directory

outputs:
  DT5201:
    type: File
    outputSource: SS5215/DT5201
  DT5209:
    type: Directory
    outputSource: SS5215/DT5209

steps:
  SS5215:
    in:
      DT5208: DT5208
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5208: Directory
        DT5210: Directory
      outputs:
        DT5201: File
        DT5209: Directory
    out:
    - DT5209
    - DT5201
