- How do you set up a GitHub Webhook to trigger Jenkins jobs?
- What is the purpose of a webhook, and how is it used in a CI/CD pipeline?

- If you’re familiar with GitHub Actions or GitLab, can you write a similar pipeline?






- Have you ever encountered the "detached HEAD" state in Git? What causes it, and how do you resolve it?
- If you need to give a specific team member access to a GitHub repository, how would you do that?
- How do you grant write permissions to a contributor in a GitHub repository?
- What is the difference between Public and Private repositories in GitHub? When would you use each?
- Explain how Git squash works. When would you use it, and what command do you run?
- Describe the Git merge process. How do you resolve merge conflicts?
- Git branching & release strategy - how do you handle parallel changes?
- What branching strategy do you follow, and how do you handle merges to avoid breaking the release branch? If a bug appears in production, what’s your approach to resolving it?
40. How to generate token in GitHub? Explain.
---
- You are trying to push files to a Git repository using git push, but it’s throwing an error. What would you do, and what’s the difference between git fetch and git pull?
- How would you resolve repo issues involving cached files?
- What is the difference between Git Squash and Git Stash?
- what is git cherrypic? What is the use
- what is git hard reset and soft reset
- Explain commonly used Git commands.
- What is Git, and how do you revert back changes that have been pushed?
- What is Git Bash?
**GIT Interview Questions & Answers**

**1. What is GIT?**  
GIT is a distributed version control system and source code management (SCM) system with an emphasis to handle small and large projects with speed and efficiency.

**2. What is Distributed Control System?**  
We work in our local machine and later we transfer the code to Centralized repository (GitHub). We don’t need to connect to centralized repository to work.

**3. What is GIT version control?**  
• GIT version control allows you to track the history of a collection of files (code files).  
• It supports creating different versions of file collection. Each version captures a snapshot of the files at a certain point of time and You can revert the collection of files using the snapshot. (You can develop the code in different versions of java. and you can merge in Git)  
• VCS allows you to switch between these versions. These versions are stored in a specific place, typically called as repository. (You can switch between different versions of java in between development process)

**4. What is difference between SVN and Git?**

**SVN**  
SVN is centralized repository, that means directly we involved in the centralized repository.  
We working on SVN means if we are facing any networking issue we can’t work on SVN because of we are directly involve into the centralized repository.  
Developed directly interact with the centralized repository.

**GIT**  
Git is distributed repository, first we are working in our laptop after that we are transferring the code from our laptop to centralized repository. Git have three phases the phases are work space, staging/index, local repo.  
In git we are doing in local systems only so no need to internet connection, when pushing the code from our system to centralized repository at that time we need network connection. Without network also, we can do some work.  
Developers not directly interact with the Centralized repository.

**5. What is a repository in GIT?**  
A Git repository contains the history of a files.

---

**6. How can you create a local repository in Git?**  
By using # git init command create a local repository.

**7. What is ‘bare repository’ in GIT?**  
A bare repository in Git just contains the version control information and no working files (no tree) and it doesn’t contain the special .git sub-directory.

**8. How to configure GitHub repository locally?**

# git config --global user.name "user_name"

# git config --global user.email "user_email"

**9. How to Create Alias to git commands**

# git config --global alias.lo "log --oneline" ------> To create an Alias to Command

# git config --global --unset alias.lo ------> To Remove an Alias

# git config --global --unset user.name ------> to remove username

**10. What is the git clone?**  
To download an existing repository from Centralized (Github) to local system.

# git clone

**11. What is ‘git add’?**  
To add files from work area to Index/staging/cache area.

# git add <file_name1> <file_name2>

**12. What is Staging Area?**  
staging area means “holding area”. Before the commits, it can be formatted and reviewed in an intermediate area known as staging or Index Area.

**13. What is the use of ‘git log’?**  
To see the commits. Also, we can find specific commits in your project history- by author, date, content or history.

# git log ------> To show the Git Commits

# git log -5 ------> To show Recent 5 Commits

# git log --oneline ------> To Display the each commit in one line

# git log --since=2018-01-21

# git log --until=2018-03-18

# git log --author="user_name"

# git log --grep="index"

# git log --oneline --author="user_name"

---

**14. How can we add modified/updated/edited files to the staging area and commit then at the same time?**

# git commit -a -m "Do Something once more"

**15. How to edit an incorrect commit message in Git? Or How can you fix a broken commit?**

# git commit --amend -m "This is your new Git Message"

**16. How to get back a commit to staging area?**

# git reset --soft <previous_commit id>

**17. How to get back a file from staging area to working area?**

# git reset head <file_name>

**18. How to get back a commit to work area?**

# git reset --mixed

**19. What is git reset?**  
Reset the current HEAD state to specific state.

**20. What is ‘head’ in git and how many heads can be created in a repository?**  
A ‘head’ is simply a reference to a commit object. In every repository, there is a default head referred as “Master”. A repository can contain any number of heads.

**21. What is .gitignore file?**  
Keep the files names in .gitignore then that files not add and commit, just skip that files while adding and committing.

**22. How to see the difference between 2 commits?**

# git diff <commit_id1>..<commit_id2>

