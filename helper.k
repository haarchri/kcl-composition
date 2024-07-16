_metadata = lambda suffix: str -> any {
    {
        name = option("params")?.oxr?.metadata.name
        annotations = {
            "krm.kcl.dev/composition-resource-name" = option("params")?.oxr?.metadata.name + "-" + suffix
        }
    }
}

oxr = option("params").oxr
ocds = option("params").ocds
dxr = option("params").dxr
dcds = option("params").dcds
