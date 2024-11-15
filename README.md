# **QuillConnect - Social Platform for Writers**

QuillConnect is a social networking platform for writers to share their posts, collaborate, and build a community. It allows writers to associate their posts with categories, engage with other writers' content, and receive feedback.

---

## **Table of Contents**
1. [Features](#features)
2. [Environment Variables](#environment-variables)
3. [ERD](#erd)
4. [Future Improvements](#future-improvements)

---

## **Features**

### **1. User Authentication**
- Handled by Devise.
- Roles: `writer`, `admin`.

### **2. Post Management**
- Writers can create, view, and categorize posts.

### **3. Category Linking**
- Posts can be linked to multiple categories via a join table (`PostCategory`).

### **4. Mail Notifications**
- SMTP integration for sending notifications (requires `.env` configuration).

### **5. Responsive Views**
- Basic Bootstrap integration for styling.

### **6. Database Relationships**
- Many-to-many association between `Post` and `Category`.

---

## **Environment Variables**

- **`.env` Configuration**:
  ```bash
  SMTP_USERNAME=
  SMTP_PASSWORD=
  ```

## **EDR**

  
## **Future Improvements**

1. **Add Scopes**
   - Implement scopes to filter posts by status (e.g., `published`, `draft`) or categories for easier navigation and management.

2. **Callbacks**
   - Introduce model callbacks to automatically set a default status (`pending`) for posts upon creation, ensuring consistency.

3. **RSpec Tests**
   - Add comprehensive unit and integration tests using RSpec to validate functionality and maintain code quality.

  
