# Git Guide: Recovering from an Accidental Merge into `main`

This guide explains how to safely undo a Pull Request (PR) that was mistakenly merged into the protected `main` branch instead of `dev`, ensuring that the developer's original working branch remains 100% safe and intact.

---

## 🛡️ Is the Working Branch Safe?
**Yes.** The developer's feature/subgroup branch (`dsm-integrator`, `dsm-doubler`, etc.) is completely untouched. All of their commits, local work, and remote progress are perfectly safe and ready to be merged into `dev` when the time is right.

---

## Method 1: Rewrite History (The Clean Reset) 🧼

This is the preferred method because it completely erases the mistake from your git history. It resets the `main` branch back to its exact state before the merge occurred, as if the PR was never merged.

> ⚠️ **Prerequisite:** This method requires you to have administrative privileges on GitHub to temporarily disable branch protection on `main` so you can perform a "force push" (`--force`).

### Step-by-Step Instructions:

1. **Switch to your local `main` branch and pull the latest changes:**
   ```bash
   git checkout main
   git pull origin main
   ```

2. **Identify the healthy commit:**
   Display the recent commits to find the commit hash that was active immediately before the accidental merge occurred.
   ```bash
   git log --oneline -n 10
   ```
   The very top commit is the merge commit. The one right below it is your healthy target commit.

3. **Reset your local `main` branch:**
   Move your branch pointer back to that healthy commit (replace `<healthy-commit-hash>` with the first 7 characters of the hash you found):
   ```bash
   git reset --hard <healthy-commit-hash>
   ```
   *Note: This command instantly rewrites your local files to match that exact point in time.*

4. **Force-push the clean state to GitHub:**
   Because you are rewriting the repository's history on the server, Git will block a normal push. You must force the update:
   ```bash
   git push origin main --force
   ```

**Result:** The accidental merge commit is physically removed from the server. The PR status on GitHub will automatically change to closed/unmerged. Your git history remains perfectly clean, preventing any future integration headaches.
