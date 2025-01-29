from flask import Flask, jsonify

app = Flask(__name__)

# Sample data for books (in-memory database for simplicity)
books = {
    123: {"title": "Book 1", "author": "Author 1"},
    456: {"title": "Book 2", "author": "Author 2"},
}


@app.route("/api/books/<int:book_id>", methods=["GET"])
def get_book(book_id):
    book = books.get(book_id)
    if book is None:
        return jsonify({"error": "Book not found"}), 404
    return jsonify(book)


if __name__ == "__main__":
    # app.run(debug=True) # Local Host
    app.run(host='0.0.0.0', port=5000, debug=True)
