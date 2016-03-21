# DockCI Utility: NPM
DockCI premade utility to download NodeJS modules with NPM

## Usage
- Add a utility project into DockCI
    - Use this git repository as the repo
    - Set the slug to something like `npm-alpine`
    - Set the name to something like `NPM Alpine`
- Manually create a build
    - Use the lastest version as the git reference
- Modify your `dockci.yaml`:
```
utilities:
  - name: npm-alpine
    input:
      - package.json /work/package.json
    output:
      - from: /work/node_modules
        to: util
```
- Modify your `Dockerfile`:
```
ADD ./util/node_modules /code/node_modules
```
