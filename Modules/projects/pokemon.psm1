function pokemon {
    wt -p "PS7" --title "Backend" -d "C:\Users\Theseus\Documents\CS\personalProjects\pokemon_web_app/backend" powershell -noExit "uvicorn main:app --reload"`; nt -p "PS7" --title "Frontend" -d "C:\Users\Theseus\Documents\CS\personalProjects\pokemon_web_app\frontend" powershell -noExit "npm start"`; nt -p "PS7" --title "SQL" -d "C:\Users\Theseus\Documents\CS\personalProjects\pokemon_web_app" powershell -noExit "mysql -h pokemondb.c1bl7gpkpozr.us-east-1.rds.amazonaws.com -P 3306 -u root -p"`;

    Stop-Process -Id $PID

    code "C:\Users\Theseus\Documents\CS\personalProjects\pokemon_web_app"

    start Chrome "https://localhost:8000"
}




