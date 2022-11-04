# Lesson: Advanced Interaction Technologies & Applications

### First and Last Name: Ευάγγελος Γεωργίου
### University Registration Number: dpsd17019
### GitHub Personal Profile: VaggelisGeorgiouDpsd17019
### Advanced Interaction Tecnologies & Applications Github Personal Repository: xxx

# Introduction

# Summary


# 1st Deliverable

__Υποερώτημα 1 : Video Capture.
Mελετήστε το online tutorial για το video και το Κεφάλαιο 16 από το βιβλίο Learning Processing, 2nd Edition και συνδέστε το Prossessing με την κάμερα ώστε αυτή να καταγράφει βίντεο. Πρακτικά, θα πρέπει να τρέξετε το Example 16-1 από το Learning Processing, 2nd Edition:__

Στόχος του Υποερωτήματος 1 αποτελεί η σύνδεση της κάμερας του υπολογιστή με το Processing.
Αρχικά κατεβάζω την βιβλιοθήκη “Video Library for Processing 3” μέσω του “Add Mode” στο νέο sketch. Όταν η βιβλιοθήκη εγκατασταθεί, κλείνω το πρόγραμμα και ανοίγω από την αρχή ένα νέο sketch, για να επαληθεύσω ότι η βιβλιοθήκη μου έχει εγκατασταθεί. Στο νέο sketch πηγαίνω στα File->Examples->Libraries (Αν η βιβλιοθήκη βρίσκεται εκεί, σημαίνει ότι εγκαταστάθηκε επιτυχώς).
Έπειτα κάνω import την βιβλιοθήκη στο sketch μου με αυτόν τον τρόπο: 
“import processing. video. *;”
Κατόπιν τρέχω το παράδειγμα 16.1. όπως υποδεικνύεται στην εκφώνηση. 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

__Υποερώτημα 2: Recorded video:
Μελετήστε το Example 16-4 και Example 16-5 από το βιβλίο Learning Processing, 2nd Edition και προσπαθήστε να υλοποιήσετε την Exercise 16-2. Χρησιμοποιήστε ένα δικό σας μικρής διάρκειας (μέχρι 10 sec) βίντεο που να παίζει σε επανάληψη:__

__Περιεχόμενα:__
•	Εισαγωγή
•	Διαδικασία προσθήκης recorded video στον φάκελο “Data”
•	Σχόλια-Παρατηρήσεις
•	Άσκηση 16.2.

__Εισαγωγή:__
Το παράδειγμα 16.4. πρόκειται για την αναπαραγωγή recorded video, ενώ το παράδειγμα 16.5. σχετίζεται με τη μετακίνηση (με το ποντίκι) μπροστά και πίσω κατά τη διάρκεια ενός recorded video. 

__Διαδικασία προσθήκης recorded video στον φάκελο “Data”:__
Προκειμένου να λειτουργήσουν και τα δύο παραδείγματα χρειάζεται να αντικαταστήσουμε το “testmovie.mov” στον κώδικα με το δικό μας recorded video που θέλουμε να παίξει. Οι παρακάτω φωτογραφίες αφορούν τα παραδείγματα 16.4. (αριστερά) και 16.5. (δεξιά).
![image](https://user-images.githubusercontent.com/115811465/199959045-5cca5236-f76e-4697-b7d5-e19caed85355.png) ![image](https://user-images.githubusercontent.com/115811465/199959127-0bf937f4-6207-488f-91c2-3d847cd13b82.png)


Προκειμένου να τρέξει σωστά το πρόγραμμα και στις δύο περιπτώσεις είναι απαραίτητο να έχουμε τοποθετήσει τα δικά μας recorded video στον φάκελο data του κάθε sketch. Αυτό μπορεί να επιτευχθεί με τρεις τρόπους:
1ος τρόπος) Έχοντας ανοιχτό το sketch, κάνουμε κλικ με το ποντίκι το Sketch->Add File και κατόπιν επιλέγουμε το δικό μας recorded video. Αυτή η διαδικασία δημιουργεί από μόνη της ένα φάκελο “Data” που θα σχετίζεται με το αντίστοιχο sketch.  
2ος τρόπος) Κάνουμε drag and drop το αντίστοιχο recorded video μέσα στο sketch. Αυτή η διαδικασία δημιουργεί εξίσου έναν φάκελο “Data” που θα σχετίζεται με το sketch.
3ος τρόπος) Φτιάχνουμε φάκελο “Data” που θα σχετίζεται με το sketch, στον οποίο τοποθετούμε το αντίστοιχο recorded video μας.
Έπειτα, κλείνουμε ξανά το sketch και το ξανα-ανοίγουμε, ώστε να έχει φορτώσει το recorded video.

