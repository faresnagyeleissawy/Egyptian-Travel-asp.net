PGDMP         (                 {         
   TourismDB1    13.10    13.10 X    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    57949 
   TourismDB1    DATABASE     p   CREATE DATABASE "TourismDB1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "TourismDB1";
                postgres    false            �            1259    58007    Accommodations    TABLE       CREATE TABLE public."Accommodations" (
    "Id" integer NOT NULL,
    "Name" text,
    "Description" text,
    "Price" double precision,
    "TypeId" integer NOT NULL,
    "Image" text,
    "Rate" integer NOT NULL,
    "X" double precision,
    "Y" double precision
);
 $   DROP TABLE public."Accommodations";
       public         heap    postgres    false            �            1259    58005    Accommodations_Id_seq    SEQUENCE     �   ALTER TABLE public."Accommodations" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Accommodations_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    57957    Acctype    TABLE     W   CREATE TABLE public."Acctype" (
    "Id" integer NOT NULL,
    "Type" text NOT NULL
);
    DROP TABLE public."Acctype";
       public         heap    postgres    false            �            1259    57955    Acctype_Id_seq    SEQUENCE     �   ALTER TABLE public."Acctype" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Acctype_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            �            1259    58100    InterestingPlaceTourist    TABLE     �   CREATE TABLE public."InterestingPlaceTourist" (
    "InterestingPlacesId" integer NOT NULL,
    "TouristId" integer NOT NULL
);
 -   DROP TABLE public."InterestingPlaceTourist";
       public         heap    postgres    false            �            1259    57967    InterestingPlaceType    TABLE     [   CREATE TABLE public."InterestingPlaceType" (
    "Id" integer NOT NULL,
    "Type" text
);
 *   DROP TABLE public."InterestingPlaceType";
       public         heap    postgres    false            �            1259    57965    InterestingPlaceType_Id_seq    SEQUENCE     �   ALTER TABLE public."InterestingPlaceType" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."InterestingPlaceType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    58022    InterestingPlaces    TABLE       CREATE TABLE public."InterestingPlaces" (
    "Id" integer NOT NULL,
    "Name" text,
    "TypeId" integer NOT NULL,
    "Description" text,
    "Website" text,
    "X" double precision NOT NULL,
    "Y" double precision NOT NULL,
    "Image" text,
    "Rate" integer NOT NULL
);
 '   DROP TABLE public."InterestingPlaces";
       public         heap    postgres    false            �            1259    58020    InterestingPlaces_Id_seq    SEQUENCE     �   ALTER TABLE public."InterestingPlaces" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."InterestingPlaces_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    58115    ServiceTourist    TABLE     o   CREATE TABLE public."ServiceTourist" (
    "ServicesId" integer NOT NULL,
    "TouristsId" integer NOT NULL
);
 $   DROP TABLE public."ServiceTourist";
       public         heap    postgres    false            �            1259    57977    ServiceType    TABLE     [   CREATE TABLE public."ServiceType" (
    "Id" integer NOT NULL,
    "Type" text NOT NULL
);
 !   DROP TABLE public."ServiceType";
       public         heap    postgres    false            �            1259    57975    ServiceType_Id_seq    SEQUENCE     �   ALTER TABLE public."ServiceType" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."ServiceType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            �            1259    58037    Services    TABLE     3  CREATE TABLE public."Services" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Website" text NOT NULL,
    "Description" text NOT NULL,
    "Image" text NOT NULL,
    "Rate" integer NOT NULL,
    "X" double precision NOT NULL,
    "Y" double precision NOT NULL,
    "TypeId" integer NOT NULL
);
    DROP TABLE public."Services";
       public         heap    postgres    false            �            1259    58035    Services_Id_seq    SEQUENCE     �   ALTER TABLE public."Services" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Services_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    58067 
   TourGuides    TABLE     �   CREATE TABLE public."TourGuides" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Languages" text NOT NULL,
    "Phone" text NOT NULL,
    "Rate" integer NOT NULL,
    "TravelAgencyId" integer NOT NULL
);
     DROP TABLE public."TourGuides";
       public         heap    postgres    false            �            1259    58065    TourGuides_Id_seq    SEQUENCE     �   ALTER TABLE public."TourGuides" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TourGuides_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    58082    Tourists    TABLE       CREATE TABLE public."Tourists" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    age integer NOT NULL,
    "Nationality" text NOT NULL,
    "X" double precision NOT NULL,
    "Y" double precision NOT NULL,
    "AccId" integer,
    "TravelAgencyId" integer
);
    DROP TABLE public."Tourists";
       public         heap    postgres    false            �            1259    58080    Tourists_Id_seq    SEQUENCE     �   ALTER TABLE public."Tourists" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Tourists_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    57987    TransportationType    TABLE     b   CREATE TABLE public."TransportationType" (
    "Id" integer NOT NULL,
    "Type" text NOT NULL
);
 (   DROP TABLE public."TransportationType";
       public         heap    postgres    false            �            1259    57985    TransportationType_Id_seq    SEQUENCE     �   ALTER TABLE public."TransportationType" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TransportationType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    208            �            1259    58052    Transpotations    TABLE     �  CREATE TABLE public."Transpotations" (
    "Id" integer NOT NULL,
    "NameOfcompany" text NOT NULL,
    "ContactInfo" text NOT NULL,
    "Desciption" text NOT NULL,
    "Payment" text NOT NULL,
    "TypeId" integer NOT NULL,
    "RideTypeId" integer NOT NULL,
    "Price" double precision NOT NULL,
    x double precision NOT NULL,
    y double precision NOT NULL,
    "Rate" integer NOT NULL
);
 $   DROP TABLE public."Transpotations";
       public         heap    postgres    false            �            1259    58050    Transpotations_Id_seq    SEQUENCE     �   ALTER TABLE public."Transpotations" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Transpotations_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    57997    TravelAgencies    TABLE       CREATE TABLE public."TravelAgencies" (
    "Id" integer NOT NULL,
    "Image" text NOT NULL,
    "Name" text NOT NULL,
    "Url" text NOT NULL,
    "Phone" text NOT NULL,
    "X" double precision NOT NULL,
    "Y" double precision NOT NULL,
    "Rate" integer NOT NULL
);
 $   DROP TABLE public."TravelAgencies";
       public         heap    postgres    false            �            1259    57995    TravelAgencies_Id_seq    SEQUENCE     �   ALTER TABLE public."TravelAgencies" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TravelAgencies_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    57950    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            3          0    58007    Accommodations 
   TABLE DATA           u   COPY public."Accommodations" ("Id", "Name", "Description", "Price", "TypeId", "Image", "Rate", "X", "Y") FROM stdin;
    public          postgres    false    212   cq       )          0    57957    Acctype 
   TABLE DATA           1   COPY public."Acctype" ("Id", "Type") FROM stdin;
    public          postgres    false    202   r       >          0    58100    InterestingPlaceTourist 
   TABLE DATA           W   COPY public."InterestingPlaceTourist" ("InterestingPlacesId", "TouristId") FROM stdin;
    public          postgres    false    223   Ir       +          0    57967    InterestingPlaceType 
   TABLE DATA           >   COPY public."InterestingPlaceType" ("Id", "Type") FROM stdin;
    public          postgres    false    204   fr       5          0    58022    InterestingPlaces 
   TABLE DATA           z   COPY public."InterestingPlaces" ("Id", "Name", "TypeId", "Description", "Website", "X", "Y", "Image", "Rate") FROM stdin;
    public          postgres    false    214   �r       ?          0    58115    ServiceTourist 
   TABLE DATA           F   COPY public."ServiceTourist" ("ServicesId", "TouristsId") FROM stdin;
    public          postgres    false    224   �s       -          0    57977    ServiceType 
   TABLE DATA           5   COPY public."ServiceType" ("Id", "Type") FROM stdin;
    public          postgres    false    206   �s       7          0    58037    Services 
   TABLE DATA           q   COPY public."Services" ("Id", "Name", "Website", "Description", "Image", "Rate", "X", "Y", "TypeId") FROM stdin;
    public          postgres    false    216   �s       ;          0    58067 
   TourGuides 
   TABLE DATA           d   COPY public."TourGuides" ("Id", "Name", "Languages", "Phone", "Rate", "TravelAgencyId") FROM stdin;
    public          postgres    false    220   �t       =          0    58082    Tourists 
   TABLE DATA           k   COPY public."Tourists" ("Id", "Name", age, "Nationality", "X", "Y", "AccId", "TravelAgencyId") FROM stdin;
    public          postgres    false    222   �t       /          0    57987    TransportationType 
   TABLE DATA           <   COPY public."TransportationType" ("Id", "Type") FROM stdin;
    public          postgres    false    208   �t       9          0    58052    Transpotations 
   TABLE DATA           �   COPY public."Transpotations" ("Id", "NameOfcompany", "ContactInfo", "Desciption", "Payment", "TypeId", "RideTypeId", "Price", x, y, "Rate") FROM stdin;
    public          postgres    false    218   �t       1          0    57997    TravelAgencies 
   TABLE DATA           c   COPY public."TravelAgencies" ("Id", "Image", "Name", "Url", "Phone", "X", "Y", "Rate") FROM stdin;
    public          postgres    false    210   u       '          0    57950    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    200   �u       F           0    0    Accommodations_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Accommodations_Id_seq"', 15, true);
          public          postgres    false    211            G           0    0    Acctype_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Acctype_Id_seq"', 3, true);
          public          postgres    false    201            H           0    0    InterestingPlaceType_Id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."InterestingPlaceType_Id_seq"', 4, true);
          public          postgres    false    203            I           0    0    InterestingPlaces_Id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."InterestingPlaces_Id_seq"', 17, true);
          public          postgres    false    213            J           0    0    ServiceType_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ServiceType_Id_seq"', 4, true);
          public          postgres    false    205            K           0    0    Services_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Services_Id_seq"', 20, true);
          public          postgres    false    215            L           0    0    TourGuides_Id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TourGuides_Id_seq"', 1, false);
          public          postgres    false    219            M           0    0    Tourists_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Tourists_Id_seq"', 1, false);
          public          postgres    false    221            N           0    0    TransportationType_Id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."TransportationType_Id_seq"', 1, false);
          public          postgres    false    207            O           0    0    Transpotations_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Transpotations_Id_seq"', 1, false);
          public          postgres    false    217            P           0    0    TravelAgencies_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TravelAgencies_Id_seq"', 2, true);
          public          postgres    false    209            �           2606    58014     Accommodations PK_Accommodations 
   CONSTRAINT     d   ALTER TABLE ONLY public."Accommodations"
    ADD CONSTRAINT "PK_Accommodations" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."Accommodations" DROP CONSTRAINT "PK_Accommodations";
       public            postgres    false    212            x           2606    57964    Acctype PK_Acctype 
   CONSTRAINT     V   ALTER TABLE ONLY public."Acctype"
    ADD CONSTRAINT "PK_Acctype" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Acctype" DROP CONSTRAINT "PK_Acctype";
       public            postgres    false    202            �           2606    58104 2   InterestingPlaceTourist PK_InterestingPlaceTourist 
   CONSTRAINT     �   ALTER TABLE ONLY public."InterestingPlaceTourist"
    ADD CONSTRAINT "PK_InterestingPlaceTourist" PRIMARY KEY ("InterestingPlacesId", "TouristId");
 `   ALTER TABLE ONLY public."InterestingPlaceTourist" DROP CONSTRAINT "PK_InterestingPlaceTourist";
       public            postgres    false    223    223            z           2606    57974 ,   InterestingPlaceType PK_InterestingPlaceType 
   CONSTRAINT     p   ALTER TABLE ONLY public."InterestingPlaceType"
    ADD CONSTRAINT "PK_InterestingPlaceType" PRIMARY KEY ("Id");
 Z   ALTER TABLE ONLY public."InterestingPlaceType" DROP CONSTRAINT "PK_InterestingPlaceType";
       public            postgres    false    204            �           2606    58029 &   InterestingPlaces PK_InterestingPlaces 
   CONSTRAINT     j   ALTER TABLE ONLY public."InterestingPlaces"
    ADD CONSTRAINT "PK_InterestingPlaces" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."InterestingPlaces" DROP CONSTRAINT "PK_InterestingPlaces";
       public            postgres    false    214            �           2606    58119     ServiceTourist PK_ServiceTourist 
   CONSTRAINT     z   ALTER TABLE ONLY public."ServiceTourist"
    ADD CONSTRAINT "PK_ServiceTourist" PRIMARY KEY ("ServicesId", "TouristsId");
 N   ALTER TABLE ONLY public."ServiceTourist" DROP CONSTRAINT "PK_ServiceTourist";
       public            postgres    false    224    224            |           2606    57984    ServiceType PK_ServiceType 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ServiceType"
    ADD CONSTRAINT "PK_ServiceType" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."ServiceType" DROP CONSTRAINT "PK_ServiceType";
       public            postgres    false    206            �           2606    58044    Services PK_Services 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "PK_Services" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "PK_Services";
       public            postgres    false    216            �           2606    58074    TourGuides PK_TourGuides 
   CONSTRAINT     \   ALTER TABLE ONLY public."TourGuides"
    ADD CONSTRAINT "PK_TourGuides" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public."TourGuides" DROP CONSTRAINT "PK_TourGuides";
       public            postgres    false    220            �           2606    58089    Tourists PK_Tourists 
   CONSTRAINT     X   ALTER TABLE ONLY public."Tourists"
    ADD CONSTRAINT "PK_Tourists" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Tourists" DROP CONSTRAINT "PK_Tourists";
       public            postgres    false    222            ~           2606    57994 (   TransportationType PK_TransportationType 
   CONSTRAINT     l   ALTER TABLE ONLY public."TransportationType"
    ADD CONSTRAINT "PK_TransportationType" PRIMARY KEY ("Id");
 V   ALTER TABLE ONLY public."TransportationType" DROP CONSTRAINT "PK_TransportationType";
       public            postgres    false    208            �           2606    58059     Transpotations PK_Transpotations 
   CONSTRAINT     d   ALTER TABLE ONLY public."Transpotations"
    ADD CONSTRAINT "PK_Transpotations" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."Transpotations" DROP CONSTRAINT "PK_Transpotations";
       public            postgres    false    218            �           2606    58004     TravelAgencies PK_TravelAgencies 
   CONSTRAINT     d   ALTER TABLE ONLY public."TravelAgencies"
    ADD CONSTRAINT "PK_TravelAgencies" PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public."TravelAgencies" DROP CONSTRAINT "PK_TravelAgencies";
       public            postgres    false    210            v           2606    57954 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    200            �           1259    58130    IX_Accommodations_TypeId    INDEX     [   CREATE INDEX "IX_Accommodations_TypeId" ON public."Accommodations" USING btree ("TypeId");
 .   DROP INDEX public."IX_Accommodations_TypeId";
       public            postgres    false    212            �           1259    58132 $   IX_InterestingPlaceTourist_TouristId    INDEX     s   CREATE INDEX "IX_InterestingPlaceTourist_TouristId" ON public."InterestingPlaceTourist" USING btree ("TouristId");
 :   DROP INDEX public."IX_InterestingPlaceTourist_TouristId";
       public            postgres    false    223            �           1259    58131    IX_InterestingPlaces_TypeId    INDEX     a   CREATE INDEX "IX_InterestingPlaces_TypeId" ON public."InterestingPlaces" USING btree ("TypeId");
 1   DROP INDEX public."IX_InterestingPlaces_TypeId";
       public            postgres    false    214            �           1259    58134    IX_ServiceTourist_TouristsId    INDEX     c   CREATE INDEX "IX_ServiceTourist_TouristsId" ON public."ServiceTourist" USING btree ("TouristsId");
 2   DROP INDEX public."IX_ServiceTourist_TouristsId";
       public            postgres    false    224            �           1259    58133    IX_Services_TypeId    INDEX     O   CREATE INDEX "IX_Services_TypeId" ON public."Services" USING btree ("TypeId");
 (   DROP INDEX public."IX_Services_TypeId";
       public            postgres    false    216            �           1259    58135    IX_TourGuides_TravelAgencyId    INDEX     c   CREATE INDEX "IX_TourGuides_TravelAgencyId" ON public."TourGuides" USING btree ("TravelAgencyId");
 2   DROP INDEX public."IX_TourGuides_TravelAgencyId";
       public            postgres    false    220            �           1259    58136    IX_Tourists_AccId    INDEX     M   CREATE INDEX "IX_Tourists_AccId" ON public."Tourists" USING btree ("AccId");
 '   DROP INDEX public."IX_Tourists_AccId";
       public            postgres    false    222            �           1259    58137    IX_Tourists_TravelAgencyId    INDEX     _   CREATE INDEX "IX_Tourists_TravelAgencyId" ON public."Tourists" USING btree ("TravelAgencyId");
 0   DROP INDEX public."IX_Tourists_TravelAgencyId";
       public            postgres    false    222            �           1259    58138    IX_Transpotations_RideTypeId    INDEX     c   CREATE INDEX "IX_Transpotations_RideTypeId" ON public."Transpotations" USING btree ("RideTypeId");
 2   DROP INDEX public."IX_Transpotations_RideTypeId";
       public            postgres    false    218            �           2606    58015 /   Accommodations FK_Accommodations_Acctype_TypeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accommodations"
    ADD CONSTRAINT "FK_Accommodations_Acctype_TypeId" FOREIGN KEY ("TypeId") REFERENCES public."Acctype"("Id") ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."Accommodations" DROP CONSTRAINT "FK_Accommodations_Acctype_TypeId";
       public          postgres    false    202    2936    212            �           2606    58105 W   InterestingPlaceTourist FK_InterestingPlaceTourist_InterestingPlaces_InterestingPlaces~    FK CONSTRAINT     �   ALTER TABLE ONLY public."InterestingPlaceTourist"
    ADD CONSTRAINT "FK_InterestingPlaceTourist_InterestingPlaces_InterestingPlaces~" FOREIGN KEY ("InterestingPlacesId") REFERENCES public."InterestingPlaces"("Id") ON DELETE CASCADE;
 �   ALTER TABLE ONLY public."InterestingPlaceTourist" DROP CONSTRAINT "FK_InterestingPlaceTourist_InterestingPlaces_InterestingPlaces~";
       public          postgres    false    2950    214    223            �           2606    58110 E   InterestingPlaceTourist FK_InterestingPlaceTourist_Tourists_TouristId    FK CONSTRAINT     �   ALTER TABLE ONLY public."InterestingPlaceTourist"
    ADD CONSTRAINT "FK_InterestingPlaceTourist_Tourists_TouristId" FOREIGN KEY ("TouristId") REFERENCES public."Tourists"("Id") ON DELETE CASCADE;
 s   ALTER TABLE ONLY public."InterestingPlaceTourist" DROP CONSTRAINT "FK_InterestingPlaceTourist_Tourists_TouristId";
       public          postgres    false    222    223    2963            �           2606    58030 B   InterestingPlaces FK_InterestingPlaces_InterestingPlaceType_TypeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."InterestingPlaces"
    ADD CONSTRAINT "FK_InterestingPlaces_InterestingPlaceType_TypeId" FOREIGN KEY ("TypeId") REFERENCES public."InterestingPlaceType"("Id") ON DELETE CASCADE;
 p   ALTER TABLE ONLY public."InterestingPlaces" DROP CONSTRAINT "FK_InterestingPlaces_InterestingPlaceType_TypeId";
       public          postgres    false    2938    214    204            �           2606    58120 4   ServiceTourist FK_ServiceTourist_Services_ServicesId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceTourist"
    ADD CONSTRAINT "FK_ServiceTourist_Services_ServicesId" FOREIGN KEY ("ServicesId") REFERENCES public."Services"("Id") ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."ServiceTourist" DROP CONSTRAINT "FK_ServiceTourist_Services_ServicesId";
       public          postgres    false    2953    224    216            �           2606    58125 4   ServiceTourist FK_ServiceTourist_Tourists_TouristsId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ServiceTourist"
    ADD CONSTRAINT "FK_ServiceTourist_Tourists_TouristsId" FOREIGN KEY ("TouristsId") REFERENCES public."Tourists"("Id") ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."ServiceTourist" DROP CONSTRAINT "FK_ServiceTourist_Tourists_TouristsId";
       public          postgres    false    222    224    2963            �           2606    58045 '   Services FK_Services_ServiceType_TypeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "FK_Services_ServiceType_TypeId" FOREIGN KEY ("TypeId") REFERENCES public."ServiceType"("Id") ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "FK_Services_ServiceType_TypeId";
       public          postgres    false    206    216    2940            �           2606    58075 6   TourGuides FK_TourGuides_TravelAgencies_TravelAgencyId    FK CONSTRAINT     �   ALTER TABLE ONLY public."TourGuides"
    ADD CONSTRAINT "FK_TourGuides_TravelAgencies_TravelAgencyId" FOREIGN KEY ("TravelAgencyId") REFERENCES public."TravelAgencies"("Id") ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."TourGuides" DROP CONSTRAINT "FK_TourGuides_TravelAgencies_TravelAgencyId";
       public          postgres    false    220    2944    210            �           2606    58090 )   Tourists FK_Tourists_Accommodations_AccId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tourists"
    ADD CONSTRAINT "FK_Tourists_Accommodations_AccId" FOREIGN KEY ("AccId") REFERENCES public."Accommodations"("Id");
 W   ALTER TABLE ONLY public."Tourists" DROP CONSTRAINT "FK_Tourists_Accommodations_AccId";
       public          postgres    false    212    222    2947            �           2606    58095 2   Tourists FK_Tourists_TravelAgencies_TravelAgencyId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tourists"
    ADD CONSTRAINT "FK_Tourists_TravelAgencies_TravelAgencyId" FOREIGN KEY ("TravelAgencyId") REFERENCES public."TravelAgencies"("Id");
 `   ALTER TABLE ONLY public."Tourists" DROP CONSTRAINT "FK_Tourists_TravelAgencies_TravelAgencyId";
       public          postgres    false    222    210    2944            �           2606    58060 >   Transpotations FK_Transpotations_TransportationType_RideTypeId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transpotations"
    ADD CONSTRAINT "FK_Transpotations_TransportationType_RideTypeId" FOREIGN KEY ("RideTypeId") REFERENCES public."TransportationType"("Id") ON DELETE CASCADE;
 l   ALTER TABLE ONLY public."Transpotations" DROP CONSTRAINT "FK_Transpotations_TransportationType_RideTypeId";
       public          postgres    false    208    2942    218            3   �   x��ѱ� ���x
