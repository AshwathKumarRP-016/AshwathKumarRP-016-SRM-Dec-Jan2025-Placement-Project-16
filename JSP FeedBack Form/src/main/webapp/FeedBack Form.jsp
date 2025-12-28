<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Feedback Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background: white;
            border-radius: 24px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 100%;
            max-width: 600px;
            animation: slideUp 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }
        
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .header {
            background: linear-gradient(to right, #3a7bd5, #00d2ff);
            color: white;
            padding: 40px 40px 30px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23ffffff' fill-opacity='0.1' fill-rule='evenodd'/%3E%3C/svg%3E");
            opacity: 0.3;
        }
        
        .header h1 {
            font-size: 32px;
            margin-bottom: 10px;
            font-weight: 700;
            letter-spacing: -0.5px;
            position: relative;
            z-index: 1;
        }
        
        .header p {
            font-size: 16px;
            opacity: 0.9;
            position: relative;
            z-index: 1;
        }
        
        .content {
            padding: 40px;
        }
        
        .form-group {
            margin-bottom: 28px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 600;
            color: #2d3748;
            font-size: 15px;
            letter-spacing: 0.2px;
        }
        
        input[type="text"],
        textarea {
            width: 100%;
            padding: 16px;
            border: 2px solid #e2e8f0;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s;
            background: #f8fafc;
            line-height: 1.5;
        }
        
        input[type="text"]:focus,
        textarea:focus {
            border-color: #3a7bd5;
            outline: none;
            background: white;
            box-shadow: 0 0 0 4px rgba(58, 123, 213, 0.1);
        }
        
        textarea {
            min-height: 160px;
            resize: vertical;
            font-family: inherit;
        }
        
        .btn {
            background: linear-gradient(to right, #3a7bd5, #00d2ff);
            color: white;
            border: none;
            padding: 18px 32px;
            border-radius: 12px;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;
            width: 100%;
            transition: all 0.3s;
            letter-spacing: 0.3px;
            position: relative;
            overflow: hidden;
        }
        
        .btn::after {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: 0.5s;
        }
        
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(58, 123, 213, 0.3);
        }
        
        .btn:hover::after {
            left: 100%;
        }
        
        .btn:active {
            transform: translateY(0);
        }
        
        .confirmation-section {
            margin-top: 30px;
            animation: fadeIn 0.8s ease-out;
            display: none;
        }
        
        .confirmation-section.show {
            display: block;
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
        
        .confirmation-card {
            background: linear-gradient(135deg, #f0fff4 0%, #c6f6d5 100%);
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            border: 2px solid #38a169;
            position: relative;
            overflow: hidden;
        }
        
        .confirmation-card::before {
            content: '✓';
            position: absolute;
            top: -20px;
            right: -20px;
            font-size: 120px;
            color: rgba(56, 161, 105, 0.1);
            font-weight: bold;
        }
        
        .thank-you-icon {
            font-size: 48px;
            margin-bottom: 20px;
            color: #38a169;
            animation: bounce 1s;
        }
        
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {transform: translateY(0);}
            40% {transform: translateY(-20px);}
            60% {transform: translateY(-10px);}
        }
        
        .thank-you-message {
            font-size: 24px;
            color: #2d3748;
            margin-bottom: 15px;
            font-weight: 600;
            line-height: 1.4;
        }
        
        .user-name {
            color: #3a7bd5;
            font-weight: 700;
            text-decoration: underline;
            text-underline-offset: 4px;
        }
        
        .feedback-preview {
            background: white;
            border-radius: 12px;
            padding: 20px;
            margin-top: 20px;
            border-left: 4px solid #3a7bd5;
            text-align: left;
            font-style: italic;
            color: #4a5568;
            line-height: 1.6;
            position: relative;
        }
        
        .feedback-preview::before {
            content: '"';
            position: absolute;
            top: -10px;
            left: 15px;
            font-size: 60px;
            color: #e2e8f0;
            font-family: Georgia, serif;
            line-height: 1;
        }
        
        .timestamp {
            margin-top: 15px;
            font-size: 14px;
            color: #718096;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        
        .timestamp i {
            font-size: 16px;
        }
        
        .reset-btn {
            margin-top: 20px;
            background: #718096;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
            transition: all 0.3s;
            font-weight: 500;
        }
        
        .reset-btn:hover {
            background: #4a5568;
            transform: translateY(-1px);
        }
        
        .form-instructions {
            background: #edf2f7;
            border-radius: 12px;
            padding: 20px;
            margin-top: 30px;
            color: #4a5568;
            font-size: 14px;
            line-height: 1.6;
        }
        
        .form-instructions h3 {
            color: #2d3748;
            margin-bottom: 10px;
            font-size: 16px;
        }
        
        .footer {
            text-align: center;
            padding: 25px 40px;
            color: #718096;
            font-size: 14px;
            border-top: 1px solid #e2e8f0;
            background: #f8fafc;
        }
        
        .char-count {
            text-align: right;
            font-size: 14px;
            color: #718096;
            margin-top: 5px;
        }
        
        .char-count.warning {
            color: #e53e3e;
        }
        
        .required {
            color: #e53e3e;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>💬 Feedback Form</h1>
            <p>Share your Feedback and help us improve</p>
        </div>
        
        <div class="content">
            <form method="post" id="feedbackForm">
                <div class="form-group">
                    <label for="name">
                        Your Name <span class="required">*</span>
                    </label>
                    <input type="text" id="name" name="name" 
                           placeholder="Enter your full name" 
                           maxlength="50" required>
                </div>
                
                <div class="form-group">
                    <label for="feedback">
                        Your Feedback <span class="required">*</span>
                    </label>
                    <textarea id="feedback" name="feedback" 
                              placeholder="Please share your detailed feedback, suggestions, or comments..."
                              maxlength="1000" required></textarea>
                    <div id="charCount" class="char-count">0/1000 characters</div>
                </div>
                
                <button type="submit" class="btn">Submit Feedback</button>
            </form>
            
            <%
                
                String name = request.getParameter("name");
                String feedback = request.getParameter("feedback");
                boolean showConfirmation = false;
                String timestamp = "";
                
                if (name != null && feedback != null && 
                    !name.trim().isEmpty() && !feedback.trim().isEmpty()) {
                    
                    
                    showConfirmation = true;
                    
                    
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("MMMM dd, yyyy 'at' hh:mm a");
                    timestamp = sdf.format(new java.util.Date());
                }
            %>
            
            <% if (showConfirmation) { %>
                <div class="confirmation-section show">
                    <div class="confirmation-card">
                        <div class="thank-you-icon">🎉</div>
                        <div class="thank-you-message">
                            Thank you, <span class="user-name"><%= name %></span>, for your valuable feedback!
                        </div>
                        
                        <p style="color: #4a5568; margin-bottom: 20px;">
                            We appreciate you taking the time to share your thoughts with us.
                        </p>
                        
                        <div class="feedback-preview">
                            <%= feedback %>
                        </div>
                        
                       
                        
                        <button class="reset-btn" onclick="resetForm()">Submit Another Feedback</button>
                    </div>
                </div>
            <% } %>
            
            <div class="form-instructions">
                <h3>📝 Guidelines for Feedback</h3>
                <p>• Please provide specific and constructive feedback</p>
                <p>• Be respectful and professional in your comments</p>
                <p>• Include suggestions for improvement when possible</p>
                <p>• Your feedback helps us enhance our services</p>
            </div>
        </div>
        
       
    </div>
    
    <script>
        
        const feedbackTextarea = document.getElementById('feedback');
        const charCount = document.getElementById('charCount');
        
        feedbackTextarea.addEventListener('input', function() {
            const length = this.value.length;
            charCount.textContent = `${length}/1000 characters`;
            
            if (length > 900) {
                charCount.classList.add('warning');
            } else {
                charCount.classList.remove('warning');
            }
        });
        
        
        document.getElementById('feedbackForm').addEventListener('submit', function(e) {
            const name = document.getElementById('name').value.trim();
            const feedback = document.getElementById('feedback').value.trim();
            
            if (!name) {
                alert('Please enter your name.');
                e.preventDefault();
                document.getElementById('name').focus();
                return;
            }
            
            if (!feedback) {
                alert('Please enter your feedback.');
                e.preventDefault();
                document.getElementById('feedback').focus();
                return;
            }
            
            if (feedback.length < 10) {
                if (!confirm('Your feedback seems very brief. Would you like to add more details?')) {
                    e.preventDefault();
                    document.getElementById('feedback').focus();
                }
            }
        });
        
       
        function resetForm() {
            document.getElementById('feedbackForm').reset();
            charCount.textContent = '0/1000 characters';
            charCount.classList.remove('warning');
            
            document.querySelector('.confirmation-section').classList.remove('show');
            document.getElementById('name').focus();
        }
        
        
        document.getElementById('name').focus();
    </script>
</body>
</html>