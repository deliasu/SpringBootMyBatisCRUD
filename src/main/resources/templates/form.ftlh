<!Doctype html>
<html>
<head>
    <title>Mybatis Insert</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        .container{
            margin-top: 10px;
            max-width: 750px;
        }
    </style>
</head>
<body>
<div class="container">
    <h5>Add New Employee</h5>
    <form action="/update" method="post">
        Name:<br/>
        <input type="text" class="form-control" name="name" value="${emp.name}"/>
        <br/>
        Phone:<br/>
        <input type="text" class="form-control" name="phone" value="${emp.phone}"/>
        <br/>
        Email:<br/>
        <input type="email" class="form-control" name="email" value="${emp.email}"/>
        <br/>
        Department:<br/>
        <input type="text" class="form-control" name="branch" value="${emp.branch}"/>
        <br/>
        <input type="hidden" name="id" value="${emp.id}"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>