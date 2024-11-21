#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: SS5210/DT5201
  DT5206:
    type: Directory
    outputSource: SS5210/DT5206

steps:
  SS5210:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: Directory
        DT5206: Directory
    out:
    - DT5201
    - DT5206
