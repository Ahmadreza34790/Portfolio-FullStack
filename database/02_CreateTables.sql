USE MyPortofolioDb;
create table dbo.User(
    Id int identity(1,1) primary key,
    FirsName nvarchar(100) not null,
    LastName nvarchar(100) not null,
    Username nvarchar(100) not null,
    Email nvarchar(100) not null,
    HashedPassword nvarchar(100) not null,
    PhoneNumber nvarchar(100),
    MyAddress nvarchar(100),
    BIO nvarchar(100),
    Role nvarchar(100) ,
    CreatedAt Datetime not null,
);
create table dbo.Categories(
    Id int identity(1,1) primary key,
    Title nvarchar(100) not null,
    CreatedAt Datetime not null,
);
create table dbo.Skills(
    Id int identity(1,1) primary key,
    SkillName nvarchar(100) not null,
    Progress int not null,
    CategoryId int not null,
    CreatedAt Datetime not null,
);
create table dbo.Projects(
    Id int identity(1,1) primary key,
    ProjectName nvarchar(100) not null,
    Demo nvarchar(100) not null,
    Category nvarchar(100) not null,
    Description nvarchar(100) not null,
    CreatedAt Datetime not null,
);
create table dbo.Contacts(
    Id int identity(1,1) primary key,
    ContactName nvarchar(100) not null,
    Email nvarchar(100) not null,
    Subject nvarchar(100) not null,
    Message nvarchar(100) not null,
    CreatedAt Datetime not null,
);