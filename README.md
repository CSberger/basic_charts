# basic_charts

```bash

helm package ./helm/initdb
mv *.tgz charts

#Update index.yml searching all first level subfolders for possible packaged charts
#cd ..
helm repo index . --url https://CSBerger.github.io/basic_charts

cp index.yaml charts/index.yaml
```
