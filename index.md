<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Blog</title>
    <style>
        body { font-family: sans-serif; max-width: 800px; margin: auto; padding: 20px; }
        .post { border-bottom: 1px solid #ccc; margin-bottom: 20px; padding-bottom: 10px; }
    </style>
</head>
<body>
    <h1>Latest Posts</h1>
    <div id="posts-container">Loading posts...</div>

    <script>
        // Fetch the file managed by PagesCMS
        fetch('./content.json')
            .then(response => response.json())
            .then(data => {
                const container = document.getElementById('posts-container');
                container.innerHTML = ''; // Clear loading text

                // Loop through the posts defined in your .pages.yml
                data.posts.forEach(post => {
                    const postElement = document.createElement('div');
                    postElement.className = 'post';
                    postElement.innerHTML = `
                        <h2>${post.title}</h2>
                        <div>${post.body}</div>
                    `;
                    container.appendChild(postElement);
                });
            })
            .catch(err => console.error('Error loading posts:', err));
    </script>
</body>
</html>
