using Azure.Identity;

var builder = WebApplication.CreateBuilder(args);


var connectionString = builder.Configuration.GetConnectionString("AppConfig");

//  config.AddAzureAppConfiguration(options =>
//                     options.Connect(new Uri(settings["AppConfig:Endpoint"]), new ManagedIdentityCredential()));

builder.Host.ConfigureAppConfiguration(builder =>
                {
                   System.Console.WriteLine(connectionString);
                    // builder.AddAzureAppConfiguration(connectionString);
              
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

                })                
            .ConfigureServices(services =>
                {
                    services.AddControllersWithViews();
                });

// Add services to the container.
builder.Services.AddRazorPages();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
