# gitlab-ci-helm-dotnet
Simple CI\CD for monorepo dotnet project.

Requirements:
- Gitlab >= 12
- Hashicorp Vault (as .json store)
- Openshift (for tests used OKD 3.11)
- Registry (for test used Sonatype Nexus/Harbor)

Docker image helm-oc:3.5.4 - https://hub.docker.com/repository/docker/exzotikfruit/helm-oc

Gitlab CI Variables:
- OSHIFT_URL - API URL. Used for login with token
- NAMESPACE - Openshift Namespace
- OSHIFT_TOKEN - token for SA in NS(minlevel: edit)
- VAULT_TOKEN - token for access to appsettings.json
- PROJ_TO_BUILD - list of projects in monorepo which should be deployed
- NEXUS_URL - docker registry url