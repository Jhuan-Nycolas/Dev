def getEditor(config):
  if 'editor' in config:
    return config['editor']
  else:
    return None

def getProjects(config):
  if 'projects' in config:
    return config['projects']
  else:
    return None

def getPath(project):
  if 'path' in project:
    return project['path']
