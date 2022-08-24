Import-Module projectDev
Import-Module display
Import-Module PowerShellGet

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