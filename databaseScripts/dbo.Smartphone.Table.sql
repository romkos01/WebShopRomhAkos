USE [products]
GO
/****** Object:  Table [dbo].[Smartphone]    Script Date: 2023. 11. 13. 17:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Smartphone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Weight] [int] NOT NULL,
	[Panel] [nvarchar](max) NOT NULL,
	[ScreenSize] [decimal](18, 2) NOT NULL,
	[DisplayResolution] [nvarchar](max) NOT NULL,
	[RefreshRate] [int] NOT NULL,
	[CPUcore] [int] NOT NULL,
	[CPUspeed] [int] NOT NULL,
	[RAM] [int] NOT NULL,
	[StorageSize] [int] NOT NULL,
	[MainCameraResolution] [int] NOT NULL,
	[BatteryCapacity] [int] NOT NULL,
	[is4G] [bit] NOT NULL,
	[is5G] [bit] NOT NULL,
	[isNFC] [bit] NOT NULL,
	[isUSB_C] [bit] NOT NULL,
	[isWaterProof] [bit] NOT NULL,
	[isFeatured] [bit] NOT NULL,
 CONSTRAINT [PK_Smartphone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Smartphone] ON 

INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (1, N'Xiaomi 13 Pro', N'The Xiaomi 13 Pro is a high-end smartphone that features a sleek design and advanced technology. It typically has a large, high-resolution AMOLED display with a high refresh rate for smooth scrolling and vibrant visuals. The phone is often powered by the latest Qualcomm Snapdragon processor, offering fast performance and efficiency. It usually comes with a substantial amount of RAM and internal storage, providing ample space for apps and media.

Photography is often one of the highlights of the Xiaomi Pro series, with the 13 Pro likely featuring a multi-camera system with a high megapixel count, possibly co-engineered with a renowned camera brand for improved image quality. The cameras might offer features like optical zoom, ultra-wide and macro shooting modes, and advanced night photography capabilities.

The device probably supports fast charging, wireless charging, and reverse wireless charging, along with a high-capacity battery that ensures it can last through a day of heavy use. It likely runs on MIUI, Xiaomi custom version Android, which offers various customization options and features tailored to enhance the user experience.

In terms of build quality, the Xiaomi 13 Pro might have a premium construction with a glass back, metal frame, and possibly a ceramic edition. It would be equipped with stereo speakers, IP-rated water and dust resistance, and might also feature 5G connectivity, along with standard wireless technologies like Wi-Fi 6, Bluetooth, and NFC for contactless payments.', N'Xiaomi Inc.', N'Xiaomi 13 Pro 5G', N'Xiaomi', CAST(759.99 AS Decimal(18, 2)), N'xiaomi13_Pro.png', N'smartphone', 210, N'OLED', CAST(6.79 AS Decimal(18, 2)), N'3200 x 1440', 120, 8, 3200, 12, 512, 50, 4820, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (2, N'Xiaomi 13T', N'The Xiaomi 13T 5G is a state-of-the-art smartphone featuring cutting-edge 5G technology for unparalleled connectivity and speed. It is powered by a MediaTek Dimensity 9200+ series chipset, ensuring swift performance across applications and gaming. The device boasts a 6.67-inch AMOLED display with a 144Hz refresh rate for a smooth and immersive visual experience.

Equipped with a triple camera system, the Xiaomi 13T 5G offers a primary high-resolution sensor complemented by ultra-wide and telephoto lenses, supporting advanced photography features such as optical image stabilization and night mode. The front-facing camera provides crystal clear selfies and video calls.

A robust battery provides all-day endurance and supports Xiaomi has proprietary fast charging, delivering hours of usage with just minutes of charging. The phone runs on MIUI, offering a rich user interface atop the latest version of Android, with numerous custom features and enhancements.

For audio, the Xiaomi 13T 5G includes stereo speakers for an immersive sound experience. It also features an IP68 rating for dust and splash protection, ensuring durability. Biometric security is provided by an in-display fingerprint sensor, alongside AI face recognition technology.

Storage options are generous, with various configurations available to suit different needs, complemented by ample RAM for multitasking efficiency. The Xiaomi 13T 5G represents a harmonious blend of power, design, and technology, setting a new standard for smartphones in the 5G era.', N'Xiaomi Inc.', N'Xiaomi 13T 5G', N'Xiaomi', CAST(579.99 AS Decimal(18, 2)), N'xiaomi13T.png', N'smartphone', 193, N'OLED', CAST(6.67 AS Decimal(18, 2)), N'2712 x 1220', 144, 8, 3100, 8, 256, 50, 5000, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (3, N'Redmi 12 Pro', N'The Xiaomi Redmi Note 12 Pro is a mid-range smartphone that offers a blend of performance and style, catering to users who seek quality features without a premium price tag. It features a sleek and modern design, typically available in multiple color options to suit different tastes.

The phone is equipped with a large, vibrant display, often an AMOLED screen, known for its bright and vivid colors, and high resolution, providing an immersive viewing experience for videos and games. The high refresh rate of the screen ensures smooth scrolling and better responsiveness, enhancing the overall user experience.

Under the hood, the Redmi Note 12 Pro is powered by a capable processor, which balances power and efficiency, making it suitable for everyday tasks and moderate gaming. It is paired with ample RAM and internal storage, ensuring smooth multitasking and enough space for apps and media.

In terms of photography, the Redmi Note 12 Pro usually boasts a versatile camera setup, including a high-resolution main camera, complemented by additional lenses like an ultra-wide or macro camera. This setup allows for a variety of photography styles, from expansive landscapes to detailed close-ups.

The device also typically features a long-lasting battery, supporting fast charging, which is a significant advantage for users who are often on the go. Additional features might include a fingerprint sensor for security, stereo speakers for an enhanced audio experience, and the latest version of Xiaomi has user interface, providing a clean and intuitive user experience.

Overall, the Xiaomi Redmi Note 12 Pro is designed to be a well-rounded smartphone, offering a balance of quality features at a value-focused price point, making it a popular choice among budget-conscious consumers.', N'Xiaomi Inc.', N'Xiaomi Redmi Note 12 Pro', N'Xiaomi', CAST(279.99 AS Decimal(18, 2)), N'xiaomi_redminote12_Pro.png', N'smartphone', 187, N'OLED', CAST(6.67 AS Decimal(18, 2)), N'2400 x 1080', 120, 8, 2600, 6, 128, 50, 5000, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (4, N'Redmi 12S', N'The Xiaomi Redmi Note 12S, presented by Xiaomi Inc., is a noteworthy addition to the company has illustrious smartphone lineup. This device strikes a perfect balance between high-end features and affordability, making it a compelling choice for users who demand quality without the hefty price tag.

Sporting a sleek and modern design, the Redmi Note 12S is a testament to Xiaomi has commitment to style and functionality. Available in various colors, it caters to diverse preferences, ensuring that there is a Redmi Note 12S for every taste.

At the heart of its appeal is a 6.43-inch OLED display, boasting a resolution of 2400 x 1080 pixels. This large, vibrant screen is perfect for an immersive viewing experience, be it for streaming videos or gaming. The 90Hz refresh rate further enhances the display has smoothness, making every scroll and swipe a pleasure.

Underneath its stylish exterior lies a powerful 8-core CPU clocked at 2050 MHz, paired with 8 GB of RAM. This combination ensures efficient and smooth performance, whether for daily tasks or moderate gaming. The phone is generous 256 GB of internal storage offers ample space for apps, photos, and media, catering to the needs of the most demanding users.

The Redmi Note 12S excels in the camera department, featuring a stunning 108 MP main camera. This high-resolution camera opens up a world of photographic possibilities, from capturing sweeping landscapes to detailed portraits.

Battery life is a standout feature, with a robust 5000 mAh battery ensuring that the device keeps up with the user has busy lifestyle. While it lacks 5G capabilities, it supports 4G networks, NFC for contactless transactions, and a USB-C port for modern connectivity. However, it is important to note that this model does not come with IP67 or IP68 water and dust resistance.

Overall, the Xiaomi Redmi Note 12S is a testament to the ability Xiaomi to deliver high-quality smartphones that combine performance, style, and value. It is an excellent choice for those who want a feature-packed smartphone at a reasonable price.', N'Xiaomi Inc.', N'Xiaomi Redmi Note 12S', N'Xiaomi', CAST(209.99 AS Decimal(18, 2)), N'xiaomi_redminote12S.png', N'smartphone', 176, N'OLED', CAST(6.43 AS Decimal(18, 2)), N'2400 x 1080', 90, 8, 2050, 8, 256, 108, 5000, 1, 0, 1, 1, 0, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (5, N'Xiaomi 12 Pro', N'The Xiaomi 12 Pro is a flagship smartphone that epitomizes the blend of high-end performance and cutting-edge design, appealing to users seeking advanced features and powerful specifications. Its elegant and contemporary design is available in various attractive color options, catering to diverse aesthetic preferences.

At the heart of its visual experience is a large, premium-quality display, typically featuring an AMOLED panel known for delivering bright, vivid colors and deep blacks. The screen has high resolution ensures crisp and detailed visuals, making it ideal for media consumption and gaming. A high refresh rate adds to the fluidity of the display, offering smooth scrolling and responsive touch interactions.

Powered by a top-of-the-line processor, the Xiaomi 12 Pro delivers exceptional performance, easily handling demanding applications and games. This is complemented by generous amounts of RAM and ample internal storage, ensuring smooth multitasking and sufficient space for a vast array of apps and media.

Photography enthusiasts will appreciate the Xiaomi 12 Pro has advanced camera system, which typically includes a high-resolution main sensor accompanied by versatile secondary cameras, such as ultra-wide and telephoto lenses. This setup enables a wide range of photographic possibilities, from capturing expansive landscapes to detailed zoomed-in shots.

The device is equipped with a robust battery that supports fast charging, a crucial feature for users with busy lifestyles. Additional features likely include an in-display fingerprint sensor for enhanced security, high-quality stereo speakers for an immersive audio experience, and the latest iteration of Xiaomi user interface, offering a sleek and user-friendly experience.

In summary, the Xiaomi 12 Pro stands out as a top-tier smartphone, combining exceptional performance, a versatile camera system, and a stunning display, all packaged in a stylish design. It is an excellent choice for tech enthusiasts and power users who demand the best in smartphone technology.', N'Xiaomi Inc.', N'Xiaomi 12 Pro 5G', N'Xiaomi', CAST(749.99 AS Decimal(18, 2)), N'xiaomi12_Pro.png', N'smartphone', 204, N'OLED', CAST(6.73 AS Decimal(18, 2)), N'3200 x 1440', 120, 8, 3000, 12, 256, 50, 4600, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (6, N'iPhone 11', N'The iPhone 11 is a dynamic smartphone that combines Apple’s signature design and performance. Renowned for its balance of functionality and sleek aesthetics, it offers users an engaging and intuitive interface. Its durable design comes in various colors, appealing to a wide range of preferences.

The iPhone 11 features a Liquid Retina HD display, known for its color accuracy and brightness. The screen’s resolution and size make it ideal for various media, from streaming videos to mobile gaming. Although it doesn’t boast a high refresh rate, it still delivers a smooth and responsive user experience.

Powered by Apple’s A13 Bionic chip, the iPhone 11 handles everyday tasks and mobile gaming with ease. It comes with adequate RAM and multiple storage options, ensuring efficient multitasking and enough space for apps and media.

Photography enthusiasts will enjoy its dual-camera system, including a wide and ultra-wide lens. This setup allows for versatile shooting, from broad landscapes to detailed portraits. 

Equipped with a solid battery life and supporting fast charging, it caters well to users with active lifestyles. Other features include Face ID for secure authentication, spatial audio for an immersive sound experience, and the latest iOS version for a smooth user experience.

Overall, the iPhone 11 stands as a well-rounded smartphone, offering a mix of robust performance, versatile photography, and a user-friendly interface, all within Apple’s ecosystem.', N'Apple Inc.', N'iPhone 11', N'Apple', CAST(699.00 AS Decimal(18, 2)), N'iphone11.png', N'smartphone', 194, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'1792 x 828', 60, 6, 2660, 4, 256, 12, 3110, 1, 0, 1, 1, 0, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (7, N'iPhone 11 Pro Max', N'The iPhone 11 Pro Max is Apple’s advanced offering in its smartphone lineup, known for its superior display, camera, and performance. Designed for users who seek high-end features, it showcases Apple’s commitment to premium build quality and aesthetic sophistication, available in various elegant colors.

Its standout feature is the Super Retina XDR display, which offers exceptional brightness, contrast, and color accuracy. The large screen size combined with an impressive resolution ensures an immersive viewing experience for media consumption and gaming.

At its core is the A13 Bionic chip, ensuring that the iPhone 11 Pro Max delivers top-notch performance. It is well-equipped to handle demanding applications and games, complemented by ample RAM and various storage options to cater to different user needs.

Photography and videography are where the iPhone 11 Pro Max shines, thanks to its triple-camera system that includes wide, ultra-wide, and telephoto lenses. This versatile setup enables a range of photographic styles, from detailed close-ups to wide scenic shots.

Battery life is a strong point, with enough capacity to last through a day of heavy use, and it supports fast charging. Additional features include Face ID for secure access, spatial audio for a rich sound experience, and the latest version of iOS for a fluid and intuitive user interface.

In summary, the iPhone 11 Pro Max is a top-tier smartphone, combining advanced camera capabilities, a stunning display, and robust performance, all within Apple’s sleek design language. It’s an ideal choice for users who demand the best from their mobile devices.', N'Apple Inc.', N'iPhone 11 Pro Max', N'Apple', CAST(1099.00 AS Decimal(18, 2)), N'iphone11_pro_max.png', N'smartphone', 226, N'OLED', CAST(6.50 AS Decimal(18, 2)), N'2688 x 1242', 60, 6, 2660, 4, 512, 12, 3969, 1, 0, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (8, N'iPhone 12', N'The iPhone 12 represents a significant step in Apple’s smartphone line, known for its balanced blend of style, performance, and advanced features. It is designed for users looking for a high-quality device that combines modern aesthetics with powerful functionality, offered in a range of vibrant colors.

The device features a Super Retina XDR display, known for its high brightness, true-to-life colors, and HDR support. The 6.1-inch screen size and high resolution provide a vivid and immersive viewing experience, perfect for video playback and gaming.

Powered by Apple’s A14 Bionic chip, the iPhone 12 offers exceptional processing power and efficiency. It is well-suited for handling complex tasks and high-performance gaming. The device comes with various RAM and storage configurations to meet different user requirements.

Photography is enhanced with a dual-camera system, including wide and ultra-wide lenses, allowing for versatile shooting styles from broad landscapes to detailed portraits. The Night mode and Deep Fusion technologies significantly improve low-light photography.

The iPhone 12 is also equipped with a durable battery, compatible with both fast and wireless charging. It includes 5G support for faster data speeds, Face ID for secure authentication, and runs on the latest iOS version for a seamless user experience.

In summary, the iPhone 12 is a robust and stylish smartphone, offering a powerful camera, impressive display, and top-tier performance, encapsulated in a sleek and durable design. It is an excellent choice for those seeking a modern and capable mobile device.', N'Apple Inc.', N'iPhone 12', N'Apple', CAST(799.00 AS Decimal(18, 2)), N'iphone12.png', N'smartphone', 164, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'2532 x 1170', 60, 6, 3100, 4, 256, 12, 2815, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (9, N'iPhone 12 Mini', N'The iPhone 12 Mini is Apple’s answer to the demand for a compact yet powerful smartphone. It is perfect for users who prefer a smaller device without compromising on performance and features. The iPhone 12 Mini comes in a variety of eye-catching colors, catering to different style preferences.

Equipped with a 5.4-inch Super Retina XDR display, the iPhone 12 Mini offers a high-quality viewing experience. Its screen delivers vibrant colors and high resolution, making it ideal for various multimedia applications.

Powered by the efficient A14 Bionic chip, the iPhone 12 Mini provides excellent performance. It is capable of handling demanding tasks and gaming with ease. Despite its smaller size, it comes with sufficient RAM and storage options to meet the needs of most users.

Photography on the iPhone 12 Mini is supported by a dual-camera system that includes wide and ultra-wide lenses. This setup allows for versatile photography options, and Apple’s advanced camera features like Night mode enhance low-light photo quality.

The device also includes a durable battery that supports fast and wireless charging. It offers 5G connectivity for rapid data transfer, Face ID technology for secure authentication, and runs on the latest iOS version for a smooth user experience.

In summary, the iPhone 12 Mini packs the essential features of the iPhone 12 into a more compact form. It is ideal for users looking for a smaller, yet fully capable, modern smartphone.', N'Apple Inc.', N'iPhone 12 Mini', N'Apple', CAST(699.00 AS Decimal(18, 2)), N'iphone12mini.png', N'smartphone', 135, N'OLED', CAST(5.40 AS Decimal(18, 2)), N'2340 x 1080', 60, 6, 3100, 4, 256, 12, 2227, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (10, N'iPhone 12 Pro', N'The iPhone 12 Pro is a premium smartphone that combines sophisticated design with top-of-the-line performance. It is designed for users who seek advanced features in a stylish and durable package. The iPhone 12 Pro is available in a range of elegant colors, appealing to a wide audience with varied aesthetic preferences.

Featuring a 6.1-inch Super Retina XDR display, the iPhone 12 Pro delivers an immersive viewing experience with crisp, vibrant visuals. This high-quality display is perfect for streaming, gaming, and other multimedia activities.

At its core, the iPhone 12 Pro is powered by Apple’s A14 Bionic chip, ensuring outstanding performance and efficiency. It is well-equipped to handle demanding applications and multitasking with ease. The device offers a range of RAM and storage options to accommodate different user needs.

Photography is a standout feature of the iPhone 12 Pro, boasting a triple-camera system with wide, ultra-wide, and telephoto lenses. This versatile setup allows for exceptional photo and video capabilities, supported by advanced features like Night mode and Deep Fusion.

The iPhone 12 Pro also includes a robust battery with fast and wireless charging capabilities. It supports 5G technology for ultra-fast data speeds, features Face ID for secure authentication, and runs on the latest iOS for a seamless user experience.

Overall, the iPhone 12 Pro is a top-tier smartphone, ideal for users who demand high performance, advanced camera capabilities, and a premium design.', N'Apple Inc.', N'iPhone 12 Pro', N'Apple', CAST(999.00 AS Decimal(18, 2)), N'iphone12pro.png', N'smartphone', 189, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'2532 x 1170', 60, 6, 3100, 6, 512, 12, 2815, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (11, N'iPhone 12 Pro Max', N'The iPhone 12 Pro Max is Apple’s flagship smartphone, boasting a larger screen and enhanced features compared to its siblings. This model is tailored for users who prefer a bigger display and extended battery life, along with high-end performance and camera capabilities. The iPhone 12 Pro Max comes in various sophisticated colors, satisfying diverse tastes and styles.

It features a 6.7-inch Super Retina XDR display, offering an expansive and immersive viewing experience with superior clarity and color accuracy. Ideal for video streaming, gaming, and photography, this large display is a standout feature for multimedia enthusiasts.

At its core, the iPhone 12 Pro Max runs on the powerful A14 Bionic chip, ensuring smooth performance even under demanding conditions. The device is available in several configurations of RAM and storage, accommodating a range of user requirements.

The camera system of the iPhone 12 Pro Max is a highlight, featuring a triple-camera setup with improved sensor-shift optical image stabilization. This configuration allows for stunning photography and video recording, even in low-light conditions.

Other notable features include a large battery with fast and wireless charging capabilities, 5G connectivity for rapid data speeds, Face ID for secure authentication, and water and dust resistance with an IP68 rating. Running on the latest iOS, the iPhone 12 Pro Max offers a seamless and intuitive user experience.

Overall, the iPhone 12 Pro Max stands out for its large display, advanced camera technology, and robust performance, making it an ideal choice for power users and multimedia enthusiasts.', N'Apple Inc.', N'iPhone 12 Pro Max', N'Apple', CAST(1099.00 AS Decimal(18, 2)), N'iphone12pro.png', N'smartphone', 228, N'OLED', CAST(6.70 AS Decimal(18, 2)), N'2778 x 1284', 60, 6, 3100, 6, 512, 12, 3687, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (12, N'iPhone 13', N'The iPhone 13, part of Apple widely acclaimed smartphone series, presents a harmonious blend of sleek design, advanced technology, and impressive performance. It is designed for users who appreciate a high-quality smartphone experience with enhanced features. The iPhone 13 comes in a variety of vibrant colors, catering to a wide range of style preferences.

Featuring a 6.1-inch Super Retina XDR display, the iPhone 13 offers a visually stunning experience with bright, vivid colors and sharp details, making it ideal for video streaming, gaming, and photography. The OLED panel provides deep blacks and high contrast ratios, enhancing the overall viewing experience.

Powered by the A15 Bionic chip, the iPhone 13 delivers swift and efficient performance. This ensures smooth multitasking and a seamless user experience, even with demanding applications. The device offers multiple storage options to suit different user needs.

The dual-camera system in the iPhone 13 is a significant upgrade, with sensor-shift optical image stabilization and advanced computational photography capabilities. This allows for stunning photos and videos in various lighting conditions.

Other notable features include improved battery life, 5G capability for faster connectivity, MagSafe technology for wireless charging and accessories, and the latest iOS version for a user-friendly interface. The iPhone 13 also boasts improved durability with Ceramic Shield front cover and IP68 water and dust resistance.

Overall, the iPhone 13 is an excellent choice for those seeking a blend of style, performance, and advanced camera features in their smartphone.', N'Apple Inc.', N'iPhone 13', N'Apple', CAST(829.00 AS Decimal(18, 2)), N'iphone13.png', N'smartphone', 174, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'2532 x 1170', 60, 6, 3200, 4, 512, 12, 3240, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (13, N'iPhone 13 Mini', N'The iPhone 13 Mini is a compact yet powerful member of the iPhone 13 series from Apple , designed for users who prefer a smaller, more manageable smartphone without sacrificing performance. Its array of colors offers a personalized choice for various styles.

Equipped with a 5.4-inch Super Retina XDR display, the iPhone 13 Mini delivers an immersive visual experience in a compact form. The OLED panel produces vibrant colors and deep blacks, offering excellent viewing quality for all types of content.

Powered by the A15 Bionic chip, this smartphone ensures fast and efficient performance. The iPhone 13 Mini handles multitasking and demanding applications with ease, providing a smooth user experience.

The advanced dual-camera system features sensor-shift optical image stabilization and innovative photography capabilities, allowing for high-quality images and videos in different lighting situations.

The iPhone 13 Mini supports 5G, enhancing connectivity speeds for browsing and streaming. It integrates MagSafe technology for convenient wireless charging and accessory use. Despite its smaller size, it offers impressive battery life, suitable for day-long use.

Additional features include the latest iOS version, providing a user-friendly and intuitive interface, and enhanced durability with Ceramic Shield and IP68 water and dust resistance.

In summary, the iPhone 13 Mini stands out for those who value a compact size without compromising on technology and features, making it an excellent choice in the smartphone market.', N'Apple Inc.', N'iPhone 13 Mini', N'Apple', CAST(699.00 AS Decimal(18, 2)), N'iphone13_mini.png', N'smartphone', 141, N'OLED', CAST(5.40 AS Decimal(18, 2)), N'2340 x 1080', 60, 6, 3200, 4, 512, 12, 2438, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (14, N'iPhone 13 Pro', N'The iPhone 13 Pro is a premium offering in Apple smartphone lineup, known for its blend of sophisticated design and cutting-edge technology. Available in a variety of elegant colors, it appeals to a wide range of users who appreciate both aesthetics and functionality.

Featuring a 6.1-inch Super Retina XDR display with ProMotion technology, the iPhone 13 Pro offers a stunning visual experience, with fluid scrolling and a high refresh rate of 120Hz. The OLED panel ensures vibrant colors and deep blacks, making it ideal for various multimedia applications.

At the heart of the iPhone 13 Pro is Apple A15 Bionic chip, delivering exceptional performance and efficiency. This power is complemented by advanced machine learning capabilities, enhancing the overall user experience.

The iPhone 13 Pro boasts a state-of-the-art triple camera system with improved low-light performance and cinematic mode for video recording. It offers a versatile photography experience, from detailed close-ups to expansive landscapes.

With 5G capabilities, the iPhone 13 Pro ensures fast and reliable internet connectivity. It also features improved battery life, an intuitive iOS interface, and robust build quality with Ceramic Shield and IP68 water resistance.

In summary, the iPhone 13 Pro is an outstanding choice for users seeking a top-tier smartphone with advanced cameras, a powerful processor, and a high-quality display, all encapsulated in a stylish and durable design.', N'Apple Inc.', N'iPhone 13 Pro', N'Apple', CAST(999.00 AS Decimal(18, 2)), N'iphone13_pro.png', N'smartphone', 204, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'2532 x 1170', 120, 6, 3200, 6, 1024, 12, 3095, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (15, N'iPhone 13 Pro Max', N'The iPhone 13 Pro Max is the pinnacle of the smartphone technology from Apple, representing the perfect combination of elegant design and cutting-edge functionality. Its selection of sophisticated colors caters to a variety of tastes and preferences.

Equipped with a larger 6.7-inch Super Retina XDR display with ProMotion, the iPhone 13 Pro Max delivers an immersive visual experience. The OLED panel offers vivid colors and deep blacks, enhanced by a high refresh rate of 120Hz for smooth and responsive interactions.

At its core, the iPhone 13 Pro Max houses the powerful A15 Bionic chip, known for its exceptional performance and energy efficiency. This, coupled with advanced machine learning capabilities, creates a seamless and responsive user experience.

The iPhone 13 Pro Max features an impressive triple camera system with enhanced capabilities in low-light conditions and a cinematic mode for video recording. This allows for a wide range of photographic styles, from detailed portraits to expansive landscapes.

Other notable features include 5G support for fast internet connectivity, a long-lasting battery, and an intuitive iOS interface. The device also boasts superior durability with its Ceramic Shield front cover and IP68 water resistance.

In summary, the iPhone 13 Pro Max is a superior choice for users seeking an advanced smartphone with a large screen, powerful processing capabilities, sophisticated camera technology, and robust construction.', N'Apple Inc.', N'iPhone 13 Pro Max', N'Apple', CAST(1099.00 AS Decimal(18, 2)), N'iphone13_pro.png', N'smartphone', 238, N'OLED', CAST(6.70 AS Decimal(18, 2)), N'2778 x 1284', 120, 6, 3200, 6, 1024, 12, 4352, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (16, N'iPhone 14', N'The iPhone 14 represents Apple’s commitment to continuous innovation, showcasing a sleek design and powerful features. Available in a range of stylish colors, it appeals to a broad spectrum of users.

The device boasts a 6.1-inch Super Retina XDR display, renowned for its vibrant color reproduction and crisp resolution. The OLED panel ensures deep blacks and bright whites, offering an engaging viewing experience for all types of content.

Powered by the A15 Bionic chip, the iPhone 14 delivers impressive performance and efficiency. This chipset is adept at handling various tasks, from day-to-day usage to demanding applications, ensuring a smooth and responsive user experience.

The camera system on the iPhone 14 is a significant highlight, featuring advanced sensors and computational photography capabilities. This allows users to capture stunning photos and videos in various lighting conditions.

Other key features of the iPhone 14 include 5G support, a durable design with Ceramic Shield technology, and iOS’s intuitive and user-friendly interface. The device also emphasizes privacy and security, a hallmark of Apple’s ecosystem.

In summary, the iPhone 14 is a versatile and powerful smartphone that offers a balance of performance, camera quality, and display technology, packaged in a refined and durable design. It is an excellent choice for users who value both style and substance in their mobile device.', N'Apple Inc.', N'iPhone 14', N'Apple', CAST(799.00 AS Decimal(18, 2)), N'iphone14.png', N'smartphone', 172, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'2532 x 1170', 60, 6, 3200, 4, 512, 12, 3279, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (17, N'iPhone 14 Pro Max', N'The iPhone 14 Pro Max is Apple’s latest flagship, offering top-tier technology and performance. This model features a stunning 6.7-inch Super Retina XDR display with ProMotion, providing an immersive viewing experience with dynamic refresh rates up to 120 Hz. The display also includes features like Dynamic Island and always-on capability.

   Powered by the Apple A16 Bionic chip, the iPhone 14 Pro Max delivers exceptional processing power. Its 6-core CPU ensures efficient and swift performance across all tasks. The device boasts a 6 GB RAM and comes with 128 GB of internal storage.

   In the camera department, the iPhone 14 Pro Max excels with a triple-camera setup, including a 48 MP main camera, 12 MP ultra-wide, and 12 MP telephoto lenses. It supports 4K video recording and features like LiDAR and ToF sensors for enhanced photography and AR experiences.

   The phone has a 4323 mAh battery, supporting 15W wireless charging. It includes modern connectivity features like 5G, NFC, and Wi-Fi 6. This model retains the classic Apple design, offering durability and a premium feel. It’s an excellent choice for users seeking a blend of performance, camera quality, and cutting-edge features.', N'Apple Inc.', N'iPhone 14 Pro Max', N'Apple', CAST(1099.00 AS Decimal(18, 2)), N'iphone14promax.png', N'smartphone', 240, N'OLED', CAST(6.70 AS Decimal(18, 2)), N'2796 x 1290', 120, 6, 3460, 6, 128, 48, 4323, 1, 1, 1, 0, 1, 0)
INSERT [dbo].[Smartphone] ([Id], [Name], [Description], [Author], [Title], [Brand], [Price], [ImageUrl], [Category], [Weight], [Panel], [ScreenSize], [DisplayResolution], [RefreshRate], [CPUcore], [CPUspeed], [RAM], [StorageSize], [MainCameraResolution], [BatteryCapacity], [is4G], [is5G], [isNFC], [isUSB_C], [isWaterProof], [isFeatured]) VALUES (18, N'iPhone 15', N'Launched in September 2023, the iPhone 15 is a testament to Apple’s ongoing innovation. It features a 6.1-inch Super Retina XDR OLED display, offering HDR10 and Dolby Vision support, with a peak brightness of 2000 nits. The screen is protected by Ceramic Shield glass, ensuring durability.

Running on iOS 17, it’s powered by the Apple A16 Bionic chipset and offers up to 512GB storage with 6GB RAM. The main camera is a dual setup with a 48 MP wide lens and a 12 MP ultrawide lens, capable of 4K video recording. The selfie camera is 12 MP with 4K video capabilities.

The iPhone 15 supports 5G, has Face ID, and comes without a 3.5mm jack, maintaining Apple’s sleek design. It’s also IP68 water and dust resistant and supports Apple Pay.

The device’s battery life is impressive, with a Li-Ion 3349 mAh battery, offering fast and wireless charging options. It’s available in a variety of colors, catering to different user preferences.

Overall, the iPhone 15 is a blend of high-end performance, advanced camera technology, and robust build quality, making it a popular choice among consumers.', N'Apple Inc.', N'iPhone 15', N'Apple', CAST(829.99 AS Decimal(18, 2)), N'iphone15.png', N'smartphone', 171, N'OLED', CAST(6.10 AS Decimal(18, 2)), N'1179 x 2556', 60, 6, 3460, 6, 512, 48, 3349, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Smartphone] OFF
GO
ALTER TABLE [dbo].[Smartphone] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isFeatured]
GO
