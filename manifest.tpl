image: jakolehm/cfssl:{{#if build.tag}}{{trimPrefix "v" build.tag}}{{else}}latest{{/if}}
{{#if build.tags}}
tags:
{{#each build.tags}}
  - {{this}}
{{/each}}
{{/if}}
manifests:
  -
    image: jakolehm/cfssl-amd64:{{#if build.tag}}{{trimPrefix "v" build.tag}}{{else}}latest{{/if}}
    platform:
      architecture: amd64
      os: linux
  -
    image: jakolehm/cfssl-arm64:{{#if build.tag}}{{trimPrefix "v" build.tag}}{{else}}latest{{/if}}
    platform:
      architecture: arm64
      os: linux
      variant: v8