**23. when file have staging area or file have committed if file is deleted in local repository unfortunately how to get back that file to staging area?**

# git checkout --<file_name>

**24. How to create a branch?**

# git branch <branch_name>

**25. How to checkout to branch?**

# git checkout <branch_name>

**26. How to create branch while checkout?**

# git checkout -b <branch_name>

**27. How do you rename the local branch?**

# git branch -m <old_branch_name> <new_branch_name>

---

**28. How to see the branch list?**

# git branch

**29. How to see the remote branch list?**

# git branch -r

Or

# git remote show origin

**30. How to see the local and remote branch list?**

# git branch -a

**31. How to delete a branch?**

# git branch -d <branch_name>

Or

# git branch -D <branch_name>

**32. How to delete a Remote Branch?**

# git push origin -d <branch_name>

**33. How to see the difference between 2 branches**

# git diff ..

**34. What is git push?**  
git push is to push commits from your local repository to a remote repository.

**35. How do you push the files to master branch in remote repo?**  
#git push (you must be in master branch)

**36. How do you push files from local to particular branch in remote repo?**  
#git push origin <branch_name>  
(or)  
#git push --set-upstream <branch_name>

**37. How to push new branch and its data to remote repository?**  
#git push <github_repository_path> <branch_name>  
(or)  
#git push --set-upstream <branch_name>

**38. What is git pull?**  
Git pull downloads and merges a ‘branch data’ from remote repository to local repository.  
It may also lead to ‘merge conflicts’ if your local changes are not yet committed. Use ‘git stash’ command to Hide your local changes before git pull.

# git pull (git fetch + git merge.)

---

**39. How do you pull a file from particular remote branch?**

# git pull origin <branch_name>

**40. How do you download a remote branch to local without merge?**

# git fetch origin <branch_name>

# git checkout <downloaded_branchname>

**41. What is git Fetch?**  
git fetch is only downloads new data from a remote repository, but it doesn’t integrate any of the downloaded data into your working files. All it does is provide a view of this data.

# git fetch <branch_name>

# git fetch origin <branch_name>

**42. What is difference between git clone & git pull?**  
• If you want to download whole existing repository than use Git Clone.  
• If you have already repository but you want to take new updates of existing repository than use git pull command.

**43. What is git merge?**  
Git merge is used to combine two branches.

# git merge <branch_name>

Note: you should be in target branch. Then run the command

**44. What is git conflict? What is the scenario you will get git conflict error?**  
For example, if you and another person both edited the same file on the same lines in different branches of the same Git repository, you'll get a merge conflict error when you try to merge these branches. You must resolve this merge conflict with a new commit before you can merge these branches.

**45. How do you resolve merge conflict?**  
Will inform the developers regarding this merge conflict. They will change the code and inform us. edit the files to fix the conflicting changes and then add & commit.

**46. How do you skip from merge conflict?**  
git merge --abort

**47. What is the function of ‘git rm’?**  
To remove the file from the work area/staging area and also from your disk ‘git rm’ is used. You can revert a deleted file.  
if it is deleted using ‘git rm’. If you deleted a file ‘rm’ command then you can’t get it.
Git checkout vs Git clone  
10 Git pull vs Git fetch  
11 What is Git stash  
12 What is Git cherry-pick  
13 Explain branching strategy  
14 What is a merge conflict  
15 How do you resolve a merge conflict
6. Explain GitFlow vs Trunk-Based Development. Which one do product companies prefer & why?
7. How do you debug production issues using Git bisect?
8. How do you enforce code quality checks and approvals before merge?
- Difference between Git checkout and Git clone
- Difference between Git pull and Git fetch
- What is Git stash
- What is Git cherry-pick
- Explain branching strategy
- What is a merge conflict
- How do you resolve a merge conflict
- What source control tool do you use?
- Step-by-step process: checkout code → make changes → push → PR → merge → deploy.
- How do you rollback code in Git?
- What is git revert vs git reset?
- What is git squash? What’s the purpose?
- Jenkins / CI-CD
- Write a simple Jenkins pipeline: Git checkout + Terraform deploy + variables.
- Explain the Jenkinsfile step-by-step.
28. In GitLab: You have 10 commits — how do you revert from the 10th commit to the 5th commit?
    
29. You committed recently but need to return to the 5th commit — solution?
    
30. What is Git cherry-pick?
    
31. If changes were merged and you want to cancel/revert merge — which command do you use?
GitHub Actions: storing credentials securely
- Difference between git fetch, git pull, and git clone
- How to resolve merge conflicts
- How to revert a specific commit
- What is the difference between rebase and merge?
- How do you create and switch branches?
- How do you stash and apply changes later?
- How do you check commit history and author details?
- What is .gitignore and how is it used?
- How do you handle versioning in CI/CD pipelines?
- How to tag a release in Git.
What is Git Merge and how does it work?  
• What is Git Checkout?  
• What is the difference between Git Pull and Git Fetch?
- How do you reuse workflows across repositories?
- How to manage large workflow files efficiently?
- What’s the difference between public and private workflow repositories?
- How to implement workflow concurrency?
- How do you handle failed workflows?