// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
using Azure.Bicep.Types.Graph.Index;
using Azure.Bicep.Types.Concrete;

namespace Azure.Bicep.Types.Graph
{
    public interface ITypeLoader
    {
        ResourceType LoadResourceType(TypeLocation location);

        TypeIndex GetIndexedTypes();
    }
}
