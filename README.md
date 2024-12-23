# Flask Todo App

A simple todo application built with Flask.

## Installation

```bash
git clone https://github.com/yourusername/flask-todo.git
cd flask-todo
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

## Project Structure
```
flask-todo/
├── static/
│   └── style.css
├── templates/
│   └── index.html
├── app.py
├── requirements.txt
└── README.md
```

## Requirements

```
Flask==2.0.1
SQLAlchemy==1.4.23
```

## Usage

1. Start the server:
```bash
python app.py
```

2. Visit `http://localhost:5000` in your browser

## Features

- Add new tasks
- Mark tasks as complete
- Delete tasks
- Responsive design

## License

MIT