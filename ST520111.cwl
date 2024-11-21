#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: SS5211/DT5201
  DT5207:
    type: Directory
    outputSource: SS5211/DT5207

steps:
  SS5211:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: Directory
        DT5207: Directory
    out:
    - DT5201
    - DT5207
