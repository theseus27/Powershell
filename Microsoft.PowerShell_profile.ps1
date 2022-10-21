Import-Module PowerShellGet
Get-ChildItem -include *.psm1 "C:\Users\Theseus\Documents\Powershell\Modules" -Recurse -Force | Import-Module

$HOST.UI.RawUI.WindowTitle = "$((''+$pwd).replace($HOME, '~'))"

function prompt {
	"$ "
}

function touch ($filename) {
	"" | Out-File $filename -Encoding ASCII
}

function restart {
	wt -p "PS7";
	Stop-Process -Id $PID
}

function hi {
	echo hi
}

function grep($regex, $dir) {
	if ( $dir ) {
		ls $dir | select-string $regex
		return
	}
	$input | select-string $regex
}

function pkill($name) {
	ps $name -ErrorAction SilentlyContinue | kill
}

function sshtufts {
	ssh homework.cs.tufts.edu
}
