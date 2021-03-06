#!/usr/bin/env cwl-runner


# Top comment is preserved

class: CommandLineTool
cwlVersion: v1.0

requirements:
  InlineJavascriptRequirement: {}

inputs:
  in1:
    type: string
    inputBinding:
      position: 1
      valueFrom: A_$(inputs.in1)_B_${return inputs.in1}_C_$(inputs.in1)

outputs:
  out1:
    type: string
    outputBinding:
      glob: out.txt
      outputEval: $(self[0].contents)_D_$(runtime.cores)
      loadContents: true
stdout: out.txt

baseCommand: echo
arguments:
- valueFrom: $(runtime)
