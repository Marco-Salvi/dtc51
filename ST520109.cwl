#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: SS5209/DT5201
  DT5205:
    type: Directory
    outputSource: SS5209/DT5205

steps:
  SS5209:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: Directory
        DT5205: Directory
    out:
    - DT5201
    - DT5205
