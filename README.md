# Raspberry_Office_Network
File sharing and guidelines for setting up Raspberry Pi office network

# Setup Guide:  

### Step 1
[Download Raspian Pi - Buster Lite](https://www.raspberrypi.org/downloads/raspbian/) - This is the command line interface("OS") to be used to be loaded onto the raspberry pi.

### Step 2
[Download Rufus](https://rufus.ie/) - Rufus is a great tool for creating bootable USB/SD drives easily.

### Step 3
Using an SD card/card reader and [Rufus](https://rufus.ie/). Transfer the Buster Lite iso onto the SD card and insert SD card into the host Raspberry Pi.

[If you need some more clarity on the above process click here]()(/StepbyStep.docx)




## Proposed Folder / File Structure
RaspberryScripts
	 Team 2 
*		Zeus
			initialZeusSetup.sh
			userCreation.sh
			update.sh (place in cron daily?)
			security.sh (ssh config / remove unwanted software and services / etc.)
		Poseidon
			initialPoseidonSetup.sh
			userCreation.sh
			webserverSetup.sh
			update.sh (place in cron daily?)
			security.sh (ssh config / remove unwanted software and services / etc.)
		Hades
			initialHadesSetup.sh
			userCreation.sh
			update.sh (place in cron daily?)
			security.sh (ssh config / remove unwanted software and services / etc.)
	Team 1
*		Mars
		Apollo
		Pluto
