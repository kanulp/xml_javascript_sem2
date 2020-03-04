function calculateAVG() {
    let scienceMarks = parseFloat(document.getElementById("marksScience").value);
    let mathMarks = parseFloat(document.getElementById("marksMath").value);
    let englishMarks = parseFloat(document.getElementById("marksEnglish").value);

    let avg = ((scienceMarks + mathMarks + englishMarks) / 3);
    document.getElementById("avgMarks").innerHTML = "Average : " + avg;
}