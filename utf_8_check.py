import chardet

with open('pyproject.toml', 'rb') as file:
    raw_data = file.read()
    result = chardet.detect(raw_data)
    print(result)  # 会显示编码类型和置信度