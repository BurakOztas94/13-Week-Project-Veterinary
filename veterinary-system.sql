PGDMP  5    9                {            veterinary-system    16.1    16.1 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17155    veterinary-system    DATABASE     �   CREATE DATABASE "veterinary-system" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
 #   DROP DATABASE "veterinary-system";
                postgres    false                        2615    17225    veterinary-system    SCHEMA     #   CREATE SCHEMA "veterinary-system";
 !   DROP SCHEMA "veterinary-system";
                postgres    false            �            1259    17156    appointments    TABLE     �   CREATE TABLE public.appointments (
    id bigint NOT NULL,
    start_date_time timestamp(6) without time zone,
    pet_id bigint,
    vet_id bigint
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    17194    appointments_seq    SEQUENCE     z   CREATE SEQUENCE public.appointments_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.appointments_seq;
       public          postgres    false            �            1259    17161    owners    TABLE     �   CREATE TABLE public.owners (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    name character varying(255),
    phone character varying(255)
);
    DROP TABLE public.owners;
       public         heap    postgres    false            �            1259    17195 
   owners_seq    SEQUENCE     t   CREATE SEQUENCE public.owners_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.owners_seq;
       public          postgres    false            �            1259    17168    pets    TABLE       CREATE TABLE public.pets (
    id bigint NOT NULL,
    birth_date date,
    breed character varying(255),
    colour character varying(255),
    gender character varying(255),
    species character varying(255),
    owner_id bigint,
    name character varying(255)
);
    DROP TABLE public.pets;
       public         heap    postgres    false            �            1259    17196    pets_seq    SEQUENCE     r   CREATE SEQUENCE public.pets_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.pets_seq;
       public          postgres    false            �            1259    17175    vaccines    TABLE     �   CREATE TABLE public.vaccines (
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    protection_start_date date,
    pet_id bigint,
    protection_finish_date date
);
    DROP TABLE public.vaccines;
       public         heap    postgres    false            �            1259    17197    vaccines_seq    SEQUENCE     v   CREATE SEQUENCE public.vaccines_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.vaccines_seq;
       public          postgres    false            �            1259    17182    vets    TABLE     �   CREATE TABLE public.vets (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    email character varying(255),
    name character varying(255),
    phone_number character varying(255)
);
    DROP TABLE public.vets;
       public         heap    postgres    false            �            1259    17198    vets_seq    SEQUENCE     r   CREATE SEQUENCE public.vets_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.vets_seq;
       public          postgres    false            �            1259    17189    workdays    TABLE     ^   CREATE TABLE public.workdays (
    id bigint NOT NULL,
    vet_id bigint,
    workday date
);
    DROP TABLE public.workdays;
       public         heap    postgres    false            �            1259    17199    workdays_seq    SEQUENCE     v   CREATE SEQUENCE public.workdays_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.workdays_seq;
       public          postgres    false            �          0    17156    appointments 
   TABLE DATA           K   COPY public.appointments (id, start_date_time, pet_id, vet_id) FROM stdin;
    public          postgres    false    216   �+       �          0    17161    owners 
   TABLE DATA           G   COPY public.owners (id, address, city, email, name, phone) FROM stdin;
    public          postgres    false    217   >,       �          0    17168    pets 
   TABLE DATA           ^   COPY public.pets (id, birth_date, breed, colour, gender, species, owner_id, name) FROM stdin;
    public          postgres    false    218   -       �          0    17175    vaccines 
   TABLE DATA           i   COPY public.vaccines (id, code, name, protection_start_date, pet_id, protection_finish_date) FROM stdin;
    public          postgres    false    219   �-       �          0    17182    vets 
   TABLE DATA           L   COPY public.vets (id, address, city, email, name, phone_number) FROM stdin;
    public          postgres    false    220   :.       �          0    17189    workdays 
   TABLE DATA           7   COPY public.workdays (id, vet_id, workday) FROM stdin;
    public          postgres    false    221   �.       �           0    0    appointments_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.appointments_seq', 251, true);
          public          postgres    false    222            �           0    0 
   owners_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.owners_seq', 651, true);
          public          postgres    false    223            �           0    0    pets_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.pets_seq', 151, true);
          public          postgres    false    224            �           0    0    vaccines_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vaccines_seq', 201, true);
          public          postgres    false    225            �           0    0    vets_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.vets_seq', 151, true);
          public          postgres    false    226            �           0    0    workdays_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.workdays_seq', 151, true);
          public          postgres    false    227            5           2606    17160    appointments appointments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    216            7           2606    17167    owners owners_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.owners DROP CONSTRAINT owners_pkey;
       public            postgres    false    217            9           2606    17174    pets pets_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_pkey;
       public            postgres    false    218            ;           2606    17181    vaccines vaccines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT vaccines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT vaccines_pkey;
       public            postgres    false    219            =           2606    17188    vets vets_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.vets
    ADD CONSTRAINT vets_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.vets DROP CONSTRAINT vets_pkey;
       public            postgres    false    220            ?           2606    17193    workdays workdays_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.workdays
    ADD CONSTRAINT workdays_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.workdays DROP CONSTRAINT workdays_pkey;
       public            postgres    false    221            D           2606    17220 $   workdays fk261vm7jaaxrgn5okxaw57h5bi    FK CONSTRAINT     �   ALTER TABLE ONLY public.workdays
    ADD CONSTRAINT fk261vm7jaaxrgn5okxaw57h5bi FOREIGN KEY (vet_id) REFERENCES public.vets(id);
 N   ALTER TABLE ONLY public.workdays DROP CONSTRAINT fk261vm7jaaxrgn5okxaw57h5bi;
       public          postgres    false    4669    221    220            @           2606    17200 (   appointments fk62dl3dvwsbveq3vv067becwmj    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk62dl3dvwsbveq3vv067becwmj FOREIGN KEY (pet_id) REFERENCES public.pets(id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk62dl3dvwsbveq3vv067becwmj;
       public          postgres    false    218    4665    216            B           2606    17210     pets fk6teg4kcjcnjhduguft56wcfoa    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT fk6teg4kcjcnjhduguft56wcfoa FOREIGN KEY (owner_id) REFERENCES public.owners(id);
 J   ALTER TABLE ONLY public.pets DROP CONSTRAINT fk6teg4kcjcnjhduguft56wcfoa;
       public          postgres    false    218    217    4663            C           2606    17215 $   vaccines fkefysu25vbkfsin0kwxi4lghvc    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT fkefysu25vbkfsin0kwxi4lghvc FOREIGN KEY (pet_id) REFERENCES public.pets(id);
 N   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT fkefysu25vbkfsin0kwxi4lghvc;
       public          postgres    false    218    219    4665            A           2606    17205 (   appointments fkij3s37eghwey25hfo6d7xwky6    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fkij3s37eghwey25hfo6d7xwky6 FOREIGN KEY (vet_id) REFERENCES public.vets(id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fkij3s37eghwey25hfo6d7xwky6;
       public          postgres    false    4669    216    220            �   I   x�U���0��2�����&����C����wC��E_��'��6f{�(=�G4K_ٌ������)"��2      �   �   x�U�=n�@�����-!��֐�&���h���&�5�Y�V܁�ać��5�g�%�V���GT]P�Z���r2ڵͭ�?��L'�
���'֫9�QG�˹��S�w��'*�;�`��K
Nqb�jS�����Ŋ����H^.g�S��Im"�,���;��7~��k� q�T�&�ǉ���eYvD�V�      �   �   x�����0E��,����p14@h����i��������ߓed��8k���|pZ��/�;�p��ǒ�X!�|f��0p�=�O�qd� �.���N}t���������jԢ�6l��3�����$���g����UI�䊻5"� m�R�      �   v   x�e�K
�0��]*�k+ƍ���Y��x0/�Ŵ֪�*��H��ڥ\V�EC�y0�8�4��P�q-8����5>i�۷������iP�O}�֣}T�UKm1����#�f�(��-�      �   �   x�m�K
�0���U
�y�:�p�&ڠ��A3��;/f�Z�~�k &���4�����
����s�8ޯ��ZACV�!�v��5�?���mg���N-P��<�]�?"k��U�S7�r��Lٗ\8��]}SA�%C��"~�cW      �   I   x�U��	�0Cѳ���-[i���s�!�����)L�#-�^BN)��p��C���S�-���[���R��H�     