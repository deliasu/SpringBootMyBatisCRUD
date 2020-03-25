<!Doctype html>
<html>
<head>
    <title>MyBatis MySQL CRUD</title>
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
    <h4>Spring MyBatis MySQL CRUD</h4><br/>
    <h5>Employee List</h5>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Employee Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Branch</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <#list employees as emp>
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.phone}</td>
                <td>${emp.email}</td>
                <td>${emp.branch}</td>
                <td>
                    <a href="/form?id=${emp.id}" class="btn btn-info btn-sm" role="button">Update</a>
                    <a href="/delete?id=${emp.id}" class="btn btn-danger btn-sm" role="button">Delete</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>

    <h5>Add New Employee</h5>
    <form action="/insert" method="post">
        Name:<br/>
        <input type="text" class="form-control" name="name"/>
        <br/>
        Phone:<br/>
        <input type="text" class="form-control" name="phone"/>
        <br/>
        Email:<br/>
        <input type="email" class="form-control" name="email"/>
        <br/>
        Department:<br/>
        <input type="text" class="form-control" name="branch"/>
        <br/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>