#Name: Ensure machine is online

#Target List of hostnames:
  $hostname_list = get-content .\list.txt

#Iterate through the list and check machine status
  foreach ($ComputerName -in $hostnane_list){
   $Error.clear()
   try{
      if((test-connection $ComputerName -quite) -eq $true){
        "$ComputerName is online"
      }
      else{
         "$ComputerName is offline"
      }
    }
    catch{
      "Failed to connect to $ComputerName, $Error"
    }
  }
   
