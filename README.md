# D2L_exams
Some demos of creating dynamic exams for D2L Brightspace, using R/exams as well as Excel.

D2L Brightspace (we call it the Learning Hub) makes giving online tests run very smoothly.  However, their numeric question types are limited to basic arithmatic, and only have single answer (not multi-part) questions.  

My group over at BCIT is working on making math exams work better for us - dynamic and algortithmic questions dealing with Statistics, as well as multiple choice questions that can be different for each student.

### R-exams:  

[R/exams](http://www.r-exams.org/),  makes creating dynamic exams much more fun.  Since there doesn't seem to be a lot of information online about how to use this for [D2L Brightspace](https://www.d2l.com), I thought that I would record my attempts to make this work.

First, there is no  `exams2d2l()` command, but luckily, the command `exams2blackboard()` creates a file that imports properly into D2L.  This makes sense, as both blackboard and D2L are based on the same QTI1.2 format.

More to come here....


### Excel
Honestly, Excel is the tool that everyone uses, so if we want a method that can be used widely, Excel is a good choice.  It's possible to upload CSV files to D2L, so the challenge is to create easy-to-use Excel templates that contain a sheet which the user can save as csv and upload.  

Also more to come....


## References
* R/exams [First Steps](http://www.r-exams.org/tutorials/first_steps/)
* `exams2blackboard()`[Tutorial](http://www.r-exams.org/tutorials/exams2blackboard/)
* R/exams documentation on [CRAN](https://cran.r-project.org/web/packages/exams/exams.pdf)
* A great support thread on [R-forge](https://r-forge.r-project.org/forum/forum.php?thread_id=33404&forum_id=4377&group_id=1337)
* BCIT has some good [resources](https://ltc.bcit.ca/help/sample-word-file-to-import-quiz-questions/)
* Algonquin College has a great [online quiz generator](https://plato.algonquincollege.com/BrightspaceQuizGenerator/) which gave us the correct CSV formats for the Excel tool.
