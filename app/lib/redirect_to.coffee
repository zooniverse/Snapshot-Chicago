module?.exports = (path, delay = 0) ->
  setTimeout (=> window.location.hash = "#/" + path), delay

