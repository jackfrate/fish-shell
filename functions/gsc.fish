function gsc -a param1
set -f BRANCH_NAME (git symbolic-ref --short -q HEAD)
set -f ISSUE (echo "$BRANCH_NAME" | grep -oi "SP-[0-9]\+\|SRND-[0-9]\+" | head -n 1)
# TODO: allow -- appends
git commit -am "$ISSUE $param1"
end
