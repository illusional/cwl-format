class: CommandLineTool
cwlVersion: v1.0
doc: Extracts the base name of a file

inputs:
  file_path:
    type: string
    inputBinding:
      position: 1

outputs:
  output_path:
    type: string
    outputBinding:
      outputEval: $(inputs.file_path.replace(/\.[^/.]+$/, ""))

baseCommand: echo

hints:
  DockerRequirement:
    dockerPull: reddylab/workflow-utils:ggr
