[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $PROJECT_NAME,
    [Parameter()]
    [ValidateSet('net5.0')]
    [string]
    $FRAMEWORK = 'net5.0',
    [Parameter()]
    [ValidateSet('7.3', '8.0','9.0')]
    [string]
    $LANG_VERSION = '8.0'
)
$PROJECT_PATH="./src/$PROJECT_NAME/"

#Project
New-Item -Path $PROJECT_PATH -ItemType Directory -Force
dotnet new classlib --force --output $PROJECT_PATH --framework $FRAMEWORK --langVersion $LANG_VERSION

#Solution
dotnet new sln --force
dotnet sln add "$PROJECT_PATH$PROJECT_NAME.csproj"