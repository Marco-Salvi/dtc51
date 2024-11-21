#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

requirements:
  SubworkflowFeatureRequirement: {}

inputs:
  DT5210: Directory

outputs:
  DT5201:
    type: Directory
    outputSource: ST520101/DT5201
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
    type: Directory
    outputSource: ST520115/DT5209

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
    in:
      DT5210: DT5210
    run: ST520102.cwl
    out:
    - DT5201
  ST520103:
    in:
      DT5210: DT5210
    run: ST520103.cwl
    out:
    - DT5201
  ST520104:
    in:
      DT5210: DT5210
    run: ST520104.cwl
    out:
    - DT5202
    - DT5201
  ST520105:
    in:
      DT5210: DT5210
    run: ST520105.cwl
    out:
    - DT5203
    - DT5201
  ST520106:
    in:
      DT5210: DT5210
    run: ST520106.cwl
    out:
    - DT5204
    - DT5201
  ST520107:
    in:
      DT5210: DT5210
    run: ST520107.cwl
    out: 
    - DT5201
  ST520108:
    in:
      DT5210: DT5210
    run: ST520108.cwl
    out: 
    - DT5201
  ST520109:
    in:
      DT5210: DT5210
    run: ST520109.cwl
    out:
    - DT5205
    - DT5201
  ST520110:
    in:
      DT5210: DT5210
    run: ST520110.cwl
    out:
    - DT5206
    - DT5201
  ST520111:
    in:
      DT5210: DT5210
    run: ST520111.cwl
    out:
    - DT5207
    - DT5201
  ST520112:
    in:
      DT5205: ST520109/DT5205
      DT5206: ST520110/DT5206
      DT5207: ST520111/DT5207
      DT5210: DT5210
    run: ST520112.cwl
    out: 
    - DT5201
  ST520113:
    in:
      DT5202: ST520104/DT5202
      DT5203: ST520105/DT5203
      DT5204: ST520106/DT5204
      DT5210: DT5210
    run: ST520113.cwl
    out:
    - DT5208
    - DT5201
  ST520114:
    in:
      DT5208: ST520113/DT5208
      DT5210: DT5210
    run: ST520114.cwl
    out:
    - DT5209
    - DT5201
  ST520115:
    in:
      DT5208: ST520113/DT5208
      DT5210: DT5210
    run: ST520115.cwl
    out:
    - DT5201
    - DT5209
