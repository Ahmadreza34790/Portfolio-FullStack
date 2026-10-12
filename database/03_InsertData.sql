INSERT INTO dbo.Categories (Title)
VALUES
    ('Front'),
    ('Back');

INSERT INTO dbo.Skills (SkillName, Progress, CategoryId)
VALUES
    ('HTML', 90, 1),
    ('CSS', 85, 1),
    ('JavaScript', 70, 1),
    ('C#', 70, 2);

INSERT INTO dbo.Projects
    (ProjectName, Demo, CategoryId, Description)
VALUES
    (
        'Portfolio Website',
        'https://example.com/portfolio',
        1,
        'Personal portfolio built with HTML, CSS and JavaScript'
    ),
    (
        'Authentication API',
        'https://example.com/auth-api',
        2,
        'ASP.NET Core API for user authentication'
    ),
    (
        'React Dashboard',
        'https://example.com/dashboard',
        1,
        'Dashboard interface built with React'
    );

INSERT INTO dbo.Contacts
    (ContactName, Email, Subject, Message)
VALUES
    (
        'Ali Ahmadi',
        'ali@example.com',
        'Project Inquiry',
        'I would like to know more about your portfolio project.'
    ),
    (
        'Sara Mohammadi',
        'sara@example.com',
        'Job Opportunity',
        'I am contacting you about a software developer position.'
    );