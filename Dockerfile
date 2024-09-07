FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copie o arquivo .csproj e restaure as dependências
COPY WebSales/WebSales.csproj ./WebSales/
RUN dotnet restore WebSales/WebSales.csproj

# Copie o restante do código e publique
COPY . ./
RUN dotnet publish WebSales/WebSales.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build-env /app/out .

ENTRYPOINT ["dotnet", "WebSales.dll"]
