# ---------- Build Stage ----------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# copy project file
COPY HelloDocker.csproj .

# restore dependencies
RUN dotnet restore

# copy source code
COPY . .

# publish app
RUN dotnet publish -c Release -o /app/publish


# ---------- Runtime Stage ----------
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# copy published files
COPY --from=build /app/publish .

# expose web port
EXPOSE 80

# start application
ENTRYPOINT ["dotnet", "HelloDocker.dll"]