��pX\�Cgut���M�4�ŷ�n5��w��[�1y~_��qN�ws��NJ	CX�[,��2Ն�6�nØ6�	z瓋�⾹J!�m3�v���
b]=a�s=����pu�{�!�|��VҮ�\nPUaG��.�LY���q|^      )   #   x�3���/I��2�J-�/*�2����qqq ���      >      x������ � �      +   7   x�3�J��L��/-�2��MM�LN��2��I�,.-J�2�t.�))-
��qqq niF      5   �   x��ҽ�0��x�>��с����)���T[ѧנ11����]�w���a{7���ANd��ذﴓGK���������1��"7���HF�������h1-�����^��~_f5)��ɀ	!S�-�fY�h�Z�[+�ç`En,�U��l��,���Q0�l6tbY�V��'S�|��3�      ?      x������ � �      -   2   x�3�tJ���2�t�MJ,.��2��M���2�J-.I,-J�+����� ���      7   �   x��ҹ�0���~�<AT��1��؉��%U
7x{R!E*�bY��y2��ݞ� ZF�]�a��~���4�FZЅ$ T�P�B�m.,a�&ߋ͵s!�����&lg���`��57LK��r��X���.���<*�H��5���L_��M�ߧ5HK�,�p�*8z/��|a`      ;      x������ � �      =      x������ � �      /      x������ � �      9      x������ � �      1   c   x�3�,)J,K��5�+�K�tN�,�W)8�'�%Wrf��[��g��d�$V������s@��������������)�	�팎���� 55\      '   '   x�32026012524051����,�4�3�3����� n��     