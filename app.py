from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/suma', methods=['POST'])
def suma():
    data = request.get_json()
    a = data.get('a')
    b = data.get('b')
    
    if a is None or b is None:
        return jsonify({'error': 'Faltan parámetros'}), 400
    
    resultado = a + b
    return jsonify({'resultado': resultado})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

