# D2L_exams
Some demos of creating dynamic exams for D2L Brightspace, using R/exams

[R/exams](http://www.r-exams.org/),  makes creating dynamic exams much more fun.  Since there doesn't seem to be a lot of information online about how to use this for [D2L Brightspace](https://www.d2l.com), I thought that I would record my attempts to make this work.

First, there is no  `exams2d2l()` command, but luckily, the command `exams2blackboard()` creates a file that imports properly into D2L.  This makes sense, as both blackboard and D2L are based on the same QTI1.2 format.

## References
* R/exams [First Steps](http://www.r-exams.org/tutorials/first_steps/)
* `exams2blackboard()`[Tutorial](http://www.r-exams.org/tutorials/exams2blackboard/)
* R/exams documentation on [CRAN](https://cran.r-project.org/web/packages/exams/exams.pdf)
* A great support thread on [R-forge](https://r-forge.r-project.org/forum/forum.php?thread_id=33404&forum_id=4377&group_id=1337)
