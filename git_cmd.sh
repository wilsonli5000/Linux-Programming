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

git reset --hard <commit ID>	// to reset future versions, type part of the commit ID of the repo. commit ID can be found through git log.

git reset HEAD file		// reset can also be used to put files back to workspace from index. you can use HEAD to specify which version to reset.

git reflog			// if the current terminal is closed, to find the commit ID, use this.

index file in .git dir		// when we modify some file or add some new file, after "git add", the modification records are stored in the index file of .git directory. After "git commit", all the files in index are pushed to the master branch. Then index become "clean" again.

git checkout -- file 		// when you want to cancel all the changes you made, reset the repo to teh version of last "add" or "commit". This can also be used when you want to recover the file you deleted locally from the repo.

//delete file:

rm file				// remove local files

git rm file 			// remove repo files

git checkout -- file		// recover the deleted file from repo to local

//remote repo: Git uses ssh protocol for encryption. The private key and the public key are in ~/.ssh dir. .pub file is the public key. Githuub is the web providing remote repo service for Git.

//here can add local git repo to a remote empty repo on Github. 

git remote add origin git@github.com:wilsonli5000/reponame.git




