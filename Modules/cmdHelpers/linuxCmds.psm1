function top {
  ps | sort -desc cpu | select -first 30;
}

function pName ($name) {
	(Get-Process | findstr "$name").length
}

function lin {
  if ($global:linuxMode -eq $false) {
    $global:linuxMode = $true
  } else {
    $global:linuxMode = $false
  }
  echo "Setting linux mode to $global:linuxMode"
}

Export-ModuleMember -Function top,pName,lin
