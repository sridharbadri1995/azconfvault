Endpoint=https://ac-azconfvault.azconfig.io;Id=+8zC-l4-s0:+CqeGMSCw1jwHIR/eOuC;Secret=buGxib5dS1mUjy1xEkkhXGYZf6A3scH1qgyKuGpPMqk=


dotnet user-secrets init

dotnet add package Microsoft.Azure.AppConfiguration.AspNetCore


dotnet user-secrets set ConnectionStrings:AppConfig "Endpoint=https://ac-azconfvault.azconfig.io;Id=B+Tp-l4-s0:J7zhHFWTq2386uoHgGNs;Secret=gSy+y1DVolQ+t6+Vogjgsp9ib22tpnWkLTrQkH0bSAs="


Endpoint=https://ac-azconfvault.azconfig.io;Id=B+Tp-l4-s0:J7zhHFWTq2386uoHgGNs;Secret=gSy+y1DVolQ+t6+Vogjgsp9ib22tpnWkLTrQkH0bSAs=


 System.Console.WriteLine(connectionString);

              
                    //Connect to your App Config Store using the connection string
                    // builder.AddAzureAppConfiguration(connectionString);
                    builder.AddAzureAppConfiguration(option => 
                    {
                        option.Connect(connectionString);
                        option.ConfigureKeyVault(kv =>
                        {
                            kv.SetCredential(new DefaultAzureCredential());
                        });
                    });


Endpoint=https://ac-azconfvault.azconfig.io;Id=+/1c-l4-s0:O4U0MklPmOcUir8qoRy+;Secret=4S/AeQiMe7NJX6x7XpQAETiuHGkRkugKcFsrixwhjwY=

dotnet user-secrets list

Key Vault Creation
https://docs.microsoft.com/en-us/azure/azure-app-configuration/use-key-vault-references-dotnet-core?tabs=core5x

dotnet add package Azure.Identity


d3lojzu6v2hiabbjvijgwety54wswhzqhhjiq5f2w5xg5zzffopq

lniklgey2gjtx2rbzxf7tlpbf6oz5fbn7rebrisjd63eplc7q2jq

