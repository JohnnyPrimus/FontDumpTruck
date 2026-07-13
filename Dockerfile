FROM mcr.microsoft.com/dotnet/framework/sdk:4.7.2

WORKDIR /app

COPY FontDumpTruck/ .
RUN dotnet restore FontDumpTruck.sln
RUN dotnet build FontDumpTruck.sln -c Release -o out
ENTRYPOINT ["C:\\app\\out\\FontDumpTruck.exe"]
