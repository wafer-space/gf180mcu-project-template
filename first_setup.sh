#!/usr/bin/env bash
#
# first_setup.sh — run me ONCE, right after cloning the repository.
#
#   ./first_setup.sh
#
# What it does:
#   1. Checks git is installed and that you are inside the cloned repo.
#   2. Asks your name/email for git, if not configured yet.
#   3. Sets beginner-safe git defaults.
#   4. Shows the list of subgroup branches and asks which block you are in.
#   5. Switches you to that branch and remembers your choice (.myblock),
#      so the other team scripts never ask you for a branch name again.
#
# Running it again later is safe — use it to change your block if needed.

set -u

say() { printf '%s\n' "$*"; }
die() { printf '\n[STOP] %s\n' "$*" >&2; exit 1; }

# ------------------------------------------------------------ 0. sanity
command -v git >/dev/null 2>&1 \
    || die "git is not installed. Install it first (https://git-scm.com), then run me again."

git rev-parse --is-inside-work-tree >/dev/null 2>&1 \
    || die "You are not inside the repository.
       First clone it, then run me from inside the cloned folder:
         git clone <repo-url>
         cd <repo-folder>
         ./first_setup.sh"

cd "$(git rev-parse --show-toplevel)" || die "Could not find the repository root."

say ""
say "=== Chipathon 2026 - Delta-Sigma modulator: first-time setup ==="

# ------------------------------------------------------------ 1. identity
# git refuses to commit without a name and email.
if [ -z "$(git config user.name || true)" ]; then
    printf 'Your full name (will appear on your commits): '
    read -r gitname
    [ -n "$gitname" ] || die "Name cannot be empty. Run me again."
    git config --global user.name "$gitname"
fi
if [ -z "$(git config user.email || true)" ]; then
    printf 'Your email (same one as your GitHub account, if you have one): '
    read -r gitemail
    [ -n "$gitemail" ] || die "Email cannot be empty. Run me again."
    git config --global user.email "$gitemail"
fi
say "Git identity : $(git config user.name) <$(git config user.email)>"

# ------------------------------------------------------------ 2. safe defaults
# Plain merge on pull: avoids the "divergent branches" error newer git
# versions throw at beginners.
git config pull.rebase false

# ------------------------------------------------------------ 2b. team hooks
# Point git at the shared, version-controlled hooks in .githooks/ so the
# safety net is active: no commits on main/dev, no committing into another
# subgroup's folder. (Hooks in .git/hooks are per-clone and not shared;
# core.hooksPath makes the tracked .githooks folder the active one.)
if [ -d .githooks ]; then
    git config core.hooksPath .githooks
    chmod +x .githooks/* 2>/dev/null || true
    say "Safety hooks  : enabled (.githooks)"
else
    say "Safety hooks  : .githooks not found - skipped (older checkout?)"
fi

# ------------------------------------------------------------ 3. branch list
say ""
say "Contacting GitHub to get the current branch list..."
git fetch origin --prune \
    || die "Could not reach GitHub. Check your internet connection and that
       you have access to the repository, then run me again."

# Subgroup branches = everything on origin except main and dev
# (main/dev are protected integration branches — nobody works there).
mapfile -t branches < <(git for-each-ref --format='%(refname:strip=3)' refs/remotes/origin \
                        | grep -v -x -E 'main|dev|HEAD' | sort)

[ "${#branches[@]}" -gt 0 ] \
    || die "No subgroup branches found on GitHub yet. Ask the integration lead."

say ""
say "Which block are you working on?"
i=1
for b in "${branches[@]}"; do
    say "  [$i] $b"
    i=$((i+1))
done
printf 'Type the number and press ENTER: '
read -r n

case "$n" in
    *[!0-9]*|'') die "'$n' is not a valid number. Run me again." ;;
esac
{ [ "$n" -ge 1 ] && [ "$n" -le "${#branches[@]}" ]; } \
    || die "There is no option number $n. Run me again."

branch="${branches[$((n-1))]}"

# ------------------------------------------------------------ 4. switch
git switch "$branch" >/dev/null 2>&1 \
    || die "Could not switch to '$branch'.
       If you have unsaved changes, ask the integration lead before retrying."

# ------------------------------------------------------------ 5. remember
# .myblock stores your branch for the other team scripts.
# It stays only on your machine: we ignore it locally (.git/info/exclude),
# so it can never be committed by accident.
printf '%s\n' "$branch" > .myblock
grep -qx '\.myblock' .git/info/exclude 2>/dev/null \
    || printf '.myblock\n' >> .git/info/exclude

# ------------------------------------------------------------ 6. summary
say ""
say "All set!"
say "  Your branch     : $branch  (you are on it now)"
say "  Your choice is saved in .myblock - the team scripts will use it."
say ""
say "Daily routine from here on (see docs/README.md, section 4):"
say "  1. git pull                      <- every time you sit down to work"
say "  2. ...do your design work..."
say "  3. git add / commit / push       <- when you finish a session"
say ""
say "Golden rule: never work on 'main' or 'dev'. You are on '$branch' - stay there."
