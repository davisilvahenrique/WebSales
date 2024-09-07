FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

COPY websales/*.csproj ./websales/
RUN dotnet restore ./websales/WebSales.csproj

COPY . ./
RUN dotnet publish websales/WebSales.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build-env /app/out .

ENTRYPOINT ["dotnet", "WebSales.dll"]