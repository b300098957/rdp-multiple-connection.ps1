$envname=$args[1]
Write-Host $envname

$servers=Get-Content ".\serverslist.txt"

foreach($server in $servers){

    cmdkey /generic:$server /user:"Brice" /pass:"B0r34l$"
    
    Write-Host $server
    
    mstsc /v: $server
    
    #to bypass the security alerts or certificate errors that has to be done manually
    
    sleep 5
    
    cmdkey /delete:$server
}
