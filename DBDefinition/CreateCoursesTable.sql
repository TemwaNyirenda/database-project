CREATE TABLE [dbo].[Courses](
    CourseID [int] IDENTITY(1,1) NOT NULL,
    CourseName [VARCHAR](100) NOT NULL,
    InstituteID [int] NOT NULL,
    CONSTRAINT [FK_Courses.InstituteID]
        FOREIGN KEY ([InstituteID]) 
            REFERENCES [Institute_Info] ([InstituteID])
    CONSTRAINT [PK_CourseID] PRIMARY KEY CLUSTERED([CourseID])
);
