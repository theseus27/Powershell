function pName ($name) {
	(Get-Process | findstr "$name").length
}