# Resolving Branch Divergence After a Squash Merge

## The Issue
When your Pull Request is accepted into the `dev` branch using **Squash and Merge**, GitHub compresses all of your individual commits into one brand-new commit. 

When you sync your local branch back with `dev` (`git pull origin dev` or `git merge dev`), your local branch adopts this new, clean history. However, the remote version of your branch on GitHub (`origin/<your-branch>`) still holds your old, unsquashed commits. 

Because the commit histories no longer match, Git flags the branches as **diverged**:
> `Your branch and 'origin/your-branch' have diverged...`
> `(use "git pull" if you want to integrate the remote branch with yours)`

⚠️ **CRITICAL: Do NOT run `git pull` as Git suggests.** Doing so will merge your old, messy history back into your clean local branch, causing duplicate commits and potential layout conflicts.

## The Fix
Your local machine currently holds the correct, consolidated project baseline. You need to force GitHub to accept this clean history and overwrite the old one.

1. **Verify you are on your working branch:**
   ```bash
   git switch <your-branch-name>
   ```

2. **Force push your local history to the remote repository:**
   ```bash
   git push origin <your-branch-name> --force
   ```

3. **Verify the divergence is resolved:**
   ```bash
   git status
   ```
   *(It should now say: `Your branch is up to date with 'origin/<your-branch-name>'.`)*

## Why is this safe?
In this project's workflow, each subgroup works in strictly isolated folders (`designs/DS_modulator/<your-block>/`). Nobody else is committing to your branch, and your actual design files are already safely merged into `dev`. This command simply resets your remote workspace to the official project baseline.
