import .cluster as cluster
import .k8sObject as object
import .helper as h

_temp = []

if h.oxr.spec.parameters.cloud == "aws":
    _temp += [
        cluster.xCluster
    ]

items = _temp + [
    object.helmPullSecret
]
