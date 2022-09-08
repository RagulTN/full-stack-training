const form = document.getElementById("form");
const id  =  document.getElementById("id");
const fname  =  document.getElementById("fname");
const department  =  document.getElementById("department");
const des  =  document.getElementById("des");
const salary  =  document.getElementById("salary");
const employeelist  =  document.getElementById("employeelist");

class Employee {
    constructor (id, fname, department, des, salary){
        this.id = id;
        this.fname = fname;
        this.department = department;
        this.des = des;
        this.salary = salary;
    }

    showData(){
        const table_data = document.createElement("tr");
        table_data.innerHTML = `
                        <tr >
                            <td>${this.id}</td>
                            <td>${this.fname}</td>
                            <td>${this.department}</td>
                            <td>${this.des}</td>
                            <td>${this.salary}</td>
                            <td>
                                <button value="Edit" id="edit" class="edit">Edit</button>
                                <button value="Delete" id="delete" class="delete">Delete</button>
                        </tr>`
        employeelist.appendChild(table_data);
        return this;
    }

    storeEmployee(){
         const allData = JSON.parse(localStorage.getItem("employees")) ?? [];
         allData.push({id: this.id,fname: this.fname,department: this.department, des: this.des, salary:this.salary});
         localStorage.setItem("employees",JSON.stringify(allData))
    }

    static showAllEmployees(){
        if(localStorage.getItem("employees")){
            JSON.parse(localStorage.getItem("employees")).forEach((item)=>{
                const table_data = document.createElement("tr");
                table_data.innerHTML = `
                                <tr >
                                    <td>${item.id}</td>
                                    <td>${item.fname}</td>
                                    <td>${item.department}</td>
                                    <td>${item.des}</td>
                                    <td>${item.salary}</td>
                                    <td>
                                        <button value="Edit" id="edit" class="edit">Edit</button>
                                        <button value="Delete" id="delete" data_id="${id}" class="delete">Delete</button>
                                </tr>`
                employeelist.appendChild(table_data);
            })
        }
    }
}

//Employee.showAllEmployees();

form.addEventListener("submit", (e)=>{
    e.preventDefault();

    const newEmp = new Employee(id.value, fname.value, department.value, des.value, salary.value);
    newEmp.showData().storeEmployee();

})

employeelist.addEventListener("click", (e)=>{
    if(e.target.classList.contains("delete")){
        e.target.parentElement.parentElement.remove();
    }
})
