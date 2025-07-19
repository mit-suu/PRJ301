# 📚 BookStore

**BookStore** is a web-based inventory and sales management system for bookstores. It allows users to browse books, manage a shopping cart, and place orders, while administrators can handle inventory, track sales, and manage customer data.

## 🚀 Features

- ✅ Browse and search books by category
- 🛒 Add to cart and manage customer orders
- 📦 Inventory management (CRUD for books)
- 👤 Admin login and user session management
- 📈 Basic sales reporting

## 🛠️ Technologies Used

- **Backend**: Java Servlet, JSP
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Database**: MySQL
- **IDE**: IntelliJ IDEA

## 📷 Screenshots

<img src="/img/BookStore/BookStore1.png" width="600" />
<img src="/img/BookStore/BookStore2.png" width="600" />

## 📁 Project Structure

```
├── src/
│   ├── controller/
│   ├── dao/
│   ├── model/
│   └── view/
├── web/
│   └── jsp/
├── sql/
│   └── bookstore_schema.sql
└── README.md
```

## 💡 How to Run

1. Clone this repository
2. Import into IntelliJ or Eclipse
3. Setup a local MySQL database and import `bookstore_schema.sql`
4. Configure `DBContext.java` with your DB credentials
5. Deploy to a servlet container like Tomcat
6. Open in browser: `http://localhost:8080/bookstore`

## 🧑‍💻 Author

- [Tran Tuan Hiep](https://github.com/mit-suu)
- 3rd-year Software Engineering student at FPT University

## 📜 License

This project is for educational purposes only. Commercial use is not allowed.
