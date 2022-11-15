USE [19ip119]
GO
/****** Object:  User [YXMT\Преподаватели ЯПЭК]    Script Date: 14.11.2022 16:39:28 ******/
CREATE USER [YXMT\Преподаватели ЯПЭК] FOR LOGIN [YXMT\Преподаватели ЯПЭК]
GO
ALTER ROLE [db_datareader] ADD MEMBER [YXMT\Преподаватели ЯПЭК]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [YXMT\Преподаватели ЯПЭК]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[Код_авторизации] [int] NOT NULL,
	[Логин] [nvarchar](max) NULL,
	[Пароль] [nvarchar](max) NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[Код_авторизации] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Вид_изделия]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Вид_изделия](
	[Код_вида_изделия] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Вид_изделия] PRIMARY KEY CLUSTERED 
(
	[Код_вида_изделия] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договор_заказчик]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договор_заказчик](
	[Код_договора_заказчик] [int] NOT NULL,
	[Код_услуги] [int] NOT NULL,
	[Код_заказчика] [int] NOT NULL,
	[Код_работника] [int] NOT NULL,
	[Дата_заключения] [date] NULL,
	[Дата_время_проведения] [datetime] NULL,
	[Код_менеджера] [int] NOT NULL,
	[Код_усопшего] [int] NOT NULL,
	[Сумма] [money] NULL,
	[Оплата] [bit] NULL,
 CONSTRAINT [PK_Договор_заказчик] PRIMARY KEY CLUSTERED 
(
	[Код_договора_заказчик] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договор_поставщика]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договор_поставщика](
	[Код_договора_поставщика] [int] NOT NULL,
	[Код_изделия] [int] NOT NULL,
	[Код_поставщика] [int] NOT NULL,
	[Дата_заключения] [date] NULL,
	[Дата_доставки] [date] NULL,
	[Код_менеджера] [int] NOT NULL,
	[Сумма] [money] NULL,
	[Оплата] [bit] NULL,
 CONSTRAINT [PK_Договор_поставщика] PRIMARY KEY CLUSTERED 
(
	[Код_договора_поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказчик]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказчик](
	[Код_заказчика] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[E-mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Заказчик] PRIMARY KEY CLUSTERED 
(
	[Код_заказчика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Изделие]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Изделие](
	[Код_изделия] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
	[Код_вида_изделия] [int] NOT NULL,
	[Код_материала] [int] NOT NULL,
	[Эскиз] [image] NULL,
	[Цена] [money] NOT NULL,
	[Количество] [int] NULL,
	[Артикул] [nvarchar](50) NULL,
 CONSTRAINT [PK_Изделие] PRIMARY KEY CLUSTERED 
(
	[Код_изделия] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Материал]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Материал](
	[Код_материала] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Материал] PRIMARY KEY CLUSTERED 
(
	[Код_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Направления]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Направления](
	[Код_направления] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Направления] PRIMARY KEY CLUSTERED 
(
	[Код_направления] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщики]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщики](
	[Код_поставщика] [int] NOT NULL,
	[Наименование_организации] [nvarchar](50) NOT NULL,
	[Представитель] [nvarchar](max) NOT NULL,
	[Реквизиты_организации] [nvarchar](max) NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[E_mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Поставщики] PRIMARY KEY CLUSTERED 
(
	[Код_поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работники]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работники](
	[Код_работника] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[E_mail] [nvarchar](50) NULL,
	[Код_направления] [int] NOT NULL,
	[Код_авторизации] [int] NULL,
 CONSTRAINT [PK_Работники] PRIMARY KEY CLUSTERED 
(
	[Код_работника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[Код_услуги] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Длительность] [time](7) NULL,
	[Цена] [money] NOT NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[Код_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги_договор]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги_договор](
	[Код_услуга_договор] [int] NOT NULL,
	[Код_договора_заказчик] [int] NOT NULL,
	[Код_услуги] [int] NOT NULL,
 CONSTRAINT [PK_Услуги_договор] PRIMARY KEY CLUSTERED 
(
	[Код_услуга_договор] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Усопший]    Script Date: 14.11.2022 16:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Усопший](
	[Код_усопшего] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_смерти] [date] NOT NULL,
	[Время_смерти] [time](7) NULL,
	[Дата_рождения] [date] NULL,
	[Вид] [nvarchar](50) NOT NULL,
	[Фото] [int] NULL,
 CONSTRAINT [PK_Усопший] PRIMARY KEY CLUSTERED 
(
	[Код_усопшего] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Договор_заказчик]  WITH CHECK ADD  CONSTRAINT [FK_Договор_заказчик_Заказчик] FOREIGN KEY([Код_заказчика])
REFERENCES [dbo].[Заказчик] ([Код_заказчика])
GO
ALTER TABLE [dbo].[Договор_заказчик] CHECK CONSTRAINT [FK_Договор_заказчик_Заказчик]
GO
ALTER TABLE [dbo].[Договор_заказчик]  WITH CHECK ADD  CONSTRAINT [FK_Договор_заказчик_Менеджер] FOREIGN KEY([Код_менеджера])
REFERENCES [dbo].[Менеджер] ([Код_менеджера])
GO
ALTER TABLE [dbo].[Договор_заказчик] CHECK CONSTRAINT [FK_Договор_заказчик_Менеджер]
GO
ALTER TABLE [dbo].[Договор_заказчик]  WITH CHECK ADD  CONSTRAINT [FK_Договор_заказчик_Работники] FOREIGN KEY([Код_работника])
REFERENCES [dbo].[Работники] ([Код_работника])
GO
ALTER TABLE [dbo].[Договор_заказчик] CHECK CONSTRAINT [FK_Договор_заказчик_Работники]
GO
ALTER TABLE [dbo].[Договор_заказчик]  WITH CHECK ADD  CONSTRAINT [FK_Договор_заказчик_Работники1] FOREIGN KEY([Код_менеджера])
REFERENCES [dbo].[Работники] ([Код_работника])
GO
ALTER TABLE [dbo].[Договор_заказчик] CHECK CONSTRAINT [FK_Договор_заказчик_Работники1]
GO
ALTER TABLE [dbo].[Договор_заказчик]  WITH CHECK ADD  CONSTRAINT [FK_Договор_заказчик_Усопший] FOREIGN KEY([Код_усопшего])
REFERENCES [dbo].[Усопший] ([Код_усопшего])
GO
ALTER TABLE [dbo].[Договор_заказчик] CHECK CONSTRAINT [FK_Договор_заказчик_Усопший]
GO
ALTER TABLE [dbo].[Договор_поставщика]  WITH CHECK ADD  CONSTRAINT [FK_Договор_поставщика_Изделие] FOREIGN KEY([Код_изделия])
REFERENCES [dbo].[Изделие] ([Код_изделия])
GO
ALTER TABLE [dbo].[Договор_поставщика] CHECK CONSTRAINT [FK_Договор_поставщика_Изделие]
GO
ALTER TABLE [dbo].[Договор_поставщика]  WITH CHECK ADD  CONSTRAINT [FK_Договор_поставщика_Поставщики] FOREIGN KEY([Код_поставщика])
REFERENCES [dbo].[Поставщики] ([Код_поставщика])
GO
ALTER TABLE [dbo].[Договор_поставщика] CHECK CONSTRAINT [FK_Договор_поставщика_Поставщики]
GO
ALTER TABLE [dbo].[Договор_поставщика]  WITH CHECK ADD  CONSTRAINT [FK_Договор_поставщика_Работники] FOREIGN KEY([Код_менеджера])
REFERENCES [dbo].[Работники] ([Код_работника])
GO
ALTER TABLE [dbo].[Договор_поставщика] CHECK CONSTRAINT [FK_Договор_поставщика_Работники]
GO
ALTER TABLE [dbo].[Изделие]  WITH CHECK ADD  CONSTRAINT [FK_Изделие_Вид_изделия] FOREIGN KEY([Код_вида_изделия])
REFERENCES [dbo].[Вид_изделия] ([Код_вида_изделия])
GO
ALTER TABLE [dbo].[Изделие] CHECK CONSTRAINT [FK_Изделие_Вид_изделия]
GO
ALTER TABLE [dbo].[Изделие]  WITH CHECK ADD  CONSTRAINT [FK_Изделие_Материал] FOREIGN KEY([Код_материала])
REFERENCES [dbo].[Материал] ([Код_материала])
GO
ALTER TABLE [dbo].[Изделие] CHECK CONSTRAINT [FK_Изделие_Материал]
GO
ALTER TABLE [dbo].[Работники]  WITH CHECK ADD  CONSTRAINT [FK_Работники_Авторизация] FOREIGN KEY([Код_авторизации])
REFERENCES [dbo].[Авторизация] ([Код_авторизации])
GO
ALTER TABLE [dbo].[Работники] CHECK CONSTRAINT [FK_Работники_Авторизация]
GO
ALTER TABLE [dbo].[Работники]  WITH CHECK ADD  CONSTRAINT [FK_Работники_Направления] FOREIGN KEY([Код_направления])
REFERENCES [dbo].[Направления] ([Код_направления])
GO
ALTER TABLE [dbo].[Работники] CHECK CONSTRAINT [FK_Работники_Направления]
GO
ALTER TABLE [dbo].[Услуги_договор]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_договор_Договор_заказчик] FOREIGN KEY([Код_договора_заказчик])
REFERENCES [dbo].[Договор_заказчик] ([Код_договора_заказчик])
GO
ALTER TABLE [dbo].[Услуги_договор] CHECK CONSTRAINT [FK_Услуги_договор_Договор_заказчик]
GO
ALTER TABLE [dbo].[Услуги_договор]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_договор_Услуги] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуги] ([Код_услуги])
GO
ALTER TABLE [dbo].[Услуги_договор] CHECK CONSTRAINT [FK_Услуги_договор_Услуги]
GO
