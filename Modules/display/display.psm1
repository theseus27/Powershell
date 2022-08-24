function show-colors {
    $s1 = [char]27
    $s01 = "["
    $s2 = 30
    $s3 = "m"
    $s4 = "Color"

    for (($s2); ($s2 -lt 50); $s2 ++) {
	    $s = $s1 + $s01 + $s2 + $s3 + $s4
	    echo $s
    }
}