import .helper as h

xCluster = {
    apiVersion: "haarchri/v1alpha1"
    kind: "XCluster"
    metadata = h._metadata("cluster")
    spec.parameters: {
        deletionPolicy: h.oxr.spec.deletionPolicy
        providerConfigName: h.oxr.spec.providerConfigName
        cloud: h.oxr.spec.parameters.cloud
        id: h.oxr.spec.parameters.id
        region: h.oxr.spec.parameters.region
        version: h.oxr.spec.parameters.version
        iam: h.oxr.spec.parameters?.iam
        nodes: h.oxr.spec.parameters.nodes
    }
}
