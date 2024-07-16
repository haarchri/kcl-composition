import .models
import .helper as h

helmPullSecret = {
    apiVersion = "kubernetes.crossplane.io/v1alpha2"
    kind = "Object"
    metadata = h._metadata("helm-pull-secret")
    spec = models.KubernetesCrossplaneIoV1alpha2ObjectSpec{
        deletionPolicy = h.oxr.spec.parameters?.deletionPolicy
        references: [
            {
                patchesFrom: models.KubernetesCrossplaneIoV1alpha2ObjectSpecReferencesItems0PatchesFrom{
                    apiVersion: "v1"
                    kind: "Secret"
                    name: "provider-helm-pull"
                    namespace: "crossplane-system"
                    fieldPath: "data[username]"
                }
                toFieldPath: "data[username]"
            },
            {
                patchesFrom: models.KubernetesCrossplaneIoV1alpha2ObjectSpecReferencesItems0PatchesFrom{
                    apiVersion: "v1"
                    kind: "Secret"
                    name: "provider-helm-pull"
                    namespace: "crossplane-system"
                    fieldPath: "data[password]"
                }
                toFieldPath: "data[password]"
            }
        ]
        forProvider: models.KubernetesCrossplaneIoV1alpha2ObjectSpecForProvider{
            manifest: {
                "apiVersion": "v1",
                "kind": "Secret",
                "metadata": {
                    "name": "provider-helm-pull",
                    "namespace": "crossplane-system",
                }
            }
        }
    }
}
