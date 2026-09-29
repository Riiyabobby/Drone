@echo off
echo ==========================================
echo   Drone Flight Simulator - EXE Builder
echo ==========================================
echo.
echo Step 1/3: Installing required packages...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
echo.
echo Step 2/3: Building the executable (this takes a few minutes)...
python -m PyInstaller --noconfirm --onefile --windowed --name DroneFlightSimulator --collect-all ursina --collect-all panda3d --collect-all panda3d_gltf --collect-all panda3d_simplepbr main.py
echo.
echo Step 3/3: Done!
echo Your file is here: dist\DroneFlightSimulator.exe
echo.
pause