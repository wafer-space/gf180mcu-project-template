# Chipathon 2026 — Δ-Σ Modulator — Team Git Workflow

> **Read this before you push anything.**
>
> This guide explains *how we collaborate* on the design repository. You do **not**
> need to be a git expert — just follow the recipes in sections 3 and 4. The git
> basics in section 6 are optional, for those who want to understand what the
> commands actually do.

---

## 0. The idea in one paragraph

Our project is split into **sub-blocks** (integrator, comparator, DAC, etc.).
Each sub-block is owned by a **subgroup**. To keep everyone's work safe and
independent, each subgroup works on **its own branch** and only edits **its own
files**. Stable, integrated work lives on protected branches that nobody edits
directly. You contribute your work by opening a **Pull Request (PR)** once a week.

This way, *nobody can accidentally break someone else's work*, and every change
is reviewed before it joins the shared design.

---

## 1. The branches

We use three kinds of branches:

| Branch | What it holds | Who edits it | You push here? |
|---|---|---|---|
| `main` | Stable, verified, integration-tested work | nobody directly | ❌ never |
| `dev` | Day-to-day integration + top-level simulations | nobody directly | ❌ never |
| *subgroup branches* | Each subgroup's working area | that subgroup only | ✅ yes |

- **`main`** is the "safe" copy. We only update it when the whole design is stable.
- **`dev`** is where everyone's weekly work comes together and gets simulated at the
  top level.
- **Your subgroup branch** is your workspace. Commit and push here as often as you like.

> ⚠ **TBD — to be filled by the team lead:** the exact number and names of the
> subgroup branches. Each subgroup will be told the name of *its* branch. Until
> then, wherever this guide says `<your-branch>`, use the branch name you were given.

**Golden flow:**

```
                weekly PR
<your-branch>  ───────────►  dev  ───────────►  main
               (your work)              (only when stable)
   ▲                                  │
   └──────────  sync back  ◄──────────┘
            (after each merge)
```

---

## 2. The golden rules

These five rules prevent ~95% of all problems. Memorize them.

1. **Never work directly on `main` or `dev`.** Always work on your subgroup branch.
2. **Only edit the files your subgroup is assigned.** Do not touch other subgroups'
   folders, even to "fix a small thing." Ask them instead.
3. **Pull before you start working.** This gets your teammates' latest changes.
4. **Commit and push when you finish a work session.** Don't sit on uncommitted work
   for days — if your machine dies, it's gone.
5. **When in doubt, ask before you push.** A 30-second question is cheaper than an
   afternoon of untangling git.

> A note that surprises people: **your branch still contains the *whole* project,
> not just your folder.** "Only edit your own files" is a *team rule*, not something
> git enforces. The discipline is on us.

---

## 3. Your everyday recipe (daily)

Do this every time you sit down to work:

```bash
# 1. Make sure you are on YOUR branch
git switch <your-branch>

# 2. Get the latest version of your branch
git pull

# 3. ... do your design work (only in your assigned files) ...

# 4. Stage and save your work with a short message
git add .
git commit -m "Short description of what you did"

# 5. Send it to the shared server
git push
```

That's the whole daily loop. Repeat as often as you like — small, frequent commits
are better than one giant commit at the end of the week.

**Write useful commit messages.** Good: `"Add first-pass integrator OTA sizing"`.
Bad: `"changes"`, `"update"`, `"asdf"`.

---

## 4. The weekly recipe (Pull Request + sync-back)

Once a week (or when a piece of work is ready to share), your subgroup contributes
its work to `dev`.

### Step A — Open the Pull Request

1. Push your latest work (section 3).
2. Go to the repository on GitHub.
3. Open a **Pull Request** from `<your-branch>` → `dev`.
4. Write a short description of what changed.
5. Tell the **integration lead** that it's ready.

The integration lead reviews it and merges it into `dev`.

### Step B — Sync back (do NOT skip this!)

After your PR is merged, `dev` now contains *everyone's* latest work, but **your
branch does not yet**. Pull the new `dev` back into your branch so you stay up to
date:

```bash
git switch <your-branch>
git pull origin dev      # bring dev's changes into your branch
git push                 # save the synced result
```

> ⚠ **This is the step beginners forget.** If you skip it week after week, your
> branch slowly drifts away from everyone else's and future merges get painful.
> Sync back every week.

> ⚠ **TBD:** the weekly PR day (e.g., every Friday) and **who the integration lead
> is** (the only person who merges into `dev` and `main`).

---

## 5. What to do when something goes wrong

You will hit these. They are normal. Don't panic, don't force anything.

| Symptom | What it means | What to do |
|---|---|---|
| `push` rejected, "updates were rejected" | Someone pushed before you | Run `git pull`, then `git push` again |
| "You have unmerged paths" / conflict markers (`<<<<<<<`) | Two people changed the same lines | **Stop. Ask the integration lead.** Don't guess. |
| "Your branch is behind" | You don't have the latest | Run `git pull` |
| You committed on the wrong branch | Easy to fix, but easy to make worse | **Stop and ask** before doing anything else |
| Not sure which branch you're on | — | Run `git branch` (the `*` marks your current branch) |

**The universal safe move:** if you're unsure, run `git status` — it tells you where
you are and what's going on — and share its output with the team before acting.

---

## 6. Git basics (optional — for the curious)

You can use the recipes above without reading this. But if you want to understand
what's happening, here's the minimum mental model.

### What is git?

Git is a tool that records **snapshots** of your project over time. Each snapshot
(a **commit**) lets you see history, go back, and combine work from different people.

### The four places your work lives

1. **Working directory** — the files you actually edit on your computer.
2. **Staging area** — files you've marked to be saved next (`git add`).
3. **Local repository** — snapshots saved on *your* machine (`git commit`).
4. **Remote repository** — the shared copy on GitHub (`git push` / `git pull`).

Work flows: **edit → `add` → `commit` → `push`**, and you receive others' work with **`pull`**.

### The commands you'll actually use

| Command | What it does |
|---|---|
| `git clone <url>` | Download the repository for the first time |
| `git status` | Show what's changed and which branch you're on |
| `git branch` | List branches; `*` marks the one you're on |
| `git switch <branch>` | Move to another branch |
| `git pull` | Download and merge the latest changes |
| `git add .` | Stage all your changes for the next commit |
| `git commit -m "msg"` | Save a snapshot locally with a message |
| `git push` | Upload your commits to GitHub |
| `git log --oneline` | See the history of commits |

### Branches, in one sentence

A **branch** is an independent line of work. Your subgroup branch lets you save and
share progress without touching the stable `main`/`dev` branches.

### Pull Request, in one sentence

A **Pull Request** is a request to merge your branch's work into another branch
(`dev`), so it can be reviewed first.

---

## 7. Glossary

- **Repository (repo):** the project and all its history.
- **Branch:** an independent line of work.
- **Commit:** one saved snapshot of your work.
- **Pull Request (PR):** a reviewed request to merge your work into a shared branch.
- **Integration lead:** the person responsible for merging into `dev` and `main`.
- **Sync back:** pulling the updated `dev` into your branch after a merge.
- **Conflict:** when two people changed the same lines and git needs a human to decide.

---

## 8. Who to ask

> ⚠ **TBD:** fill in names / contact channel.
>
> - **Integration lead:** ________
> - **Per-subgroup contact:** ________
> - **Team chat / where to ask git questions:** ________

---

*When in doubt: `git status` first, ask second, force-push never.*
