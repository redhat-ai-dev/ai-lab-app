# Release Notes

## [0.9.0](https://github.com/redhat-ai-dev/ai-lab-app/commits/v0.9.0) (2024-10-29)

Initial release of AI Software Templates.

### New Features
* Updates app of apps
* Vllm support
* Splits model server and app into two pods
* Adds resources to deploy to RHOAI workspaces
* Updates GitOps templates for deploying to RHOAI
* Creates a Job to clone source repository in RHOAI workbench
* Store model server environment variables in ConfigMap
* Updates command args to be able to accept value
* Updates templates to allow model host and name to be passed
* Updates Gitops template for RAG DB
* Uses mirrored quay images from redhat-ai-dev (e.g. `quay.io/redhat-appstudio/appstudio-utils` replaced with `quay.io/redhat-ai-dev/appstudio-utils`)
* Updates to custom Utils Image (`quay.io/redhat-ai-dev/appstudio-utils` replaced with `quay.io/redhat-ai-dev/utils`)
* Adds Job for ImageStream create w/ Roles and RoleBinding
* Updates DSP init job for new image
* Adds `MODEL_ENDPOINT_BEARER` to deployment
* Updates Tekton Task name to one used by our [RHDH Installer](https://github.com/redhat-ai-dev/ai-rhdh-installer)
* Aligns model endpoint secret name and key values

### Bug Fixes
* Fixed the pvc name and add max model length
* Fixed typos in RHOAI templates
* Modifies how RHOAI resources are deployed to use a job instead
* Updates logical and argo app names, update-deployment task relies on it
* Changes RHOAI notebook name to `{{values.name}}-notebook`
* Renames `vllmModelName` to `modelName` for the model deployment

### Performance Improvements
* Updates to single environment to save memory usage

### Other Changes
* Removes DSP reference in `kustomization.yaml`
* Adds the PR Template
* Removes RHTAP references
* Removes RHTAP Reference From Tekton Task
