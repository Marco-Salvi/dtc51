#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

requirements:
  MultipleInputFeatureRequirement: {}
  SubworkflowFeatureRequirement: {}

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: File[]
    outputSource:
    - ST520101/DT5201
    - ST520102/DT5201
    - ST520103/DT5201
    - ST520104/DT5201
    - ST520105/DT5201
    - ST520106/DT5201
    - ST520107/DT5201
    - ST520108/DT5201
    - ST520109/DT5201
    - ST520110/DT5201
    - ST520111/DT5201
    - ST520112/DT5201
    - ST520113/DT5201
    - ST520114/DT5201
    - ST520115/DT5201
    linkMerge: merge_flattened
  DT5202:
    type: Directory
    outputSource: ST520104/DT5202
  DT5203:
    type: Directory
    outputSource: ST520105/DT5203
  DT5204:
    type: Directory
    outputSource: ST520106/DT5204
  DT5205:
    type: Directory
    outputSource: ST520109/DT5205
  DT5206:
    type: Directory
    outputSource: ST520110/DT5206
  DT5207:
    type: Directory
    outputSource: ST520111/DT5207
  DT5208:
    type: Directory
    outputSource: ST520113/DT5208
  DT5209:
    type: Directory[]
    outputSource:
    - ST520115/DT5209
    - ST520114/DT5209
    linkMerge: merge_flattened

steps:
  ST520101:
    in:
      DT5202: ST520104/DT5202
      DT5203: ST520105/DT5203
      DT5204: ST520106/DT5204
      DT5205: ST520109/DT5205
      DT5206: ST520110/DT5206
      DT5207: ST520111/DT5207
      DT5210: DT5210
    run: ST520101.cwl
    out:
    - DT5201
  ST520102:
    doc: SS5202
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
  ST520103:
    doc: SS5203
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
  ST520104:
    doc: SS5204
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5202: Directory
    out:
    - DT5202
    - DT5201
  ST520105:
    doc: SS5205
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
    - DT5203
    - DT5201
  ST520106:
    doc: SS5206
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
    - DT5204
    - DT5201
  ST520107:
    doc: SS5207
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
  ST520108:
    doc: SS5208
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
  ST520109:
    doc: SS5209
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5205: Directory
    out:
    - DT5205
    - DT5201
  ST520110:
    doc: SS5210
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5206: Directory
    out:
    - DT5206
    - DT5201
  ST520111:
    doc: SS5211
    in:
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5210: Directory
      outputs:
        DT5201: File
        DT5207: Directory
    out:
    - DT5207
    - DT5201
  ST520112:
    doc: SS5212
    in:
      DT5205: ST520109/DT5205
      DT5206: ST520110/DT5206
      DT5207: ST520111/DT5207
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
  ST520113:
    doc: SS5213
    in:
      DT5202: ST520104/DT5202
      DT5203: ST520105/DT5203
      DT5204: ST520106/DT5204
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5202: Directory
        DT5203: Directory
        DT5204: Directory
        DT5210: Directory
      outputs:
        DT5201: File
        DT5208: Directory
    out:
    - DT5208
    - DT5201
  ST520114:
    doc: SS5214
    in:
      DT5208: ST520113/DT5208
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
  ST520115:
    doc: SS5215
    in:
      DT5208: ST520113/DT5208
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
    - DT5201
    - DT5209
