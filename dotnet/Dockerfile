# -------- Build Stage --------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy csproj and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the source code
COPY . .

# Publish the application
RUN dotnet publish -c Release -o /app/publish


# -------- Runtime Stage --------
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Copy published output from build stage
COPY --from=build /app/publish .

# Expose port
EXPOSE 80

# Start application
ENTRYPOINT ["dotnet", "YourApp.dll"]
