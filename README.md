# custom container build action

use centos7



## Inputs

### `shell_main`

**Required** the path of file to build the project. Default `main.sh`.

## Example usage

```
name: build

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: use docker build
      uses: phantom9999/actions@centos7_v1
      with:
          shell_main: "action.sh"
```


