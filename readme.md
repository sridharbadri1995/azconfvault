Endpoint=https://ac-azconfvault.azconfig.io;Id=+8zC-l4-s0:+CqeGMSCw1jwHIR/eOuC;Secret=buGxib5dS1mUjy1xEkkhXGYZf6A3scH1qgyKuGpPMqk=


dotnet user-secrets init

dotnet add package Microsoft.Azure.AppConfiguration.AspNetCore


dotnet user-secrets set ConnectionStrings:AppConfig "Endpoint=https://ac-azconfvault.azconfig.io;Id=+8zC-l4-s0:+CqeGMSCw1jwHIR/eOuC;Secret=buGxib5dS1mUjy1xEkkhXGYZf6A3scH1qgyKuGpPMqk="


dotnet user-secrets list

Key Vault Creation
https://docs.microsoft.com/en-us/azure/azure-app-configuration/use-key-vault-references-dotnet-core?tabs=core5x

dotnet add package Azure.Identity