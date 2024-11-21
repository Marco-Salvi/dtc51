#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: File
    outputSource: SS5205/DT5201
  DT5203:
    type: Directory
    outputSource: SS5205/DT5203

steps:
  SS5205:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5203: Directory
    out:
    - DT5201
    - DT5203
