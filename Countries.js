function chkForm() {
    //--- שם משתמש קצר מדי או לא קיים ---
    var uName = document.getElementById("uName").value;
    var fName = document.getElementById("fName").value;
    var lName = document.getElementById("lName").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phoneNum").value;
    var year = document.getElementById("Year").value;
    var ps = document.getElementById("ps").value;
    if (uName.length < 2 || fName.length < 2 || lName.length < 2 || email.length < 2 || (!email.includes("@")) || (!email.includes(".")) || prefix.selectedIndex == 0 || isNaN(phone) || phone.length != 7 || isNaN(year) || year < 1900 || year > 2023 || ps.length < 2) {
        if (uName.length < 2) {
            document.getElementById("mUname").value = "User name too short or doesn't exist";
            document.getElementById("mUname").style.display = "inline";
        }
        else document.getElementById("mUname").style.display = "none";
        if (fName.length < 2) {
            document.getElementById("mFname").value = "First name too short or doesn't exist";
            document.getElementById("mFname").style.display = "inline";
        }
        else document.getElementById("mFname").style.display = "none";
        if (lName.length < 2) {
            document.getElementById("mLname").value = "Last name too short or doesn't exist";
            document.getElementById("mLname").style.display = "inline";
        }
        else document.getElementById("mLname").style.display = "none";
        if (ps.length < 2) {
            document.getElementById("mPs").value = "Password too short or doesn't exist";
            document.getElementById("mPs").style.display = "inline";
        }
        else document.getElementById("mPs").style.display = "none";
        if (email.length < 2 || (!email.includes("@")) || (!email.includes("."))) {
            document.getElementById("mEmail").value = "Email too short or doesn't exist";
            document.getElementById("mEmail").style.display = "inline";
        }
        else document.getElementById("mEmail").style.display = "none";
        if (isNaN(phone)) {
            document.getElementById("mPhone").value = "You need to enter only numbers";
            document.getElementById("mPhone").style.display = "inline";
        }
        else if (phone.length != 7) {
            document.getElementById("mPhone").value = "Phone number conatin exacly 7 numbers";
            document.getElementById("mPhone").style.display = "inline";
        }
        else document.getElementById("mPhone").style.display = "none";
        if (isNaN(year)) {
            document.getElementById("mYear").value = "You need to enter only numbers";
            document.getElementById("mYear").style.display = "inline";
        }
        else if (year < 1900 || year > 2023) {
            document.getElementById("mYear").value = "incorrect year";
            document.getElementById("mYear").style.display = "inline";
        }
        else document.getElementById("mYear").style.display = "none";

        return false;
    }
    else {
        document.getElementById("mUname").style.display = "none";
        document.getElementById("mFname").style.display = "none";
        document.getElementById("mLname").style.display = "none";
        document.getElementById("mEmail").style.display = "none";
        document.getElementById("mPhone").style.display = "none";
        document.getElementById("mYear").style.display = "none";
        document.getElementById("ps").style.display = "none";
    }
}