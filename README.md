# custom container build action
run build in custom container, such as fedora, centos, opensuse.


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
      uses: phantom9999/actions@v22
      with:
          shell_main: "action.sh"
```


