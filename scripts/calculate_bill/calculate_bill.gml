// Berechnung der Rechung pro Person 
// inklusive Trinkgeld
function calculate_bill(bill, tip_percent, person_count){
	var tip = (bill / 100) * tip_percent
    var total_bill = bill + tip
    var result = total_bill / person_count
    result = round(result * 100) / 100;
    return result;
}