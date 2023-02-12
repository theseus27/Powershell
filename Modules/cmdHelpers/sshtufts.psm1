function sshtufts([string]$num) {
    if ($num -eq $null) {
        ssh homework.cs.tufts.edu
    } 
    else {
	    ssh "tlim05@vm-hw${num}.cs.tufts.edu";
    }
}

function vstufts($LC_folder) {
	code --remote ssh-remote+homework.cs.tufts.edu /h/tlim05/$LC_folder
}

function tufts($LC_folder) {
	code --remote ssh-remote+homework.cs.tufts.edu /h/tlim05/$LC_folder
	ssh -t homework.cs.tufts.edu
}

Export-ModuleMember -Function sshtufts,vstufts,tufts
