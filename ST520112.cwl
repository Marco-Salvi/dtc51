#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5205: Directory
  DT5206: Directory
  DT5207: Directory
  DT5210: Directory

outputs:
  DT5201:
    type: File
    outputSource: SS5212/DT5201

steps:
  SS5212:
    in:
      DT5205: DT5205
      DT5206: DT5206
      DT5207: DT5207
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5205: Directory
        DT5206: Directory
        DT5207: Directory
        DT5210: Directory
      outputs:
        DT5201: File
    out:
    - DT5201
