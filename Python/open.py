import gets
from json import load

with open("config.json") as config:
  global conf
  conf = load(config)

editor = gets.getEditor(conf)
