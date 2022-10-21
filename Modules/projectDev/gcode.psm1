function gcode {
    $BackBlock = {
    env/Scripts/activate
    uvicorn main:app --reload
    }

    $FrontBlock = {
    npm run dev
    }

    wt -p "PS7" --title "Backend" -d "gcode\backend" powershell -noExit $BackBlock`; nt -p "PS7" --title "Frontend" --suppressApplicationTitle -d "gcode\frontend" powershell -noExit $FrontBlock`; nt -d "gcode" --title "GGode" --suppressApplicationTitle

    Stop-Process -Id $PID
}