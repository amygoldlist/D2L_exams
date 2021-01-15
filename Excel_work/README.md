# Method: Excel / Word / Respondus

## Introduction to multipart questions (Simple Example)
#### This tutorial was created by Leslie Major, BCIT.

All of the files from this tutorial are [here](Simple_Example_files)!
NOTE:  This method has a maximum of 10 blanks.


[![Multipart Question](https://img.youtube.com/vi/e19haaoBHiI?list=PL9WNU1gz8faS1hFuqNIuEEnT794ihTWaf)](https://youtu.be/e19haaoBHiI?list=PL9WNU1gz8faS1hFuqNIuEEnT794ihTWaf "Multipart Question")

_The above link will take you to a YouTube Playlist illustrating this example_

## Hypothesis test - a more challenging version

All of the files from this tutorial are [here](Hypothesis_test_files)

### Challenge:

We would like to be able to create multi-part, complicated problems for our students to solve, and have many versions, to prevent cheating.

### A Typical Stats Problem:

“Telus claims that the average cell phone expense for a Telus customer is $68 per month.  Olivia feels that average monthly cell phone expenses are higher than $68 per month.  Olivia conducts a random sample of 34 Telus customers found that the average monthly cell expense was $76 with a standard deviation of $25.

Based on the above sample data, is there enough evidence to conclude that the cell phone expense is greater than $68? Test the hypothesis at the 5% level of significance.”

### Problem types in D2L Brightspace

Unfortunately, D2L doesn’t support multi-part questions under the NUMERIC or MULTIPLE CHOICE types.  So we are left with Fill-in-the-blanks, which works well.

Moving the Hypothesis test Question to a fill in the blank was the work of the Business Math group at BCIT, but there are multiple methods:

### FILL IN THE BLANKS
We will be using the Respondus tool to take a Word file into a D2L.  Start your file with the Type and Points, and for any blank use [answer 1, answer 2, answer 3].  For maximum autograding, you should put in any answer you will accept in the square brackets.  For freehand answers, like the Decision Rule below, you will most likely need to review the grades yourself.



>**Type: FMB**
>**Points: 12**
>
>1.Telus claims that the average cell phone expense for a Telus customer is $68 per month.  Olivia feels that average monthly cell phone expenses are higher than $68 per month.  Olivia conducts a random sample of 34 Telus customers and finds that the average monthly cell expense was $76 with a standard deviation of $25.
>
>Based on the above sample data, is there enough evidence to conclude that the cell phone expense is greater than $68? Test the hypothesis at the 5% level of significance.   
>
>**HYPOTHESES**
>
>What are the null and alternative hypotheses?  
>Enter the *LETTER* of the correct answer
>
>A.	H0: μ = $68;  HA: μ ≠ $68
>
>B.	H0: μ = $68;  HA: μ < $68 (μ is less than $68)
>
>C.	H0: μ = $68;  HA: μ > $68 (μ is more than $68)
>
>D.	H0: μ = $76;  HA: μ ≠ $76  
>
>E.	H0: μ = $76;  HA: μ > $76 (μ is more than $76)
>
>F. 	H0: μ = $76; HA: μ < $76 (μ is less than $76)
>
>ANSWER: [C, c]
>
>**HYPOTHESIS TEST**
>
>Critical Value (3 decimal places):  [1.692]
>
>Decision Rule (3 decimal places):  [Reject if T-test > 1.692]
>
>Test Statistic (3 decimal places): [1.866]
>
>**DECISION AND CONCLUSION**
>
>Decision: [Reject H0]
>
>Conclusion.   Enter the LETTER of the correct answer
>
>A.	Yes, there is enough evidence to conclude that the average cell phone bill is higher than Telus claims.
>
>B.	No, there is not enough evidence to conclude the average conclude the average cell phone bill is higher than Telus claims.
>
>ANSWER: [A, a]


### And...
This gives an easy-to-grade, step by step solving of the problem.

Excel to generate random versions
Now, in this method I’m going to create 25 versions of this question using Excel.  I’ll then get this back into Word with a simple mail merge.  
At this point, you should follow along with the Excel file [hypothesis_test_excel.xlsx]("Hypothesis_test_files/hypothesis_test_excel").  You don’t need to be an Excel Wiz, but you will need to do some random number generation, using `=RAND()` or `=RANDBETWEEN()`.  I have some demos of this at https://github.com/amygoldlist/Excel_fun, so feel free to explore randomization in Excel.

Basically, `=RAND()` creates a real number between 0 and 1, and `=RANDBETWEEN(a,b)` generates a random integer between the end points (inclusive).  For example, to simulate rolling a die, use `=RANDBETWEEN(1, 6)`.  

For this question, I generated the following variables using Excel:

|              |     min    |     max    |     decimal places    |     RANDOM                  |     Description                     |
|--------------|------------|------------|-----------------------|-----------------------------|-------------------------------------|
|     mu       |     65     |     100    |     0                 |     =RANDBETWEEN(65,100)    |     Hypothesized mean (μ)           |
|     delta    |     2      |     15     |     0                 |     =RANDBETWEEN(2,15)      |     Difference between means (δ)    |
|     n        |     31     |     49     |     0                 |     =RANDBETWEEN(31,49)     |     sample size                     |
|     s        |     10     |     25     |     0                 |     =RANDBETWEEN(10,25)     |     sample standard deviation       |

I also pulled some variables from a list.  The alpha (α) or significance level is chosen to appear on a standard lookup table, and I created some cell phone carriers and names.  Changing nouns and names makes it harder for students to accurately find the question should it appear on a cheating site:  (I’ve hidden some rows below):

|     G     |     H         |     I                                                  |     J                                                  |     K                                                  |
|-----------|---------------|--------------------------------------------------------|--------------------------------------------------------|--------------------------------------------------------|
|     3     |               |     Company                                            |     Alpha                                              |     Name                                               |
|     4     |     1         |     Telus                                              |     1                                                  |     Olivia                                             |
|     5     |     2         |     Shaw                                               |     2                                                  |     Ibrahim                                            |
|     6     |     3         |     Rogers                                             |     5                                                  |     Mohammad                                           |
|     7     |     4         |     Freedom                                            |     10                                                 |     Ivana                                              |
|     8     |     5         |     Koodo                                              |                                                        |     Lucas                                              |
|     9     |     6         |     Primus                                             |                                                        |     Joaquin                                            |
|     10    |     7         |     Bell                                               |                                                        |     Mason                                              |
|     11    |     8         |     Virgin Mobile                                      |                                                        |     Benjamin                                           |
|     12    |     9         |     SaskTel                                            |                                                        |     Sophia                                             |
|     13    |     10        |     Fizz                                               |                                                        |     Loki                                               |
|     14    |     11        |     Lucky                                              |                                                        |     Emily                                              |
|     15    |     12        |     Solo                                               |                                                        |     Jagmit                                             |
|     16    |     13        |                                                        |                                                        |     Kesler                                             |
|     28    |     25        |                                                        |                                                        |     Jayden                                             |
|     29    |     RANDOM    |     `=VLOOKUP(RANDBETWEEN(1,12),$H$4:$K$28,2, FALSE)`    |     `=VLOOKUP(RANDBETWEEN(1,4),$H$4:$K$28,3, FALSE)`    |     `=VLOOKUP(RANDBETWEEN(1,25),$H$4:$K$28,4, FALSE)`   |

If you have access to the latest version of Excel (or 365 edition), check out the new function `XLOOKUP()` which uses the `LOOKUP()` Syntax in a truly awesome way.  It’s much nicer than `VLOOKUP()` in my humble opinion.

### A table
For Mail Merges, I find it easier to have a table with all of the random variables and answers.  Here’s an example:  Some of these values are random, and some are calculated (ie, x-bar = mu + delta), and some use If Statements.  Go to the file and look!

|     Row_Num    |     Company    |     Name     |     mu    |     delta    |     x-bar    |     n     |     s     |     alpha    |     t-crit    |     t-crit_display    |     t-test    |     t-test_display    |     Decision          |     Conclusion    |
|----------------|----------------|--------------|-----------|--------------|--------------|-----------|-----------|--------------|---------------|-----------------------|---------------|-----------------------|-----------------------|-------------------|
|     1          |     Lucky      |     Ryan     |     83    |     14       |     97       |     46    |     17    |     10       |     1.301     |     1.301             |     5.585     |     5.585             |     Reject H_0        |     A, a          |
|     2          |     SaskTel    |     James    |     69    |     2        |     71       |     33    |     23    |     5        |     1.694     |     1.694             |     0.5       |     .5                |     Fail to Reject    |     B, b          |

### Mail Merge
Mail merges have been around for ever, but they still work amazingly well.  To set up, we start a new document, “Hypothesis_Mail_Merge.docx”.  If you are a Mail Merge expert, skip ahead!  If not, here’s the basics.  
*	Type your basic question
*	Navigate to the tab “MAILINGS → Select Recipients → Use an Existing List”.  
*	(If you are new, the Mail Merge Wizard under “Start Mail Merge” will walk you through the basics.)

![Screen Grab of Mail Merge](images/hypoth_img_1.png#center)

*	Find the Excel sheet we used before, and make sure you get navigate to the correct worksheet where your table is.  I try to always use the word MERGE in a table destined for a merge.  Excel tries to steer you into the Data sources file.

![Screen Grab of Mail Merge](images/hypoth_img_2.png#center#)

Now we’re at the fun part!  Just highlight the word you’d like to change, and use “INSERT MERGE FIELD” from the mailings menu to put in:

![Screen Grab of Mail Merge](images/hypoth_img_3.png#center)

When you are done, it should look like this:

![Screen Grab of Completed Mail Merge](images/hypoth_img_4.png#center)

To see what your versions will look at, clock “Preview Results” in the top menu.  Fix any mistakes!

When you are satisfied, go to “Finish & Merge→ Edit Individual documents” and save as a Word file with a different name.

### REVIEW
Important!  Look at your copies, and make sure there are no nonsense answers.  You can just delete these and make a note to pick your random numbers better next time.  This is the document that we will feed into Respondus.


### Respondus
If you have access to a D2L Brightspace, you probably have access to the Respondus tool.  At BCIT, you can download [here](https://ltc.bcit.ca/help/for-instructors-respondus-information/), but your own institute should have a site license.

Install this, following the directions, selecting “D2L Brightspace” as your LMS.  There are online conversion tools that will do this as well, but I am wary of uploading my test questions...  This keeps the files local.

Here is a quick demo of Respondus, with handy pictures:

•	Select “Import Questions”

![Screen Grab of Respondus](images/hypoth_img_5.png#center)

Make sure you select “Microsoft Word 2007 (DOCX)”, and find your merged file.  If you’ve used images (difficulty: advanced!) you’d put those in individually.
*Note: If you are using images, consider using text, instead of doc, and creating html links to images.  Have an example?  Please share!*

If this is your first question, create a new exam.

I like to make my naming super fancy, so my new questions all have a common name. Hit preview to make sure there are no errors:

![Screen Grab of Respondus](images/hypoth_img_6.png#center)

Now you can add more question, or go straight to “Preview and Publish”.  I usually set my settings on D2L, but you can do some of that here.  Preview your test, though it won’t look exactly like this on D2L:

![Screen Grab of Respondus](images/hypoth_img_8.png#center)

You can make changes here if you’d like, but now I will hit “Publish”.  I prefer not to mess with automatic upload to Brightspace, so I usually just “Export QTI XML for manual upload to brightspace”.  I am going to save this as a question library, and I give it a name under “Save As”

![Screen Grab of Respondus](images/hypoth_img_9.png#center)

Now I should have a zipped folder called “Hypothesis_Test_QPool.zip”, and a matching text file with import instructions.  We’re almost there!


### Importing into your course
Go to your course site, and under “edit course” select “Copy / Export / Import”.  Select “Import Course Material → from a file”, hit “Next”, and drag your zipped file into the box.  I suggest not using the “Advanced Menu” unless you have strong feelings about file structure.


![Screen Grab of Brightspace](images/hypoth_img_10.png#center)

You’re done!  Create a new Test, add in a question pool, and select one of the 25 questions!

![Screen Grab of Respondus](images/hypoth_img_11.png#center)

Let’s look at one of those questions:

![Screen Grab of Respondus](images/hypoth_img_12.png#center)

### Bonus:
Oops!  I forgot one name in my mail merge!  Who is Olivia?

![Screen Grab of Respondus](images/hypoth_img_13.png#center)

This is where having good automation helps:  I can go back to my Word doc, make the fix, and rerun in Respondus.  I will delete or overwrite the questions I already made, and I don’t have to fix 25 copies.
