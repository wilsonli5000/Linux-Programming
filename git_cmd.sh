To create a repository from local project

cd <project dir> 

git init 			// initialize the local directory as a Git repository.

git add . 			// Adds the files in the local repo and stages them for commit. 

#There may be problem for adding. fatal: Unable to create '/Users/wilsonli/Dropbox/University/UCSD/.git/index.lock': File exists.

#Solution delete ./git/index.lock file.

git commit -m "message" 	// commit project files.

then copy the repo link from online.

git remote add origin <repo link>

git remote -v 			// verifies the new remote URL.

git pull origin master 		// if there exists files, first pull.

git push origin master		// push all files to Git.

git status			// display the status of the repo

git diff <filename>		// show the last modification content

git log				// search the history of the repo, to make the output prettier, use --pretty=onleline 

git reset --hard HEAD^		// reset the repo to previous versions. HEAD represents teh current version, HEAD^ represents previous version, HEAD^^ represents previous second version, for more previous versions, use HEAD~100.

git resetn --hard <commit ID>	// to reset future versions, type part of the commit ID of the repo. commit ID can be found through git log.

git reflog			// if the current terminal is closed, to find the commit ID, use this.


