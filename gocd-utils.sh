#
#
#

function agent_mount () {
  docker inspect `hostname` --format='{{range .Mounts}}{{if eq .Destination "/godata" }}{{.Source}}{{end}}{{end}}'
}

