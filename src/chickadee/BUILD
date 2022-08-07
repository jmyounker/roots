python_binary(
  name = "chickadee",
  main = "main.py",
  deps = [
    "//third_party/python:slack_sdk",
  ],
)

python_test(
    name = "test",
    srcs = ["main_test.py"],
    deps = [":chickadee"],
)