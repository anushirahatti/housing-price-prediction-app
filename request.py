import requests

url = 'http://localhost:5000/predict_api'
r = requests.post(url,json={'Year':1996, 'CPI.Average':157, 'Low.Value':4.75})

print(r.json())