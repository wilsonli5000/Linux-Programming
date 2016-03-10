#process:
Process is teh instance of an application. It contains all the whole running environment for the app.

Every process has a unique pID.

Two types: foreground process and background process. 
foreground process locks the key board and monitor when ruuning. background dont. add & in the end of an instruction to make it background.

ps 			// check current process
kill <pid>	// kill a process

init is the parent process of all process without a parent. 

Zoombie process: ps will show Z. kill them is hard, kill their parent process to let init kill it afterwards.