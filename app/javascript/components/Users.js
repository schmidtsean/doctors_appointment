import React from "react";

const Patients = ({ users }) => {
  return (
    <>
      <h1>Patients</h1>
      {/* <a href="/users/new">Add User</a> */}
      <hr />
      <h2>{ users.length <= 0 ? "No Users" : "" }</h2> 
      { users.map((user) => (
        <div>
          <a href={`/users/${user.id}`}>{user.first_name}, { user.last_name}</a>
        </div>
      ))}
    </>
  )
}

export default Patients;