__Σχόλια-Παρατηρήσεις:__
Όταν φτιάχνουμε νέο sketch, δημιουργείται αυτόματα φάκελος με το όνομα του sketch, ο οποίος περιέχει τον κώδικα σε αρχείο μορφής .pde και τον φάκελο “Data” όπως αναφέραμε παραπάνω. 

![image](https://user-images.githubusercontent.com/115811465/199959290-9f44d4b9-8c3e-4414-8c25-86798dad875e.png)

![image](https://user-images.githubusercontent.com/115811465/199959316-6207bc63-1c9d-412d-a6b8-95c9ec56d1b9.png)



Εάν θελήσουμε να δώσουμε νέο όνομα στο φάκελο του sketch (πχ. Από “sketch_221102d” σε “Askisi1”), εμφανίζεται το παρακάτω μήνυμα:

![image](https://user-images.githubusercontent.com/115811465/199959569-224e2d8c-5d2a-43ef-aa24-7cfc8c6d115d.png)

![image](https://user-images.githubusercontent.com/115811465/199959593-d8a251ea-ade0-45ff-be51-f3b6d38991fb.png)








Αν πατήσουμε το “OK” στο παραπάνω μήνυμα, τότε δημιουργείται ένας νέος φάκελος στη θέση του αρχείου “sketch_221102d.pde”, όπως φαίνεται και στην εικόνα παρακάτω.
 ![image](https://user-images.githubusercontent.com/115811465/199959631-34b0e246-3afe-4852-97a9-7d48c9eceff9.png)


Ο φάκελος αυτός περιέχει μόνο το αρχείο τύπου .pde, ενώ του λείπει ο φάκελος “Data”. Κατά συνέπεια όταν προσπαθούμε να τρέξουμε το πρόγραμμα, το path που μας οδηγεί στο αντίστοιχο αρχείο (σε αυτό το Υποερώτημα: το προσωπικό μας recorded video)  έχει αλλάξει. Έτσι το πρόγραμμα δεν μπορεί να εμφανίσει το βίντεο. Κατά συνέπεια είναι σημαντικό να τοποθετούμε τον φάκελο “Data” στον ίδιο φάκελο με το αρχείο κώδικα .pde, ώστε να αποφεύγουμε το παραπάνω εμπόδιο. 

![image](https://user-images.githubusercontent.com/115811465/199959710-7a1c261f-4a3b-42fd-8b02-1a3c56d88323.png)


__Άσκηση 16.2.__
Για την άσκηση 16.2. αντιγράφουμε αρχικά τον κώδικα του παραδείγματος 16.4. από το βιβλίο του Daniel Shiffman “A Beginner’s Guide to Programming Images, Animation, and Interaction Second Edition”. Στόχοι μας σε αυτή την άσκηση είναι (α) το βίντεο (ταινία) να παίζει σε λούπα και (β) να μπορούμε να ελέγξουμε την ταχύτητα με την οποία θα παίζει το βίντεο.
Σύμφωνα με το βίντεο του Daniel Shiffman “11.2: Using the Movie Object for Displaying Recorded Videos - Processing Tutorial” με σύνδεσμο https://www.youtube.com/watch?v=nJWV7X7df9w&t=227s συμπεραίνει κανείς πως η ταχύτητα του βίντεο μπορεί να αλλάξει με δύο τρόπους.


1ος Τρόπος) Χωρίς τη χρήση του ποντικιού:
Χρησιμοποιούμε τον κώδικα του παραδείγματος 16.4. και προσθέτουμε στην void setup() {…} την εξής γραμμή κώδικα. Προσθέτοντας τη γραμμή “movie. speed ( 4 ) ;” ορίζουμε από την αρχή τη ταχύτητα του βίντεο, ως πολλαπλάσια της αρχικής ταχύτητας του βίντεο. Στη συγκεκριμένη περίπτωση η νέα ταχύτητα είναι 4 φορές η αρχική.

![image](https://user-images.githubusercontent.com/115811465/199959759-25412227-ba29-4d48-8687-e3b5974b37c7.png)


2ος Τρόπος) Με χρήση ποντικιού:
Χρησιμοποιούμε εξίσου τον κώδικα του παραδείγματος 16.4. χωρίς καμία αλλαγή, με την μόνη διαφορά, πως σε αυτή τη περίπτωση προσθέτουμε στην void draw () {…} τις παρακάτω γραμμές κώδικα, σύμφωνα με τις οποίες ορίζεται μεταβλητή τύπου float για τη ταχύτητα. Ο κώδικας της φωτογραφίας έχει ως αποτέλεσμα το εξής. Όσο πιο δεξιά βρίσκεται το ποντίκι, τόσο πιο γρήγορα θα παίζει το βίντεο. Αντίθετα όσο πιο αριστερά έχουμε το ποντίκι, τόσο πιο αργά θα παίζει το βίντεο.

![image](https://user-images.githubusercontent.com/115811465/199959794-e948bb17-5930-42d6-a1fb-b275d954ab65.png)


----------------------------------------------------------------------------------------------------------------------------------------------------------------------

__Υποερώτημα 3: QR Code:
Μελετήστε το Processing QRCode Library tutorial. Επειδή το link για το Processing QRCode library στο tutorial δεν ανοίγει σωστά, θα πρέπει να κατεβάσετε τη βιβλιοθήκη από εδώ. Αφού εισάγετε τη βιβλιοθήκη στο Processing θα πρέπει να δημιουργήσετε το προσωπικό σας QRCode (το URL θα πρέπει να δείχνει στον προσωπικό Github λογαριασμό σας). Δημιουργήστε το κατάλληλο πρόγραμμα, προσαρμόζοντας το παράδειγμα, ώστε αρχικά να εμφανίζει την εικόνα με το QRCode (δες Κεφάλαιο 15 από το βιβλίο Learning Processing, 2nd Edition για τον τρόπο εμφάνισης εικόνων) και στη συνέχεια όταν αναγνωρίζεται το QRCode να ανοίγει το URL που είναι αποθηκευμένο σε αυτό σε μια νέα ιστοσελίδα.__

Για την εγκατάσταση της βιβλιοθήκης ανοίγουμε νέο sketch, κάνουμε κλικ στο Java->Add Mode->Libraries και πληκτρολογούμε το όνομα της βιβλιοθήκης. Έπειτα πατάμε “install” και μόλις εγκατασταθεί η βιβλιοθήκη, κλείνουμε το πρόγραμμα και το ξανα-ανοίγουμε.

Επόμενο βήμα αποτελεί η δημιουργία του προσωπικού μας QR Code. Επισκεπτόμαστε το σύνδεσμο https://qrcode.kaywa.com/, αντιγράφουμε το url της σελίδας του προφίλ μας, και διαλέγουμε την επιλογή “static” QR Code. Τέλος κατεβάζουμε την εικόνα του προσωπικού μας QR Code στον υπολογιστή και την προσθέτουμε στον φάκελο “Data” του sketch, όπως αναφέρθηκε και στην απάντηση του Υποερωτήματος 2. 

Ανοίγουμε ένα νέο sketch και κάνουμε κλικ στο File->Examples->Contributed Libraries->QRCode, και επιλέγουμε το QRCodeExample.  Παρατηρούμε ότι το παράδειγμα εισάγει εξίσου τη βιβλιοθήκη, η οποία ευθύνεται για τη διαχείριση εικόνων και βίντεο. Η βιβλιοθήκη ονομάζεται “Video Library for Processing 3” και ο τρόπος εισαγωγής αυτής στον κώδικα γίνεται διακριτός στην παρακάτω εικόνα.

![image](https://user-images.githubusercontent.com/115811465/199961195-c9762249-b5e0-4369-b17e-6ba7fa990176.png)

Προκειμένου να εμφανίσουμε την εικόνα του QRCode χρειάζεται να συνδυάσουμε το παράδειγμα 15.1. του βιβλίου “Learning Processing A Beginner’s Guide to Programming Images, Animation, and Interaction” με το QRCode Example, εφαρμόζοντας επίσης μερικές αλλαγές στον κώδικα. 

Στον κώδικα του QRCode Example πρόσθεσα τον κώδικα για την εμφάνιση εικόνων του παραδείγματος 15.1. του βιβλίου. Συγκεκριμένα, οι προσθήκες μπορούν να διακριθούν στις γραμμές 17, 30 και 50.
Επειδή το Υποερώτημα 3 δεν κάνει χρήση της κάμερας, μετέτρεψα σε σχόλιο τις γραμμές 28, 29, 43, 44 και 45 και 53.
Ακόμα, πρόσθεσα τις γραμμές κώδικα 39, 40 και 64, σύμφωνα με το tutorial του QR Code με σύνδεσμο https://shiffman.net/p5/qrcode-processing/

Τέλος, πατώντας το run, παρατηρούμε το προσωπικό μας QRCode που εμφανίζεται στην οθόνη. Χρησιμοποιώντας μια εφαρμογή σαρωτή (scanner) στο κινητό, σκανάρουμε το QRCode, και εμφανίζεται το link με τον σύνδεσμο για το προφίλ μας στο GitHub.

(όλες  οι αλλαγές του QRCode Example διακρίνονται στις παρακάτω φωτογραφίες)

![image](https://user-images.githubusercontent.com/115811465/199961597-1f2ec998-1f90-4626-a4b0-7762d9cdfb6e.png)

![image](https://user-images.githubusercontent.com/115811465/199961631-8dbcf42f-7ff1-491e-8f6a-43000ceeee54.png)

![image](https://user-images.githubusercontent.com/115811465/199961668-7695f9a5-79df-4666-a3db-089c0424337c.png)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

__Υποερώτημα 4: QR Code - Camera Read:
Μελετήστε το έτοιμο παράδειγμα QRCodeExample που βρίσκεται μέσα στη βιβλιοθήκη, που κατεβάσατε, και προσαρμόστε το κατάλληλα ώστε όταν η κάμερα διαβάζει το προσωπικό σας QRCode να ανοίγει το URL που είναι αποθηκευμένο σε αυτό σε μια νέα ιστοσελίδα.__

Τρέχοντας το QRCode Example χωρίς καμία αλλαγή εμφανίζεται το εξής error:
"java.lang.ArrayIndexOutOfBoundsException: 100", οπότε εγραψα στο google search το error αυτό καθ' αυτό και επισκέφτηκα την ιστοσελίδα:
https://www.ibm.com/support/pages/javalangarrayindexoutofboundsexception-array-index-out-range-100-%C2%A0-translation-report-sci88730 που λέει ότι πρέπει να αυξήσω το index κάποιου Array, (Resolving The Problem Change the index to accommodate highest possible number of occurrences.)

Στη συνέχεια έγραψα στο google search "how to change index in processing" και με οδήγησε σε ιστοσελίδες της 
processing που αναφέρονται στα Arrays: "https://processing.org/tutorials/arrays" και "https://processing.org/examples/array.html".

Ένα επιπλέον error που εμφανίζει το πρόγραμμα είναι το "error invalid number of finder pattern detected in processing", το οποίο το πληκτρολόγησα στο google search και οδηγήθηκα στις ιστοσελίδες "https://discourse.processing.org/t/webcam-bar-code-qr-code-read/2911" και "codeproject.com/Articles/20574/Open-Source-QRCode-Library?msg=3745511#xx3745511xx".

Στην πρώτη ιστοσελίδα συνειδητοποίησα ότι πρέπει να κατεβάσω extra βιβλιοθήκη, την "Zxing for processing" σύμφωνα με το παρακάτω σχόλιο ενός χρήστη:
	The code that you show looks good; Daniel and Tom are great programmers.
	You probably need to check your configuration, and set the right environment.
	All that you need are the libraries:
	Use this for ZXING:	https://repo1.maven.org/maven2/com/google/zxing/core/3.3.2/ 103
	You can use the processing’s “add library tool”
	QRCode
	VIDEO
	Zxing for processing
Προσπάθησα να κατεβάσω την βιβλιοθήκη από το "Add Mode" του Sketch και δεν την βρήκα πουθενά, μετά ακολούθησα το link που βρίσκεται
στο σχόλιο του χρήστη παραπάνω "https://repo1.maven.org/maven2/com/google/zxing/core/3.3.2/ 103" και πάλι δεν έβγαλα άκρη.

Μετά έγραψα στο google search "download Zxing Library for processing" και οδηγήθηκα στην εξής ιστοσελίδα "https://sourceforge.net/projects/zxing.mirror/"
και κατέβασα την Zxing. Έπειτα τοποθέτησα τη νέα βιβλιοθήκη στον φάκελο libraries της Processing, παρ' όλα αυτά όταν ανοίγω νέο sketch δεν μου την εμφανίζει.

Ένα extra error που μου εμφανίζει αποτελεί το "IllegalStateException: Could not find any devices", το οποίο τo γράφω στο google search και επισκέφτομαι την εξής ιστοσελίδα:"https://discourse.processing.org/t/processing-cant-find-the-camera-video-libraries-dont-work/25128/11"
Σύμφωνα με σχόλιο ενός χρήστη δοκιμάζω να αλλάξω στην void setup() {} τη γραμμή κώδικα
"video = new Capture(this,320,240);" σε "video = new Capture(this,"pipeline:autovideosrc");", όπως φαίνεται και στη παρακάτω εικόνα.

![Στιγμιότυπο οθόνης (365)](https://user-images.githubusercontent.com/115811465/199965659-32941bf5-c959-47d3-bbaa-a466ad2d7156.png)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

__Υποερώτημα 5: Augmented Reality__
Κατεβάζω την εικόνα του Hiro στο laptop μου και την προσθέτω στο φάκελο data του SimpleLite. 
Ακόμα προσθέτω μια εικόνα της επιλογής μου γιατί τη χρειάζομαι σε επόμενο βήμα του υποερωτήματος.


____Δοκιμή επίλυσης error: "NullPointerException Could not run the sketch 
(Target VM failed to initialize). For more information, read revisions.txt and Help ? Troubleshooting."____
Αρχικά τρέχω το παράδειγμα Simple Lite χωρίς καμία αλλαγή, προκειμένου να δω πως λειτουργεί. Αμέσως μου εμφανίζει το παρακάτω error: 
"NullPointerException
Could not run the sketch (Target VM failed to initialize).
For more information, read revisions.txt and Help ? Troubleshooting." οπότε
γράφω στο google search το όνομα του error και επισκέφτομαι τις εξής ιστοσελίδες:
https://forum.processing.org/two/discussion/8071/why-do-i-get-a-nullpointerexception.html και
https://discourse.processing.org/t/troubleshooting-global-null-pointer-exception/28437

Επισκέφτηκα το youtube για πιο παραστατικές πληροφορίες και είδα το βίντεο με σύνδεσμο 
"https://www.youtube.com/watch?v=EIDOQS6x0OQ&list=TLPQMDIxMTIwMjKFUI5FvKxr-g&index=12", το οποίο
αναφερόταν στο παραπάνω error. Στο βίντεο αναφέρεται πως το keyword "null" ορίζει κάποια μεταβλητή 
ως κενή. Συνεπώς, το πρόγραμμα διακόπτεται, επειδή κάποια μεταβλητή έχει οριστεί ως κενή (null) εμποδίζοντας,
κατ' αυτό το τρόπο την πραγματοποίηση ενός action που θέλουμε να κάνει το πρόγραμμα.


__Δοκιμή επίλυσης error: "IllegalStateException: Could not find any devices"__
Μου εμφανίζει επίσης το εξής error: "IllegalStateException: Could not find any devices", το οποίο σχετίζεται με τη κάμερα. 
To γράφω στο google search και επισκέφτομαι την εξής ιστοσελίδα:
"https://discourse.processing.org/t/processing-cant-find-the-camera-video-libraries-dont-work/25128/11"
Σύμφωνα με σχόλιο ενός χρήστη δοκιμάζω να αλλάξω στην void setup() {}, τη γραμμή 
κώδικα "cam=new Capture(this,640,480);" σε "cam=new Capture(this,"pipeline:autovideosrc");






# 2nd Deliverable


# 3rd Deliverable 


# Bonus 


# Conclusions


# Sources
