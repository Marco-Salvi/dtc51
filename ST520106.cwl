#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: File
    outputSource: SS5206/DT5201
  DT5204:
    type: Directory
    outputSource: SS5206/DT5204

steps:
  SS5206:
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5204: Directory
    out:
    - DT5201
    - DT5204
