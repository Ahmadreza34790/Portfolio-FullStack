USE MyPortofolioDb;
create table dbo.Users(
    Id int identity(1,1) primary key,
    FirstName nvarchar(100) not null,
    LastName nvarchar(100) not null,
    Username nvarchar(100) not null unique,
    Email nvarchar(100) not null unique,
    HashedPassword nvarchar(255) not null,
    PhoneNumber nvarchar(100),
    MyAddress nvarchar(100),
    BIO nvarchar(100),
    Role nvarchar(100) not null DEFAULT 'User' ,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);
create table dbo.Categories(
    Id int identity(1,1) primary key,
    Title nvarchar(100) not null,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
);
create table dbo.Skills(
    Id int identity(1,1) primary key,
    SkillName nvarchar(100) not null,
    Progress int not null,
    CategoryId int not null,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT CK_Skills_Progress
    CHECK (Progress >= 0 AND Progress <= 100),
    CONSTRAINT FK_Skills_Categories
    FOREIGN KEY (CategoryId)
    REFERENCES dbo.Categories(Id)
);
create table dbo.Projects(
    Id int identity(1,1) primary key,
    ProjectName nvarchar(100) not null,
    Demo nvarchar(100) not null,
    CategoryId int not null,
    Description nvarchar(1000) not null,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Projects_Categories
    FOREIGN KEY (CategoryId)
    REFERENCES dbo.Categories(Id)
);
create table dbo.Contacts(
    Id int identity(1,1) primary key,
    ContactName nvarchar(100) not null,
    Email nvarchar(100) not null,
    Subject nvarchar(1000) not null,
    Message nvarchar(1000) not null,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE()

);