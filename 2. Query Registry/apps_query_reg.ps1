[String]         $strKey    = '';
[String]         $strSubKey = '';
[PSCustomObject] $objData   = $null;

@( 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall', 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall' ) | Foreach-Object { 
    $strKey = $_;
    Get-ChildItem -Path $strKey | Select-Object -ExpandProperty PSChildName | Foreach-Object { 
        $strSubKey = $_;
        $objData   = Get-ItemProperty -LiteralPath (Join-Path -Path $strKey -ChildPath $strSubKey) | Select-Object -Property DisplayName, DisplayVersion;
        if ( $objData.DisplayName -ne $null ) {
            Write-Output -InputObject $objData;
            } #if
        } #Foreach-Object
    } #Foreach-Object