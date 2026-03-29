<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CRAYZE-Pixel Wall</title>
    <style>
        body { font-family: sans-serif; max-width: 800px; margin: auto; padding: 20px; }
    </style>
</head>
<body>
    <h1>Latest Posts</h1>
    <div id="posts-container">Loading posts...</div>
<script type="module">
  import { initializeApp } from "https://www.gstatic.com/firebasejs/12.11.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.11.0/firebase-analytics.js";
  const firebaseConfig = {
    apiKey: "AIzaSyC_dROH5xzzw8_QE5AlY1e9AvMOO6o33Go",
    authDomain: "pixelwall-ee7a8.firebaseapp.com",
    projectId: "pixelwall-ee7a8",
    storageBucket: "pixelwall-ee7a8.firebasestorage.app",
    messagingSenderId: "1000886378445",
    appId: "1:1000886378445:web:f21acec1599ff5f5ef6e84",
    measurementId: "G-6J2VMN22MQ"
  };
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>
</body>
</html>
