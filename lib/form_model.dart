class Student{
  String name;
  String course;
  String? gender;
  String? address;
  String contact;
  String? dob;
  String? email;
  
  Student(this.name,this.course,this.gender,this.address,this.contact,this.dob,this.email);

  Map<String,dynamic> toJson(){
    return {
      "name": name,
      "course": course,
      "gender": gender,
      "address": address,
      "contact": contact,
      "dob": dob,
      "email":email,
    };
  }

  factory Student.fromJson(Map<String,dynamic> json){
    return Student(
      json["name"], 
      json["course"],
      json["gender"],
      json["address"],
      json["contact"],
      json["dob"],
      json["email"],);
  }
}