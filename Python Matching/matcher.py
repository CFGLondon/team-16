import json
import ast

recF = open("recipients.json", "r")
volF = open("volunteers.json", "r")
recJSON = json.load(recF)
volJSON = json.load(volF)

interestList = ["animals", "cooking", "dancing", "gardening", "history", "politics", "television", "walking"]
dayList = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
timeSlots = ["morning", "afternoon", "evening"]

def getRecipientInfo(firstName, lastName):
    for i in recJSON["recipients"]:
        if (i["firstName"] == firstName and i["lastName"] == lastName):
             output = "First Name: " + i["firstName"] + "\n"
             output += "Last Name: " + i["lastName"] + "\n"
             output += "Gender: " + i["gender"] + "\n"
             output += "Preferred Gender: " + i["preferredGender"] + "\n"
             output += "Postcode: " + i["postCode"] + "\n"
             output += "Interests: | " 
             
             j = 0
             for interest in ast.literal_eval(i["interests"]):
                 if (interest == 1):
                     output += interestList[j] + " | "
                 j += 1
             
             output += "Availability: | " 
             
             j = 0
             for day in ast.literal_eval(i["availability"]):
                 k = 0
                 for slot in day:
                     if(slot == 1):
                         output += dayList[j] + " " + timeSlots[k] + " | "
                     k += 1
                 j += 1
             
             return output
    
    return "None"

def getVolunteerInfo(firstName, lastName):
    for i in volJSON["recipients"]:
        if (i["firstName"] == firstName and i["lastName"] == lastName):
             output = "First Name: " + i["firstName"] + "\n"
             output += "Last Name: " + i["lastName"] + "\n"
             output += "Gender: " + i["gender"] + "\n"
             output += "Postcode: " + i["postCode"] + "\n"
             output += "Interests: | " 
             
             j = 0
             for interest in ast.literal_eval(i["interests"]):
                 if (interest == 1):
                     output += interestList[j] + " | "
                 j += 1
             
             output += "Availability: | " 
             
             j = 0
             for day in ast.literal_eval(i["availability"]):
                 k = 0
                 for slot in day:
                     if(slot == 1):
                         output += dayList[j] + " " + timeSlots[k] + " | "
                     k += 1
                 j += 1
             
             return output
    
    return None

def matchingAvailability(x, y):
    for i in range(0, 7):
        for j in range(0, 3):
            if (x[i][j] == 1 and y[i][j] == 1):
                return True
    return False
    
def countInterestMatch(volInterests, recInterests):
    count = 0
    for i in range(0, 8):
        if (volInterests[i] == recInterests[i]):
            count += 1
    return count
    
def getMatchesForVolunteer(firstName, lastName):

    availability = None
    gender = None
    postCode = None
    interests = None    
    
    for i in volJSON["recipients"]:
        if (i["firstName"] == firstName and i["lastName"] == lastName):
             availability = i["availability"]
             gender = i["gender"]
             postCode = i["postCode"]
             interests = i["interests"]
    
    recTimeFiltered = [x for x in recJSON["recipients"] if matchingAvailability(ast.literal_eval(x["availability"]), ast.literal_eval(availability))]
    recGenderFiltered = [x for x in recTimeFiltered if x["preferredGender"] == gender]

    for i in recGenderFiltered:
        i["rank"] = countInterestMatch(i["interests"], interests)

    finalList = sorted(recGenderFiltered, key=lambda k: k['rank'])
    finalList.reverse()

    output = ""

    j = 1
    for i in finalList:
        output += "MATCH: " + str(j) + "\n"
        output += getRecipientInfo(i["firstName"], i["lastName"])
        output += "\n"
        j += 1
    
    return output

#printRecipientInfo("Amar", "Wong")
#printVolunteerInfo("Dorothy", "Parker")

print(getMatchesForVolunteer("Irene", "Albright"))