git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

# Merge branch
echo "If branch $branch2 exists, merge branch $branch1 into branch $branch2"
if git show-ref --quiet refs/heads/$branch2
then
  git checkout $branch2
  git merge $branch1
  git push origin $branch2
else
  echo "Branch $branch2 does not exist"
fi
