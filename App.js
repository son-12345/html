import React from 'react';
import './App.css';

const students = [
  {
    name: 'Nguyễn Thế Sơn',
    id: 1,
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/a1/a14182bc452e9db8818bc75706145ac17b70f3c5_full.jpg',
    email: '',
},
{
    name: 'Nguyễn Quang Anh',
    id: 2,
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/b9/b9879cb03572b94d217686485f1747b2e43daf10_full.jpg',
    email:  '',
},
{
    name: 'Đỗ Việt Hoàng',
    id: 3,
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/38/3880d0fe62a46907f159cb07b394dab1e789f849_full.jpg',
    email: '',
},
{
    name: 'Ngô Trường Xuân',
    id: 4,
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/50/5051d85cff4315441266d6671163dd76a8bfc91b_full.jpg',
    email: '',
},

];

const Student = ({ id, name, image, email }) => (
  <div className="student">
    <img src={image} alt={name} />
    <div>
      <h2>{name}</h2>
      <p>ID: {id}</p>
      <p>Email: {email}</p>
    </div>
  </div>
);

function App() {
  return (
    <div className="App">
      <h1>Student List</h1>
      {students.map(student => (
        <Student key={student.id} {...student} />
      ))}
    </div>
  );
}

export default App;