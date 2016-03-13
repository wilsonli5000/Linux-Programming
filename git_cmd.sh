To create a repository from local project

cd <project dir> 

git init 			// initialize the local directory as a Git repository.

git add . 			// Adds the files in the local repo and stages them for commit. 

#There may be problem for adding. fatal: Unable to create '/Users/wilsonli/Dropbox/University/UCSD/.git/index.lock': File exists.

#Solution delete ./git/index.lock file.

git commit -m "message" 	// commit project files.

git remote add origin <repo link>
				//then copy the repo link from online.

git remote -v 			// verifies the new remote URL.

#There may be 403 error when trying to connect with git. Use git remote set-url origin <url> to solve the problem.

git pull origin master 		// if there exists files, first pull.

git push origin master		// push all files to Git.

git status			// display the status of the repo

git diff <filename>		// show the last modification content

git log				// search the history of the repo, to make the output prettier, use --pretty=onleline.

git log --graph --pretty=oneline --abbrev-commit
				// this will show the graph and the abbreviate the commit. 

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

git remote add origin <newrepourl>
				// here can add local git repo to a remote empty repo on Github.

git push -u origin master

//use branch:

git checkout -b <branchname> 	// create a new branch with a name

git branch 			// check what are current branches

git merge <branchname>		// merge the branch with master

git merge --no--ff -m "commit message" <branch name>
				// this will force quit Fast -Forward merge mode. in this normalmode, we can see merge history in log. In Fast-Forward, no merge history in log.

git branch -d dev 		// delete the unused branch

//fix a sudden bug: when the current work is not finished and find a sudden bug, first save the current workspace. then after fixing the bug retrieve the workspace and delete the stored version.

git stash 			// store the current work space.

git stash list 			// check what work space has been stored.

git stash pop			// retrieve the workspace and delete it.

git stash apply stash@{<number>}
				// retrieve the specific work space.

git stash drop 			// delete the stored wprk space.

//use tag:

git tag <name>			// tag a commit in a branch.

git tag <name> <commit ID>	// tag a previous commit.

git show <tagname>		// show the description of a tag.

git tag -d <tagnname>		// delete a tag.

git push origin <tagname> 	// push a tag to repo.

git push origin --tags		// push all the tags.

//create Git server: http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000/00137583770360579bc4b458f044ce7afed3df579123eca000

