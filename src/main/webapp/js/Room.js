function validateForm() {
    var roomNumber = document.login.roomNumber.value;
    var roomSection = document.login.roomSection.value;
    var roomType = document.login.roomType.value;
    if (roomNumber == "") {
        document.getElementById("roomNumberHelp").innerHTML = "Room Number is required";
        document.getElementById("demo").classList.add("invalid");
        return false;
    }
    if (roomSection == "none") {
        document.getElementById("roomSectionHelp").innerHTML = "Room Section is required";
        document.getElementById("demo1").classList.add("invalid");
        return false;
    }
    if (roomType == "none") {
        document.getElementById("roomTypeHelp").innerHTML = "Room Type is required";
        document.getElementById("demo2").classList.add("invalid");
        return false;
    }
    if (isNaN(roomNumber)) {
        document.getElementById("roomNumberHelp").innerHTML = "Room Number is invalid";
        document.getElementById("demo").classList.add("invalid");
        return false;
    }
    return true;
}

