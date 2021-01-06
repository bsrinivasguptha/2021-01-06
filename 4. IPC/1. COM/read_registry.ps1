

$o = [activator]::CreateInstance([type]::GetTypeFromProgID(("WScript.Shell.1")))
$o | gm

$o.RegRead("HKEY_CURRENT_USER\Volatile Environment\LOGONSERVER")

