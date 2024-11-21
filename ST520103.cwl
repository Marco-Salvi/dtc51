#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: File
    outputSource: SS5203/DT5201

steps:
  SS5203:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
    out:
    - DT5201
