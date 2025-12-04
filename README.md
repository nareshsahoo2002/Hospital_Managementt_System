

# 🏥 Hospital Management System

A scalable, secure, and efficient Hospital Management System designed to digitalize hospital operations, reduce paperwork, and improve the overall workflow for users, doctors, and administrators.

This project demonstrates strong full-stack skills using
**Java • JSP • Servlets • HTML • CSS • Bootstrap • MySQL • MVC Architecture**

---

## 🌟 Key Highlights

* Fully functional multi-role system (User, Doctor, Admin)
* End-to-end appointment lifecycle
* Secure authentication system
* Clean and modular project structure
* Scalable database design
* Strong backend using Java + JSP/Servlets

---

## 🧩 System Modules

### 👤 User Module

* New users can register and log in
* Book appointments with any doctor in any department
* View:

  * Previous appointments
  * Ongoing treatments
  * Doctor feedback
  * Appointment/treatment status

---

### 🩺 Doctor Module

* Doctor logs in using credentials
* Views all booked appointments
* Provides treatment feedback
* Updates treatment status

---

### 👑 Admin Module

* Admin logs in using admin credentials
* Manage doctors:

  * Add doctor
  * Remove doctor
  * View doctor details
* Manage users:

  * View users
  * Track treatment status

---

### 📅 Appointment Module

* Users can schedule appointments
* Doctors receive and update appointments
* Admin monitors appointment activity

---

## 🛠️ Tech Stack

**Frontend:** HTML, CSS, Bootstrap
**Backend:** Java, JSP, Servlets, JDBC
**Architecture:** MVC
**Database:** MySQL
**Server:** Apache Tomcat

---

## 📊 System Architecture (MVC)

* **Model:** DAO classes, database logic
* **View:** JSP pages
* **Controller:** Servlets handling request/response

---

## 🗄️ Database Setup

1. Create database:

   ```sql
   CREATE DATABASE hospital;
   ```
2. Import the `schema.sql` file
3. Configure database credentials using Environment Variables:

```
DB_URL=jdbc:mysql://localhost:3306/hospital
DB_USER=root
DB_PASS=your_password
```

❗ **Do NOT hardcode database credentials in Java code**

---

## 🚀 How to Run the Project

### 1️⃣ Clone the repository

```bash
git clone https://github.com/nareshsahoo2002/Hospital_Managementt_System.git
```

### 2️⃣ Import into IDE

* Open in IntelliJ / Eclipse
* Import as *Maven project* (if applicable)

### 3️⃣ Setup MySQL Database

* Create database
* Import schema.sql

### 4️⃣ Configure Tomcat

* Install Apache Tomcat (8.5+ recommended)
* Add project to server

### 5️⃣ Run the Project

Open browser:

```
http://localhost:8080/Hospital_Managementt_System/
```

---

## 🔐 Security (Important for Recruiters)

* No hardcoded database credentials
* Prepared Statements used to prevent SQL injection
* Password hashing recommended (BCrypt)
* Input validation implemented
* Proper session management

---

## 📸 Screenshots

(Add your Login, Dashboard, Appointment screenshots here)

---

## 🚀 Future Enhancements

* Appointment reminders (Email/SMS)
* Doctor scheduling system
* Billing & invoice module
* Medical history module
* Admin analytics dashboard

---

## 👨‍💻 Author

**Naresh Sahoo**
Java Full Stack Developer
Passionate about building scalable and secure web applications

---

If you want, I can also generate:

✅ `schema.sql`
✅ `.gitignore`
✅ `.env.example`
✅ Folder structure suggestions

Just say **"Generate everything"**.
