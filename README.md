# Feedback Form

A professional JSP-based feedback collection system that processes user input and displays confirmation on the same page.

## 🎯 Features

- **Real-time Processing**: Immediate feedback submission and confirmation
- **Personalized Response**: Dynamic thank-you message using user's name
- **Input Validation**: Client-side and server-side validation
- **Character Counter**: Real-time feedback length tracking
- **Professional UI**: Modern, responsive design with smooth animations
  
## 📝 Form Elements

- **Name Field**: Text input (required, max 50 chars)
- **Feedback Field**: Textarea (required, max 1000 chars)
- **Submit Button**: Triggers server-side processing
- **Character Counter**: Live feedback length indicator

## 📁 File Structure

```
feedbackForm.jsp    # Complete JSP implementation
```
## 💡 Usage

1. **Enter** your name in the provided field
2. **Write** feedback in the textarea
3. **Click** "Submit Feedback" button
4. **View** personalized confirmation with:
   - Thank-you message including your name
   - Your submitted feedback preview
   - Submission timestamp
   - Option to submit another feedback

## 📊 Sample Workflow

**Input:**
- Name: "John Doe"
- Feedback: "Excellent service, very responsive team."

**Output:**
"Thank you, John Doe, for your valuable feedback!"
[Feedback preview shown]
Submitted on: December 28, 2024 at 02:30 PM

## 🔒 Validation Rules

- Both name and feedback fields are required
- Name maximum length: 50 characters
- Feedback maximum length: 1000 characters
- Client-side validation with alerts
- Server-side null/empty checks

