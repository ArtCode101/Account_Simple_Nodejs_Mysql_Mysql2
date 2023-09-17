const mysql = require('mysql2')

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "artdb"
})

connection.connect((err) => {
    if (err) console.log(err);

    const query = "INSERT INTO account(name,email,phone) VALUES('art','art@gmail.com','0912345678');"
    connection.query(query,(err,result)=>{
        if (err) console.log(err);
        console.log(result);

        connection.end()
    })
})