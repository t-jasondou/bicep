// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
using System.Collections.Immutable;
using Bicep.Core.TypeSystem;
using Bicep.Core.TypeSystem.Graph;

namespace Bicep.Core.Semantics.Namespaces
{
    public static class GraphNamespaceType
    {
        public const string BuiltInName = "graph";

        private static readonly IResourceTypeProvider TypeProvider = new GraphResourceTypeProvider(new GraphResourceTypeLoader());

        public static NamespaceSettings Settings { get; } = new(
            IsSingleton: false,
            BicepProviderName: BuiltInName,
            ConfigurationType: GetConfigurationType(),
            ArmTemplateProviderName: "Graph",
            ArmTemplateProviderVersion: "1.0");

        private static ObjectType GetConfigurationType()
        {
            return new ObjectType("configuration", TypeSymbolValidationFlags.Default, new TypeProperty[]
            {
                new TypeProperty("foo", LanguageConstants.String, TypePropertyFlags.Required),
                // new TypeProperty("kubeConfig", LanguageConstants.String, TypePropertyFlags.Required),
                // new TypeProperty("context", LanguageConstants.String),
            }, null);
        }

        public static NamespaceType Create(string aliasName)
        {
            return new NamespaceType(
                aliasName,
                Settings,
                ImmutableArray<TypeProperty>.Empty,
                ImmutableArray<FunctionOverload>.Empty,
                ImmutableArray<BannedFunction>.Empty,
                ImmutableArray<Decorator>.Empty,
                TypeProvider);
        }
    }
}
