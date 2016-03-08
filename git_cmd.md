To create a repository from local project

cd <project dir> 

git init 			// initialize the local directory as a Git repository.

git add . 			// Adds the files in the local repo and stages them for commit. 

git commit -m "message" 	// commit project files.

then copy the repo link from online.

git remote add origin <repo link>

git remote -v 			// verifies the new remote URL.

git pull origin master 		// if there exists files, first pull.

git push origin master		// push all files to Git.
