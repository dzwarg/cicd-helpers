#
# Utility functions to assist the agents in a dockerized GoCD configuration.
#

#
# agent_mount is a function that can be called by a dind container to find the 
# source directory for a volume mount. This is required for any subsequent volume
# mounts by docker in the tasks.
#
function agent_mount () {
  docker inspect `hostname` --format='{{range .Mounts}}{{if eq .Destination "/godata" }}{{.Source}}{{end}}{{end}}'
}

