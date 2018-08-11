PGDMP              
            v            digitaloceantesting    9.5.4    9.5.4 ^    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16390    digitaloceantesting    DATABASE     �   CREATE DATABASE digitaloceantesting WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 #   DROP DATABASE digitaloceantesting;
             digitaloceantesting    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6                        3079    12395    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16534    ar_internal_metadata    TABLE     �   CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         digitaloceantesting    false    6            �            1259    16437 
   categories    TABLE     �   CREATE TABLE categories (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    kind integer DEFAULT 0
);
    DROP TABLE public.categories;
       public         digitaloceantesting    false    6            �            1259    16435    categories_id_seq    SEQUENCE     s   CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       digitaloceantesting    false    6    189            �           0    0    categories_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE categories_id_seq OWNED BY categories.id;
            public       digitaloceantesting    false    188            �            1259    16563    contractors    TABLE     �   CREATE TABLE contractors (
    id bigint NOT NULL,
    name character varying,
    description text,
    card_info character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.contractors;
       public         digitaloceantesting    false    6            �            1259    16561    contractors_id_seq    SEQUENCE     t   CREATE SEQUENCE contractors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.contractors_id_seq;
       public       digitaloceantesting    false    6    200            �           0    0    contractors_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE contractors_id_seq OWNED BY contractors.id;
            public       digitaloceantesting    false    199            �            1259    16448    expenses    TABLE     u  CREATE TABLE expenses (
    id integer NOT NULL,
    operation_date timestamp without time zone,
    description text,
    value numeric,
    subcategory_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    to_divide boolean DEFAULT false,
    track boolean DEFAULT false,
    contractor_id bigint
);
    DROP TABLE public.expenses;
       public         digitaloceantesting    false    6            �            1259    16446    expenses_id_seq    SEQUENCE     q   CREATE SEQUENCE expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.expenses_id_seq;
       public       digitaloceantesting    false    191    6            �           0    0    expenses_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE expenses_id_seq OWNED BY expenses.id;
            public       digitaloceantesting    false    190            �            1259    16413    incomes    TABLE       CREATE TABLE incomes (
    id integer NOT NULL,
    value numeric,
    operation_date timestamp without time zone,
    subcategory_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    description text,
    user_id integer
);
    DROP TABLE public.incomes;
       public         digitaloceantesting    false    6            �            1259    16411    incomes_id_seq    SEQUENCE     p   CREATE SEQUENCE incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.incomes_id_seq;
       public       digitaloceantesting    false    185    6            �           0    0    incomes_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE incomes_id_seq OWNED BY incomes.id;
            public       digitaloceantesting    false    184            �            1259    16525    savings    TABLE     �   CREATE TABLE savings (
    id integer NOT NULL,
    operation_date timestamp without time zone,
    description text,
    value numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.savings;
       public         digitaloceantesting    false    6            �            1259    16523    savings_id_seq    SEQUENCE     p   CREATE SEQUENCE savings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.savings_id_seq;
       public       digitaloceantesting    false    197    6            �           0    0    savings_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE savings_id_seq OWNED BY savings.id;
            public       digitaloceantesting    false    196            �            1259    16391    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         digitaloceantesting    false    6            �            1259    16425    subcategories    TABLE     �   CREATE TABLE subcategories (
    id integer NOT NULL,
    title character varying(255),
    description text,
    category_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 !   DROP TABLE public.subcategories;
       public         digitaloceantesting    false    6            �            1259    16423    subcategories_id_seq    SEQUENCE     v   CREATE SEQUENCE subcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public       digitaloceantesting    false    187    6            �           0    0    subcategories_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE subcategories_id_seq OWNED BY subcategories.id;
            public       digitaloceantesting    false    186            �            1259    16478    taggings    TABLE       CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying(255),
    tagger_id integer,
    tagger_type character varying(255),
    context character varying(128),
    created_at timestamp without time zone
);
    DROP TABLE public.taggings;
       public         digitaloceantesting    false    6            �            1259    16476    taggings_id_seq    SEQUENCE     q   CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.taggings_id_seq;
       public       digitaloceantesting    false    195    6            �           0    0    taggings_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;
            public       digitaloceantesting    false    194            �            1259    16470    tags    TABLE     v   CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255),
    taggings_count integer DEFAULT 0
);
    DROP TABLE public.tags;
       public         digitaloceantesting    false    6            �            1259    16468    tags_id_seq    SEQUENCE     m   CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public       digitaloceantesting    false    193    6            �           0    0    tags_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE tags_id_seq OWNED BY tags.id;
            public       digitaloceantesting    false    192            �            1259    16397    users    TABLE     �  CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    avatar character varying(255)
);
    DROP TABLE public.users;
       public         digitaloceantesting    false    6            �            1259    16395    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       digitaloceantesting    false    6    183            �           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       digitaloceantesting    false    182            *           2604    16440    id    DEFAULT     `   ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    188    189    189            3           2604    16566    id    DEFAULT     b   ALTER TABLE ONLY contractors ALTER COLUMN id SET DEFAULT nextval('contractors_id_seq'::regclass);
 =   ALTER TABLE public.contractors ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    199    200    200            ,           2604    16451    id    DEFAULT     \   ALTER TABLE ONLY expenses ALTER COLUMN id SET DEFAULT nextval('expenses_id_seq'::regclass);
 :   ALTER TABLE public.expenses ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    191    190    191            (           2604    16416    id    DEFAULT     Z   ALTER TABLE ONLY incomes ALTER COLUMN id SET DEFAULT nextval('incomes_id_seq'::regclass);
 9   ALTER TABLE public.incomes ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    185    184    185            2           2604    16528    id    DEFAULT     Z   ALTER TABLE ONLY savings ALTER COLUMN id SET DEFAULT nextval('savings_id_seq'::regclass);
 9   ALTER TABLE public.savings ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    197    196    197            )           2604    16428    id    DEFAULT     f   ALTER TABLE ONLY subcategories ALTER COLUMN id SET DEFAULT nextval('subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    186    187    187            1           2604    16481    id    DEFAULT     \   ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);
 :   ALTER TABLE public.taggings ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    194    195    195            /           2604    16473    id    DEFAULT     T   ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    192    193    193            $           2604    16400    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       digitaloceantesting    false    183    182    183            �          0    16534    ar_internal_metadata 
   TABLE DATA               K   COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       digitaloceantesting    false    198   �j       �          0    16437 
   categories 
   TABLE DATA               S   COPY categories (id, title, description, created_at, updated_at, kind) FROM stdin;
    public       digitaloceantesting    false    189   �j       �           0    0    categories_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('categories_id_seq', 11, true);
            public       digitaloceantesting    false    188            �          0    16563    contractors 
   TABLE DATA               X   COPY contractors (id, name, description, card_info, created_at, updated_at) FROM stdin;
    public       digitaloceantesting    false    200   (l       �           0    0    contractors_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('contractors_id_seq', 35, true);
            public       digitaloceantesting    false    199            �          0    16448    expenses 
   TABLE DATA               �   COPY expenses (id, operation_date, description, value, subcategory_id, user_id, created_at, updated_at, to_divide, track, contractor_id) FROM stdin;
    public       digitaloceantesting    false    191   q       �           0    0    expenses_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('expenses_id_seq', 2042, true);
            public       digitaloceantesting    false    190            �          0    16413    incomes 
   TABLE DATA               s   COPY incomes (id, value, operation_date, subcategory_id, created_at, updated_at, description, user_id) FROM stdin;
    public       digitaloceantesting    false    185   �~      �           0    0    incomes_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('incomes_id_seq', 152, true);
            public       digitaloceantesting    false    184            �          0    16525    savings 
   TABLE DATA               Z   COPY savings (id, operation_date, description, value, created_at, updated_at) FROM stdin;
    public       digitaloceantesting    false    197   [�      �           0    0    savings_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('savings_id_seq', 25, true);
            public       digitaloceantesting    false    196            �          0    16391    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       digitaloceantesting    false    181   ݕ      �          0    16425    subcategories 
   TABLE DATA               ]   COPY subcategories (id, title, description, category_id, created_at, updated_at) FROM stdin;
    public       digitaloceantesting    false    187   f�      �           0    0    subcategories_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('subcategories_id_seq', 62, true);
            public       digitaloceantesting    false    186            �          0    16478    taggings 
   TABLE DATA               p   COPY taggings (id, tag_id, taggable_id, taggable_type, tagger_id, tagger_type, context, created_at) FROM stdin;
    public       digitaloceantesting    false    195   Y�      �           0    0    taggings_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('taggings_id_seq', 1559, true);
            public       digitaloceantesting    false    194            �          0    16470    tags 
   TABLE DATA               1   COPY tags (id, name, taggings_count) FROM stdin;
    public       digitaloceantesting    false    193   ��      �           0    0    tags_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('tags_id_seq', 219, true);
            public       digitaloceantesting    false    192            �          0    16397    users 
   TABLE DATA               �   COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, avatar) FROM stdin;
    public       digitaloceantesting    false    183   '�      �           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 2, true);
            public       digitaloceantesting    false    182            X           2606    16541    ar_internal_metadata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         digitaloceantesting    false    198    198            A           2606    16445    categories_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         digitaloceantesting    false    189    189            Z           2606    16571    contractors_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY contractors
    ADD CONSTRAINT contractors_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.contractors DROP CONSTRAINT contractors_pkey;
       public         digitaloceantesting    false    200    200            C           2606    16456    expenses_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.expenses DROP CONSTRAINT expenses_pkey;
       public         digitaloceantesting    false    191    191            :           2606    16421    incomes_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.incomes DROP CONSTRAINT incomes_pkey;
       public         digitaloceantesting    false    185    185            V           2606    16533    savings_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY savings
    ADD CONSTRAINT savings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.savings DROP CONSTRAINT savings_pkey;
       public         digitaloceantesting    false    197    197            ?           2606    16433    subcategories_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public         digitaloceantesting    false    187    187            T           2606    16486    taggings_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.taggings DROP CONSTRAINT taggings_pkey;
       public         digitaloceantesting    false    195    195            I           2606    16475 	   tags_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public         digitaloceantesting    false    193    193            8           2606    16408 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         digitaloceantesting    false    183    183            D           1259    16572    index_expenses_on_contractor_id    INDEX     V   CREATE INDEX index_expenses_on_contractor_id ON expenses USING btree (contractor_id);
 3   DROP INDEX public.index_expenses_on_contractor_id;
       public         digitaloceantesting    false    191            E           1259    16457     index_expenses_on_subcategory_id    INDEX     X   CREATE INDEX index_expenses_on_subcategory_id ON expenses USING btree (subcategory_id);
 4   DROP INDEX public.index_expenses_on_subcategory_id;
       public         digitaloceantesting    false    191            F           1259    16458    index_expenses_on_user_id    INDEX     J   CREATE INDEX index_expenses_on_user_id ON expenses USING btree (user_id);
 -   DROP INDEX public.index_expenses_on_user_id;
       public         digitaloceantesting    false    191            ;           1259    16422    index_incomes_on_subcategory_id    INDEX     V   CREATE INDEX index_incomes_on_subcategory_id ON incomes USING btree (subcategory_id);
 3   DROP INDEX public.index_incomes_on_subcategory_id;
       public         digitaloceantesting    false    185            <           1259    16459    index_incomes_on_user_id    INDEX     H   CREATE INDEX index_incomes_on_user_id ON incomes USING btree (user_id);
 ,   DROP INDEX public.index_incomes_on_user_id;
       public         digitaloceantesting    false    185            =           1259    16434 "   index_subcategories_on_category_id    INDEX     \   CREATE INDEX index_subcategories_on_category_id ON subcategories USING btree (category_id);
 6   DROP INDEX public.index_subcategories_on_category_id;
       public         digitaloceantesting    false    187            J           1259    16502    index_taggings_on_context    INDEX     J   CREATE INDEX index_taggings_on_context ON taggings USING btree (context);
 -   DROP INDEX public.index_taggings_on_context;
       public         digitaloceantesting    false    195            K           1259    16498    index_taggings_on_tag_id    INDEX     H   CREATE INDEX index_taggings_on_tag_id ON taggings USING btree (tag_id);
 ,   DROP INDEX public.index_taggings_on_tag_id;
       public         digitaloceantesting    false    195            L           1259    16499    index_taggings_on_taggable_id    INDEX     R   CREATE INDEX index_taggings_on_taggable_id ON taggings USING btree (taggable_id);
 1   DROP INDEX public.index_taggings_on_taggable_id;
       public         digitaloceantesting    false    195            M           1259    16497 ;   index_taggings_on_taggable_id_and_taggable_type_and_context    INDEX     �   CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON taggings USING btree (taggable_id, taggable_type, context);
 O   DROP INDEX public.index_taggings_on_taggable_id_and_taggable_type_and_context;
       public         digitaloceantesting    false    195    195    195            N           1259    16500    index_taggings_on_taggable_type    INDEX     V   CREATE INDEX index_taggings_on_taggable_type ON taggings USING btree (taggable_type);
 3   DROP INDEX public.index_taggings_on_taggable_type;
       public         digitaloceantesting    false    195            O           1259    16501    index_taggings_on_tagger_id    INDEX     N   CREATE INDEX index_taggings_on_tagger_id ON taggings USING btree (tagger_id);
 /   DROP INDEX public.index_taggings_on_tagger_id;
       public         digitaloceantesting    false    195            P           1259    16503 +   index_taggings_on_tagger_id_and_tagger_type    INDEX     k   CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON taggings USING btree (tagger_id, tagger_type);
 ?   DROP INDEX public.index_taggings_on_tagger_id_and_tagger_type;
       public         digitaloceantesting    false    195    195            G           1259    16489    index_tags_on_name    INDEX     C   CREATE UNIQUE INDEX index_tags_on_name ON tags USING btree (name);
 &   DROP INDEX public.index_tags_on_name;
       public         digitaloceantesting    false    193            5           1259    16409    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         digitaloceantesting    false    183            6           1259    16410 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         digitaloceantesting    false    183            Q           1259    16490    taggings_idx    INDEX     �   CREATE UNIQUE INDEX taggings_idx ON taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);
     DROP INDEX public.taggings_idx;
       public         digitaloceantesting    false    195    195    195    195    195    195            R           1259    16504    taggings_idy    INDEX     d   CREATE INDEX taggings_idy ON taggings USING btree (taggable_id, taggable_type, tagger_id, context);
     DROP INDEX public.taggings_idy;
       public         digitaloceantesting    false    195    195    195    195            4           1259    16394    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         digitaloceantesting    false    181            �   P   x�ɹ�  ����`��Z̔���a��}6ݪw]��Ӝ���6[W�HѢX�c!.���%}�����������	      �   #  x�}��N�@E�ݯ�d5{�QS �Иxod�"��E�d��3st��16S�ۨ�
��� 
d�!Af\B�Iݥ�E�+�؀bē,!Ь�C��p�� ��v%/!ХZǯإ�O�v�fWg*	& g��J=�����锎}�'GK��׏�pW�����8�H�m�}�mc��`��wN\��@;�6��3@Cމ�Mq�@{���a<uy�㊠��C_!���cq��ص��C�L���Lt��"T��4n>�?#U�� �d7#o��ߡ~7Z�_����      �   �  x�}��RG��3Oѧ�bm����M0x-�$�H\\1�Zb�ZI��fWx��\y�ߌ�+�"���*��}�3�u�r��U��"����vv��`o�h��m���x�b��%�I�1���Zm�mq6&d}���L��QI��pV�r��5�2�¬����"���җ�8�����QM�p�`�W��W���ݔa�����7 �+���8���#���g�˳灕ȄN�T6}�PC�G�)Br��t@q��p����LH�*8:|�*���cX���k�w��<��K�v���Zr8�� ���i�,2c��p�d�)y=�e�������t�4| ��ŵ}�ე���a.�l�R�:�~�����'�ϗ�����������=(������V��ⳟ{�\V�
qy�o�E���c2�`$Hْ��A��@��nxK�%�@eU
��V_����n-K[{�[��Ԁ(gd�?�C�:�[�IL�v�L�|�a���.�(��*��^�|ydq^���܊â>X��Ť~y�B��jЗ�l&�Lڄ;��7 �9i_��X��q����t�u�*Ӏ(�$?����s�'�<�J3��f+Rfd�\��u��7�����tM�P�I/N&W�,��A�<]���.Fr���B���U�tLk���[|#�[��"^��� �UE�<�%UK�5��_�"��HR�5��q���A�1�8��V���2��R�9ހ(�d�g�4��^|��=/�amm�a-��c-����	hjL:U�Y��f������d���m�3�ȸ̈́J�aڸD�#�����Cب%v.��f�6 ��p�c���q����L��B�D'�Ng��͘©#���
Av����E����'؍�l����'�,m@TH��ǟ�ܤ�SU��2N��*��
E�Em���f^	���D��=� �<���G�p��p�����0����!D�m�� �Z�+�
C�S_�Ά���\���¨D�%a��j��Jدm"��ZJ+���t�Y1,��^�.�218Z�i@T8�/ʉ�yQ%MR�8_��
����8����҉Tڬ��*��~�'p�����l�S�.~l�l���JA~m�Tx"R?���+�N[Ӏ(��q�D�������np��%L�	�CH����	k�˄��qX���v��:�>�>,w��2	���@��d;����y.!�!���m@�$����C��      �      x���[��ƕ0�\���a�Qe�=�͋nM�\6eڊ��@w��`UzQUjV������ۮ�D��='$N��8<�N�9�۹_̂�L��/s���c�����������lUg�����Ŷ*����p*B-�[H�`᯹͘~,�c)��f��9�{�������1=P_0�tv��<��rK�WA�����J���
��?�>��]�9�x�3�p�9P�|��\�|)�z�+��P�1H<����N���-v����My*��l[d���9\feSd_f�n�ݺ<f_d��U�?.�Z*uD�=li�0y�;�\J�uX��>�ɡ�.�cv��7p3��񾸺jK��ӕ���.�6�s�n�L4�p{R�-�PX��@=v�$������n�p�[
 ��IX�t�2��\ρ��`&�g���'.��?K�sn�(, ���5��9��Ղ�:���cn�F2''d(�'C. ٥o��S���p bJ�?rɸ����E����B�l��&�]�X��if��u������$v��J'���	��Y�2�M�׏9�˘�ৠ�x �YJ�B��fVOw���=��M������-��6����3dɩ�����e��[EA=A��z�4vlsi���ݢ��*kf2b�N%6�'tK͘�j���@�&�u���֛b"�i�������!��N 1yz��x,Ē)Ù���?�����wٛ�o�~xs��������=?[p�|��n��V26�\��s�s�4~�ĿB��4Y,yi�?] �Q�rVK.�����p��Ri`���z�d��	�2Kg\.�W1��U�J_t��y�I|;uWQ�S#���þ��VW��H���M	�X�%3����G�~&Ih!ӲX���1J�%}�A�J5(W3�^�Rfz}"P���(�&�:���ى؊@v9�-N��i� 8*��9Q-��"����G8��
��n�#Pw�R&��X�w�Ե�ܣ�����G٦�:Տ��aw��sj6��Q��^�㳉@�U����u���G&h�ǹ�C99^e�i?�	�x���s�B������Px�Y�������!�Ĉ�I��M���G��%lh�^X�I|�c�p���*n�&K�=�W7��خ����7�,|w�:=ʀ~s_o�P6�1\��6���ōj���}�ʓ�2}kڄ��ʌ�E�6Y��Ro��߭�l�ޔw�ܻê��3H�S�ݟꦼ�VMy�-���нܒ9�&�?�B�>�Z^����/�������[��[s[^��0��P�Y:)���o5Q��z�]��渭7�5���1��8\����QPO�( �)��S��[�����.�[�P�퓉�QSPO��S|�$�c����cI���t�+���G�Wo��|����{��
����G�yvל�Uv_���O�d��$�^�O���,� r
�l�m�&���..�<P4�ʺ9P�rr���-7��z�������]6�j������t��;6�ēK�Ky]\����;
��QP�0r���%S<ȣ@��m��9P����\��p�(5q�N�]�����͟���{aP#5s��*�AD��j�����0��/�y���B�	!
��'�Y�+�ݩ��m���7 F�۬����)���p�P���}3&� �,
�&7��z�F�N��=���3��]}U}��[6*=c��fT{���SE�z)ܙ�n�M�/j@!hV��i�瓛OA��$��E���Uv��W�#K��^&) �����A��I�)������v�~!��'(*������./�]^��@�pb�%E���T���b�g�/���l�f⠔�8���6�(|�r�xk�?PŁ���/ﳿ�ͺl%'���U}���^���� �����]�ʮn(��_������{��,c��J��O���q�r`������k@p�|��T߇�.��9�ʢ���'�� ��52��'=�=H��
���ӧ�ڗc���z�9SBρ�'��gw�P�qU	{V�V������վ��u\�� ���ks���Y5�2.�L�s�&k�y@n0���?w���sڨ���M�߽���?���糠{�H��z��c�����cF�@����A�	��<�,����|�c7�C�5�ex�|�?�<Iƻ�N���7몼muZSó���s��rSPO����x���l�n���Ɠ��c�^��-\�����9^��9���A�aѰ����[�F�ն�n�6��5�ͦ^D[�"�	,G_�.���w�/��2�a�+;#m�3B��$���t^�*�u��(O^��bj����^�G���#c�ë�l��W,L�Kny����>�5v9��A�����?�%\��|y��⛳/��{�&����T�t���WN�ᖘ2:���_V�]���W��$����A�F�̪9�n3�lTB��	
�:�u"�-�j���
����DNmQP*�`�6��W�~]���?�����R����B��(��YP��d�� ����0�	v�@�D�Fx% 8�|)r`�#�)����߯���ׇ��O��h�X[s����´ӭ 4�{�I����R&Lt�sx�pq_����x�<�mo�&�#�Z)в[�,G�JPs��0)yx�4�Dd�WŮޔ��T�UJ(-����W�����`�Gh����������M���w��WǫS�\.AgNk�L���8��w��8i[A*�@��4T�ϾzET��r(5(�Z��H<'��t&�`Xr[^��t��_���=���#�7-h[\�����
(6v�Xr�t�3z�^cL��ɓr^_׃S��V�~_]6�6j=�SX<~�=BZ5ق�0��~�m'=�����""CMlU7 4���yf����F���h+���|Ŧiz���nK�tj�����m>��X��ӓư2�rw'��,���{��� �d��������vn��������aNC��@�2�R�!M
B^ ���˓�{] ?n@�`��e�a`اH-�
欘@$���*
`� ����弄˲u���RMi1�̀�Z6%kc�Z\��6��|v�,�`����f�>�{�>�l�k^����;��僲�����_ �_ ��F�M�O��?�
��E��"�#s&��'���`m֛��n�t��XT*�4rzi(����˺)/�I\ׇLy`�l���O�ɼ��s#�ˊ@==����f�O�
����_�U����#'�-����肉.uc�=։�[Z�9P�=6�=����H���r�糠{��LlL�d���N���9Pиs�+*�
�ϲH��>�l���B��P�?�	Q`�r=
Y����T��=���޹�p�c���8�a���3�^��y��Ӧ���,�	�W��Pp���#|�$�e�fL��7��7���=��J�=rs`7�-�:-b�X(d�l(�$ŗ�wg�"GG	x�� ��L*5
GI�3���X�jOS\�������sjX�4�S��A�b�:Ĥ��I�y�1{�����2�"ۡ����l]�>�Ub�P�wF(#���\��M>�%?༸�^�u�;��zD�����W4�b�4Rz�w<1d߆��zN��}gy�+���N�(̪R�$���Tr����
Yh������3�+�0�Z{�)X�1��T�ԥ@Ut�S�g

�I�O�d'�]���E�G�G�?��s

�%�E쨧ŮD���M�n5�d텣��������_'�ѽ���	yK)sifA=M�m�J��-�W��0O���خ������qzi
�����xO^����w>�|��>K��ȃ���n�"{R�� ���3�{����\��(tI������Weq��p��)�us��̝'�]�ZC?���Z�I�R;g�@�c���XuU����y���3�P��\8��@��u7��� q���zSM8f�(�I"������������m�.���O!���*M������}    ���s=:�&rɜ�s�pCt�R�u�͈k��]`\J8�YPX��)4A�]���%���LD
iэ��R��e�����������\��=�� �=[
�4&	P Ó+�8�:�zDG���)rq:��V΁9�$��*A���Rx�TI9!׺�9fƺ1����g��̈́L���;L>�ْl�6�F���9PX�J��V�����Tl38]D��aZ�W@�T���N�nJ�ey]�ʏ�MS��ס2>wXsc�(P�ѯz*��;h�_d�X+�K.����\́�vI�ﮐ���������G����Y���'ks���i���<I�����4P�Մ�p�;�K�Mb��,�L AI�^kP�;��lS��ڭ1�__�~��M��'_Z���T� ���lhͪ�@���74>���[�I�.��UUgo������/0F.`[JƇ�$�`�:ύ�s��[dz����K���N��0j�M,��T�Vtn].����H�(�O} D�h|=���̗4�D��G���VN��(P�y�&&�1���Cs��&���n�٥X"�I:
��$`���Y�=;d��y�k��H��oּo�UU���޼����\0%�'-H #�(�!G�!�ڽ��:[�*����
{�� ��/`����+$/BM�9�Փ�}P��tfH�%Q��ȭ��:q�|��?� c�y{�
@YK�z	P��*�w�����7ƕX�YϤ�v)�r9
��,I����h3�}�^��
x�1���)(��#	v�����>�ʮ��Ť��d	�Ʊ�u2�;N�O�"�����Ŧl�*�?�{X�w,!e[�#F�qMA��LR��p{{�-�TE�Q��9��vs�@E%�E>@�+�KN�(��I^�lIa�q����A��s�pYL���~���rd�v8*Z��2
�t#~�q~t�v}����v|X(��<��c�SM�Ǆ�9W�]MAa�lz�k��EH���7�_a��܀_��v���a_mkP���
�b����|V�#�p�8Cs�@jP]r

�Gn*���{�-���4��"䘡#�es�@+z���̙{��1�G�,�\�`���(P�����\�JϢPѹ��/v��u�z����4>�dBܗ�2'��}�@��I.��G�'d�E
�r-f A/�m���Vuv[a@��~�����K!l>��И��R�����N���S��G|V�]�k|��p�pvV�r�D�����p/������`2� �	֚�	Ǫ.�:NN�2r{T�>=��efS�R��D�*��Y��8���J����cs�?���JV �m�����r�+�zo���h��Ȏ���p0��¼�t��(��W�|�e}[gmժ�'���$?cyNT���a�$/��6�]���jڊ39%��^4r�	P F��4g�lS~,o�2舖�0���.�L$@�}'�,���&/:�	G�����(�%���.#fn����(rer���� 厸i�@H'	��%*.�Jс��{�a$e�	P�30Z$���-v�켾;6>�Ok��۝����ή�;v���%V }��G��b�������������n�ҀE �#V�F����r���p�6�ŭ��W�ÌY_�߹,G$1����J*��9P�$�$����r؀x@� �+^��DEf��##��Oy�4�S�nw�bF1 �s^�ʱa���s
��"/�;�f������/�f���0�LT �v�^�)(�$7զ��zWlW��1+�X�C.�`�R��9l¢4W��&�[�US��WW��+	�L���뻔�D$8� Z*��'���/�&��e�)-���R0=��0�I�$��CB:�x�]�5�0%@�����g�.ڲ��ˍ���-Fx��f ;^O��C��(���}a��o�.)N�I��	Ph��f�dZ��|�!.u���D�4� �=t�'v^�'��?�l+6��Qt`q��)1e}��PN�H�$%���r��j��y �+k�\p��[)�(Ibm!��#GL��Wś����A���좌����u��Z>j��Tb�:6�]�\�� �;�~�ߔ�e��}vY4����O��6�䷛j:�������&C�7���|�u��Ӑ���� h��p�dLv
d��K��Z�C\����75ؒ{gbJ�aw�p���۪�bʶ����^��U���9ϼipF�����u�>��� ��u�W�������FLȹ�8e�DO�(��4'e@F�e�7
9z,NjT��p�����3p�M�KIPh��'ч���r��}=jM��vQ��MFQ�^\�������b��+��!�P2
GU4G�r���"I�9��&�(7?Uk fc�s�$1�%W�	1
�d�X�_>u�Ⱦn�+P:AwY$��F)˥�s�pb*I�u݄z�b(���&t�� ��ԙعܣIPX�I�ܢ\7�._|�}-:N
c>�M�$I�] z���%��%�����)�yT�2���-�����K��5%��rϭ��́M��X����B8���o�;lL����J���]�������.A\�Ūkp08����h��UdD��/�=����7/C3A�xU>��ʾ���>
TT��9���"k������e���~�����	�ދ� ^����MvS�����祾��W�W�l�����V �ЛXr6�r�ʤO[�h�z����ʺM�u5Ƚ��=����p'�r�����++������-V�,g��"S���zW��ܮ�]�ĆY�"w3�p4�}�������}_}�u6<��[��mu���C�V����9P��t_�u�` $u���)��@�i#yPv�d�U��}�� ��W?<
H�j���+p�X٘��軳�����n,vSP�,���P��j_su{��vX��i"{�k|��uڸ9P 90�(ݬ��b�[L�B㲍��}g^�}I�3�9� �n��6$��}甐0��>�CqL�w ��T���ʱ��|�\�O�b�����)�6#�_�q���И{��ý����kl��ɣ컢m��_��>�?m�ࠌP�N!�M�r���@���-�n��N�"Js�6��*�Us�*YZ��(,�%�<�6�sf��D�ea�$��<�s��Fux�4��{+�1�Sy���ն��)�W]����,�}�!*0k���@��C���Jy�UJ^�-��m���
��N%	�N"��ƯBk�6Or���/�煩�.��J6�ؾ�����jw��&��DL_[�٫Xh��rdω�x֕T����gO��Z~� j}�F0�fA=QɒG�?bBQS_���k��1nΦ$����Zk��jAҫ��*G��ݠ��qw�^���۷ϟ~���k������7�Ij���!�n@��vn�H/t��oT�IX��$��%|7&JF�L���Tk�ɓR�+�Lą��>�#��T�J^l6U��)wX?�-�t��פ%�H��Œ�W���['��>ޖ�C/5φa�^��L���R�!x�F��"�{�K��Ҧ�)�)�ɴ����^|�}�M��vSV�kߤ){Yn�w�Ű�x��p��E���5�TV�@������p���.4��B���hP��9�� z�l��wߞ���۳�8�2`�UtNh�&뢠��%H��͞a��&{�)֘|u�$�i�p��^�����
X[��{��}h��`X�Lr��l��ě �Of�8Ƿ�< �B��3"Q�d&GJ����Fc�r�4zxq&`�a�z>9U9��P[cǩ�}{
&��Y�]�?�Mz�$��m�/�dVM���/J粋.��i���E���O���zO�E���r�9�F���>iȃ欌�C��ht�c���`��!�l7��`���=�D�U}��4�IzE���SV9ܔ���rؘ|H����&'~��5����#����`��p�m{K~�\>��{�=u�h�d�`�~(o����qWbۑ��?Ǆ׼u@*k���Y�x�i��*R@��%a�[ΒLcy�1�Tc�#�M��K��|�o`��`    �S���/+�Y�J��mjhh*��XWz5�ȁ3:�� _��}��a� Q$F9�쪞�a}�A��$P�t�a��4`��RYi�X#A�;p&�41�܉VP^���bS�/7>�!I�a�<��͂�н	���wGtE��@yߔe��M���W�\1��P-�ʐ賓&5&����<k��b��>�GD��g���ogA��ֲ�K�P �o0+0|k�-D�e��lE�<R\}���9�����|u*?���2{ZgJ�iy��G�h��?� ؝��;P��Ӫ��[lSȣl��M>��-�,��=<G>M�_�q\~�2�7(ӜQ�� �ٺI �6�q��M �U�Az�&��1�'ك��!E��^ܖG�.����L�"	I�&���B�	k�x��Á�Ќ��(vզZ�[td��љ�u̴�s�����95�<aѵ���MXjc�ȁ���y[���{��X7�/Cl;�������9�H1R���!��&	F��jr��S�ŚNP~v�g��mcU�n�uSb�#��-0�S�t�'�-�`B���m�x���k_����|?(��9�&A�
�MQ�ƕ�9ֶ���:���� H�![��o&k�r�%�A���1!��,�(�N�c�.��|�L����ޫ	����ks�@��OJ��؈�9&�Ǳr�c����wy
�ذ$��O�#�����ǜ|��$~ς�x���Z�ƂC3�HA�b��x^���T��+4�6�K�.G�'h�z�~i`N9�r�7p��h�1�;G���&�.?��H���]6
�$��Rc������T�������0����as,���3=�%��<Aav��9Q(���@zi3
��� �I>�@��߃�]�n��hW0���7K�i�KÅdz�"�R�W�8l�n���9�
��ȡ#��1��@�Q�#ew�\	`��=l˗Fs���"P�g��|����P��-tb����T
O�(��E:n���)p�4;#P@O\��m��1}�K*���ԣ�D����|iy=&=��Awг4z�)�m�U�:�$(��I�?l��Xk��2{R����a�ڔh��AF4Ҁ\�����L΁�;e�6E�2�xL�K��k�����º�J�ﲒ�T�b�T�L�,������f���U���p]�oB�X,v#�r�[(�IRðYj1�������Aa1�z4Du@ϫ/�24������Ƃ�}�(�O�RPO���C����~���H��X��&�B���L۹��D*Gx�5���]���*q���0�,��,����-
eT�ɔ�HI�	BK����#���5��a�~�nQ��̵&�|e�s��; 	
��"���o7���2��?؎-�x�C�mt2wZ΁qC5�z��8�q��^03�'��(�����Mn�˪X�P�v��L֗Ů��Mj׋W-�P�<<��XD-z��C�@���?�=����[@Q�8���T��ҳ���=O2`m�܂lh�=�w~(���������S��G;C��1
�J���޹sۀ�w4�9�������9�zچ�T��<e�7��9,\۲�Qm2v�b�J=
���/�c�dLa���v�D�u]ޫ��05
u��ž��9��)\���㳠@�$�|���Ix
�2ba�Sz��;����*J�]�9Q0�@�%	�n>���J��U�g,��<3���	P���"�Y�^R<�$��ο`�iI�"
�ɥ�����堚o�Uۚk(nKA�&n�ɪJ�{^�p��o'S�+?%7g��\�����l��*l����Z/�B_��;���AGˇ�n^˹1�`�����q0��̌�$� �Û�^8���O�S}����H{��uIX�%�}�3>�m�X~)�R��-��VS]P�!P����~`M
ۼ�r��(�'�>���t��:;�~

´�fw�=� n+�b���:�Iz�J��Ww�����`��t�P�(��K=�$yW������0g����ӑ���h.\�.��!PXq����:z��9W�j}X�<��3�Û\Qh��^���l�e����P5H��|ɨ<�g��;'��F��Ҥ�kS���r�lo���ag"���p���X%��G/��D��
��N�s_�0Z?F��H���P�Rm�
}h�-4ŉh��s75�!P�CōpNp�e����������0n��U��,���`z�i�.lN*��q�/�v�j5K-�!�%������fhܧ?%����k#-�T��/γ����I�M��v�ƙ�qF�gۜY5v�vy7��!eȐ�AVl��d/�ݾ�[43�8s?_ء�hL���破�~H��U�b>�MO2��/����4V|JRj��@Ფ������эI�<�����|afC�LڅV�|#��� ��y`��n�H`Ȭ�:��{��T��<���903+�@����m���&�NO�o�ʴ�|,�"P�7�G"R�� )��P�1Ru���7\���&�u'�c��)���(|�I�/״�yP$�+;BX=f�(�5bO����Y���wϳ�o~x����ُ�>z�*��~[l����`7�^cZ�[,'p�/K��K�A�[e}��nߍm$o"��l$�a�ax������:��_���<��#�nIӥ"?
#��"3��J_�,�< 	�v�M�w�~�i�:m/��E_���B�͑��}��\6m&�];,�T[��m��	U�{����A��Aͳ�O����7��[�'��4v�X7��Ē�,L5T�����&ƥ �))��z��z����z�$�ީP�$�M^���t�jW~T��n�`"�T3~��場6f�Y���)mq;��%��ڭ[�n[�F:O����`�i6��ܷ� � 	+�D�Gv)��Vy��갡��_u�F~^ܯ�#��b�;,l�K.'��G��R�l�	z(�3Iz؊-�Z��A���hpb�]��4~��I��'�9ݥ=
��C���b�8�q�������ѻ��	��m5�8�K(�g�	w)����}��|�8($ �ɋ�b�ס��CaL��)��*
�DZ�����Ҏ�EFM�SPX�Jn���}(v7]�B����1���X"G��
���;6}���W%���F[��	�m�,��Sd>�>�L��S�@�0q����l�|�'�������k��V�8)�*��/l
){1L6\L�&Cb�UIi��j�������d���¸�5�}�� ��� #P�F�b���}*/(Z����B�az���Wŭ����_�#�^N�M�����v]t_j����3jB���U�`��O�-�F��m�!��;_y�Cb���u�:2Y��w���0�-�ɾԁ�+�{H�՘��e�>ys��qS�m��eS�T��Oէ��[���Vɥc�C�����~08F��x���g���A�m�]�
=�u���<m>yH�_�SΥ��?)(�(�~��	��|��u�*o�������Um�,�������t�	m�d����R���&x�o4'e���(�Jd.����7e��������N}���3��m�x�~����1؃=ť���(��کq��u��e'��߱-�Ad�@@��f,�h]g9�ٓ�Ш�اH�u��5(�8��C�;]�J�@Irji�0���,(����H��F ���&���i"���7�����a۩�����#ŷŮ��O�0{W����
��>�j?�Ʒ���s�[bS��P�-v�h��6�ߦ�݇��*�O�P�I�=
�A�}��xS�N����5�������@�@�I����;ai�n
�������U�)�8�w}�,�!����#�\��+����q_���&(?Dҹ.��(^��C�~O�i�^�����u��s�)����M��WCZ����骽]�|�n�Q���9PV%��*���ν��dw�U�4�����-]��9PX�N�������b'%����s�ҍ�p�H[��{JrgfA?�*    ���
G����X���,�,$��,�\΁�s<If��d���v~�u7�!PX�x ������U?v{�$�'�n_Mu؝�>*�00�Ї6T�~�@�}&�#Bi_6�u��﷾'�e�ݚ*��L��usͰڇ����ҵ�+qZ�a���.�I�w�� ���/�Dŀ@��́��'��,�nw�8{Ѥ]@�
,q�ln#��_�|�@�#��Ƀ˾.�{�R���{��n�U��m�Zf`G]{��|_�����euuS|�9{R4�����F#O�����*욮?�C���bЩ����b�&��� }<�����ŵ��AM�<n\6���ݾ�J;P�gA�œ�@�*�����ڂ������e�n@�=b{u�<��L7b/��6s�ni2ϓ�����2�'m�1�3�t���цY>���_�^��<w���a�-9%'�U
l���)(��'Ʌ����_	�(� ��	-U�8U��(�=�������b����č�lWU�T�:���s���N�񣓅ͻ��u����a��O�]�w]���cߵ�]�Un?�5�׵��ѹ�8�C��-�aǅ�F�76���ns&�O"
��lk�[��+4��䚰�(�7��w������V��c%@���"��ӉX��yg�Y���MG� �'Xm���<�X^�{����־���+	9z���8��@�Ts�ಈ�]å���iU]�Gd��`A���$��Ȟ'OM.�n�U�G��? �[���U�C�r&	�zɱY6��K���<���z[�b�u"ǢK,�^��F�i��r~�k�c!ID?a���������S~��S����F�A�<I���2������M�k@K�G�~ ܔ�iD�2�t�Ă	�R�O�^o�y/��ibq�)��L�Ὧ��Iz��q�+)��1l�d�y`�]��t��Iqy\5eq���T�+pM}��=k>�rb��p�=�$�����-|	�!�߂L��V� $w�}�~i�������E�oX�عo_�Gg.M>�9	Qjߔ��2����=�⤊�����DI� ;I"��T6��k0_�)�ɮ������sޔ�ُx����4!��5X�֊�n?�R�¿������M��;gC�i[�(?E�|F�(�I�+�����ݧ_\,��S�ַq9e�	P�K6�E:������*�=�a�{\��~Ta�E���e��:
�Ur������壶	�1���v7����>��v�q6N9�Δa��C�B�,le"�J�.8<�'����qhj �c
x�
�h��������(����T�=e�>�F��ځ��ρM�9P�?Dm��޽�x�邦�j�4Ǘ�z��U �(,��3�W��=���b{}]�+,6֡�]�T�ЁF� �����>�O����jw[�=�K���g��Nm�٫M���lx�[@��-z����s����D�t �l�Wk�.4��G4���w�������r]]�A`4��U}�绦�P^�wf��L�����X.˗�˗�-���K�L?4�xWT���)����B�/�VJ;ZJz���	��1[E<2	P8��köc�t�p�Qr;�=	�L����}�J� ���:�0�a�Ii�@E'��04T���<w�����7ϞcЋ���g��=y~��ۿ�.V4�r/&'���.�~8����ŷ}����*fӵS"�O3;�>|����hQ�)0��P)�W��ܙ1m�H�;:jPR�8Z��ţ�s M�����'Ԝ׹A��H����#k��q��_-�AEѸc4���"��+��E�-�!~�3L���*pBJ�� ��q�~�&.f���շ%y�q`V�g�kvVk���7پ��K��_�daXB�wh>�Ds��������+��ٯ�4��M"�
�#wݖr�<���k^o��f���$4��n���^��%I�$�w��-����N��ǨO�m#��8���Ҳ�9�A�Tv��*r��Q�	~���b��r��4�i�����m�9P�@N��s:�q�4�.0K?�M33\�$(�J����Nʘ�h}9W,	/�����5ZM�b��1gբ�^7
$�s��Hq� �!�8+��@��G��y{�����٫�������O�_�����<{�DϏُg߾8{��������`��~Q�s`9P�`�'���e)�,��ݬ_�0 �bIR�<	�-Sk=9:
�����"���\��+t�+0�?���:��T�|W���9&�X��dz�9F�]!�d�((�I�?�}s:b���p���qE�Q
� -��<�%A��Jo[�gO��u7��4�@p|�XZ���,���tZc�pd>��Ǳa|�M�SPX�4��̈�x��K�ۖ0F���6IpZ����<NO�)��/���zv��ZDiZ?�9�MK����F�~1*-�1Ʀ��qJ��0-&_OA?A���Q��?���nMA��(��D�HA�%��p'muy��"������s���ThLA}$G��}�����=�*��v�l·�,�37֚9P8XME���"{S��F�~��bS]�쳳��To�В"��Wmc&#ݘ)(��$鿫��3P4�2�`"���#G��-�S��짲Y�YQz����cS�ጀ���)}xVn����ۃ\^��NM���_�$g���k6��X��Sm�5�1>
���}1��>�.%�+��[�Ą�4t��񢸪.�]�U	+�P�|B?a�'7N��&��f��#P�q� �����s�6���.�ؑ�[�K_�´򃓠�`LG���˦\��-և����1̰z��p����w���{�|/̌��q[��`e,[_���QG[o#�q/�ům�\�Ħ�ѯ���%^a#��zS������е\.qH�h� ��=�r�r=��B+�6Ý��q�F(#wl�S�"�+��@5��Ϊ>���YD?i�C(�T[3
4�N�R.H_B�m��⥶�c��^YA:JKCx�����)��וal� 
�	�ֱR�B�r�w`��9P@Ox3ѐ�i�*p�[�� ����m������Wy� �MW���>K=�CrA�aD��K�R��EUo�����ɮ�r,ň�x/U�su���r�i9y).Iԧ��Ԣ8f���ɢ(��o�K$|��m�9A��(�L�PP����
�C�([�Gߎ
gc�B�2s�yȶ햙~��>?���pøO���y��";���W���̿\uy��Oi;d��5�s��v��Wl���R��7�\�'׎�G��6��?��H��;�&�d��*zI8I4j��T���ǻMݔM�YZ�)���	���΁�C�$Vj!�"�1F9���^ -�eq�t�� ���)�x�����6m6���K�����6�@�1�6��ޫ.{@��O�K�"�����2�/��+����z7�uUb�v��u����B�hŶ��_���wX��ʊ���t��T�n�Ī�>���c.�p��ղ@A�vTk�% 	�&qhZ�s]_U�#�ڷ���j|J� ��<���La~��2I���({_��&�����^��S���S�S�_?�7M��\��&�����'��Z���;�EA��sG����%����E�"��k��� �i�$�+,O-_���OT���1a�@�2K���v�p(�1��̊@r�D�M��)���R�����W�v:�,��"�b��� 1��5 ԟ�娚\_V�(rjsE�t�2�n��$�QI:��]7�\�;d�*I�g���Q<	P�f�Բ�C�.��K?��^!����e�Sm���d �����p^.I�gA��,�K��nQt�	SIPȃ�}c�x�о�Xa�I�;a�z���F���4�'̀ ���n��V�,���]�BO�e�����T�~ jX������9���"ORD�C�ٶ�?��CQ�g%IbT�`9v��&��X��,���-���Jl� �1��ĸݸ�����c����ivC.\����C��    -������~�p�GN6����N�'��I�C:��ޞ>�z��6j�}��x٬f\�9P��ľ�54My�� �7u�*6 }�{� v,c�� �u\�!��ț��,�%�ce�}y].���NH)lK��^k���F��'Vl�lvҧ_�mb����$��y�1�ē1���X�灞����t��l�`�<�GdN���o��ʇ�Lm�`~8���*M�=�]�1+�qN�Z�)�6����U妾�7���m�SJ=��zB���AXӨ�o���P��G�#&~t��pV5
g%�4���޿�=+�8�Ϧ�y���Y�)l.$�>x�E����P�V�`�	��>���v�7�U��o,��ND�����7_ӂu<��Y���_a�I�/��!�ϸbp	�(l�����0�IR4z,�m	淜��.yb�w���T���92sm�-�9PO��I"�V&��rz��s���'ѷ�:;����)�)1�met��9P F�M��WW 峗x����n���V����(�yx�IP���d"g�|?��� ���!�S���Kd�C��V�����-\��C_�$(�N���R���p��'�ϫ��'>�� Ћ�[Hp��9�.7����YK�/a�zt�N��j��gͺ�|�&gm���F��z=�ܽ�#F�_�wq�;� wi��O(���3�@��S	�8?�Y�O_����.�������stxЬ��v�ڰ��+W��3�S�� �J����$�1L�]���l%1�hY�OP�g(���C�zh�$M��n�M� ;i y� �W�]q:4������{�� I���QcTt姠�$�p�����M���m[N�+|�/�����
����~F��A$[*"���2y��*.�#hL��w�^���E�q>
�Կxy;�T27��9P8]��i_�.�g=L�����P]�"6y��	^��[죴�*�+�Z_�����G�����=�`�$A�>y�4����#�mI��[(;�%Q�4h��9P^r�q2�3<�B6�E�>{����0���yܽ��]ḵ�s /A�"�_x:q���c�Bi���-�i�.y٤DB���@�aK�#i"�:�������'���F�y5�<ʨK!�3�����s_9����(�i[^NO@�A��q�0 �>Y!M�?{y��y~���7g߿m��|g���	>	
�ȍ�5yl�>=m�Emp9�	�(la@T"�:�)t��S��s_�`�<,9OD��~J�C��d+��8E�Ƹ���G|���������M���[�o�X��ܡ]�X�m^�)l�o4�HAnMR�����������ܒs����.EN��"�s��~�f|b��ܷs.�ܩYP81�>1�Wnzd����pbҳ�v��~[F�Hi��v?lU����7$�'A�I����B'r���2�=(�ĝ4j�.C��OEA��p��'�����O(�}������������XRg�e";��՛�-�q�;�Ɩ�(�ӯ����4ѱ��B�q_^���Q�ׇK������/P�m[+���<J�����or��x����N8el��32?}Gp=E�P� �C��6M$ѷY�yT������ŧz��z�Q
#��cr6g�������Y�-6������X#G��=��ꨳ������cvY4��C����Z�石��]��[[e�}����f}Xpi�e;�e�)Hؘ�/��+l�Y�7}����^�}=����:rɘ��d�((�����Ǭ��\�`��(05
�KfJثl 5���K�a�2LtL�x�����p\��{&��יA.���SPpM4�{���b��+�aѺ*?�÷��vzG�d)O'V�as����4���.�{d(I��
�I�IPG}�JnAS} �D[9$�(#%�;��N����^vm3}�hVMXO��Sms1�׭ǡB߭''��($�/7۪u�c19J��b��`�:G�hM\r�֋Sq{���}t�QVo�p�o����w~4�J�|=9���-��m%&��*��Ù�AH���?�.�����6�F���4c#\�d弫̙�լK����=*���^F��g~�3g�|Կ�=�ȉv�·KLK����a�=Cq1(O$��@z`xG.1���0�L�<8e����Y0�ni�,���G���$7��íW՟�\�¾��Ŕ���%T�I�t�����{�Κ]	"�p@�.�W�Ow�M%�
C�֙�٣�yr��5�u�`�/��Ww# ~�Mw�b�z��m�u����\+��P-m߽'r*����"6Nd�z��Hx'��aC.�@?Q�ȱ���az�>�	��$A1��%SM{<Fy��_�0 nT,WڰvoP��@����LnՋj��G��w��4⵴�ް��Z���=ش;�m�������I*���̹ps�@%�9/���d��vS�1y�`�ے)ھ�(h��9P�MܤQ�A�q��V^�!��E��(�AbGy��l�#������XR�٣�z��as�nYC4VƳ G���b�+(���)=��k�a䑖Ê������=�A������^��r7�N!�����SK	lp|��?s��96���,�g�>���7%����b��1C��8�0ᓻ@!�>1�h�Lר,�}S]V���Zh8GC�B����p#�{5�y���D/-@�������,Z����}+������:q�����ְ1[�@a]��-y
��Zb�KO!8K�󡙸�����D�"=c����_
X���`,N=���R���~����E[�����^U�j��~���|��pJ́z��T�B?��0��u}�œ����,*m1qZN���.�8 Y�HJ�H1D~tN>�N�y��[����[��<Y\m�
�z�:L����C���:�v~�c�sZL5G�"��CmVB�	k�S���t�)�_����9��B́�bl�Z߇�͏��NR�-L�%%@aI.y8�V�	n�O��=��k�a�1z6�30�0����W�z��A�ntc:��'H&ɳN��HkۯևM�6.N�z}����J:!��X��Jp6���O��CHF��K�G"���9,�h�uσ��`	�uC�,	�	}��$�o� (��)��F�}/E-�=4~���}��j����%,�q���<H��$���9��ae�^�U�����C��t�L7�CM�PPc�J���i( �>.�<H�$��O'���o�0 Amx �1�����$���U��/�nw37��q��v��3�p&6Im2�7ƃ^���"SH @n�
4�n_�o��ܣ�WG\��|�4�OT>]�Dy�$z/��B�l�#*� ���q�~�.���<�K�z��i��q�S
X��Kl�$�W�B���JA��J�a�:Px����<�{|��8@$e�SU~�{����v_m���?a��<��of���q>ux�4�����>���Y�cv���7g�ŏ�/ξǖO�_�^�z���ߜ�˓G����o'����pB*�h�n���mʧ���u�gK���W]UǄ;�~��p�������Ց��i�d�o��o'AA������l!�L@$�>���	

|��.�yr-�v�Hm��E��e"�Z*�I���jhl+����kxϮ�����#T˥;�9�#́�N��K����g�*�^����]��k	'���C˭�C�h�7�4D�b��6�a��q��*}`�]��.Z*o4q.E�Æ�	�-��wi�&$A�b����2�H�$��CC��K@58�ď�f���܎�}
�E�oĞ���SA��'�=��IӶ\�~���7�/��~���2������f�?Waz�������!��*I�˪��hП��ؔ[l~�7�^p铰����9D�@���	�Y. �����g.`�Hr�Q�^
�l>���R�&)����2mxh�����a�hn����S���R_������M:	
؇;y�$��z�B�I5��I���JҴ����}r�	��U��8�    ��c�1z��[1�Bu䣱!�3C����y��L��A<!ќ��ĵ�>Gl+�Ȇ�a\��J�4-�&
��rS��f��ň�_�����7�
�[�b2��K���b��`�l?��Q�8�d�����<
��(Zb\J��NIo=�?��>χ�AY��J�����O6�+����G{�?���W� 0I�b��$$|�(���~۵��-�c�s�q��\��< b>�����<�. ���` ����7t���SG���]1�U�2���V�.}	��{#�+�ˌ�p��<	c�1!���0��6���}h�?*>u����Y;m��2��S���uIzg@�M�0�M�|2.��[ȹ��n:��5v����i�ú��S�8�r�Ɠ?`�t^N�hX�� �e�O;Nh�ƻ�����{w[|�+m���%`����}���������/66x�ӝ�CvЈG�1k;���}�.��{G��~��R�Nt�������o�'(�	
go���簫�,(ȑ�X�y�����mqw���n���BI߱]�!�Z:I����1�v|\�Ms�>h}�)��&R���j���ES&#���{96�~[�և�N����i�$(��IraV�a)����$��@g`�4K�j�_Uׇ��^~�SJ�T�<��L�i��"���d�6�eE�K��ƻc%�3�*���r��!Z�F�\s#P��+��-��>;���
[�L�t����s�@Z$I�k!ד#ms���`w7
�ݗ&$�<���m���*v���VS�w _�˟�	��\	��P�C"l����O�u��wؖ�ˮg�l�ԧv�Ą�l]��x��Hb�M�:a?�v,"�w�/��g�h�����ӟ�S��9P�N�tU��#8/���t���8�����{����qa	�l�(���K'MW��(l�In�]�v��n'�
?�,�]�lA����9P I�'�~�.�;�6��ˮn� @���xI{��� ���i3�V���$@,;~d��}����Do��7 �R�JQi�Q�gOG�iK�KT�9P�����M�;y�xqW4�޷�N�R�$Q����H6�Im!&������\�s�C�|"覼Ƽ]��^�)e�����Ý�~4"y�F"��5����\�S[#PX[�ll��}ﰀ'��ّg�%)_��K�rA�4�i�b}�[��cu�װ����Cf��9P '��N��pw�.�ۻ�1[� ��휙�|��.�H�h��'�ƻ�^��������������*[�6
������r�`R%A��I~��N���OF8�W���w����S�_Lv�@U��������� x�[�vַEw�E�~

�\�Թ�s�,�C����ba%?O��
r:M-	�	�<I��*&]{��
�$���o�8��@��oe�/��5����fUn}V�D���hY�s6
�x���zw[?-��a[�ַ���m�"P %���Jė�{�S�b����|�.㜺���@�0����]���E�ƹT�aM��r]0W�㏊@��JR�F�(���+��[����a�T
(�$�o:_0��h�$�1?[1����"P d��^*��f��N)�N82��_@
�l�ҫ����.>�2�%�}}�C�@�%���J���*0�G�5���||#PO̥U��z�sq��2{z,Na���Ŷ/��D�^�V����(�OS���J���3�"U6�j�EIJ>Z�7n,+"P�ē�^u=��)�������;���>`!7I��IJ�.�Ц�@�pGE�(���'�p��k���x�aWaƃN���#s���$(|�L~�E���%��TP��	5�]��$�s?j�G�����QG
H�$����IN&r�i}��݊@��Iy]�����]Nׄ�/"����YP�c�tB&��
� Xn��1�w·�R:7b|@(xU������0��äX��TYcG� ��R����!��)�-9�����Ԟ�&	�6�P�,��@8�+��N֖W�ʦ��훛��X�k�<h*a�%7MA�<O��s�T�u�E*S���@D��"���ME�0XxǕpU8J2I����t�<E@�Pʸ�tm©��=�����Mޕ�M3��0���N)9$?V�V�ݶ��ghc���-�Yb�NJ�6͘��h(P�i�����V~[��@e�8?�]ۡ�)	
��~��=��5ҥM�*v��~�	3m�r`��H�\� �c�*P�?b[�v,�����4�6����֫��~[=/�:�㵴}PƄ�gA᳈����[��K?e�.��c���j���O�h��x]l��s�a\�e��ݏm����f��w�*O�?aÚ�t���Ϝ��'���[\������Ҹ�>�z}#��W,/����bJ��6���0Bq�pS�	~Z�Q�����op�#�����I��V�Eq���%�\J;
TT�$
m�.#��a�t7\Kg���{;4N�~��]����m���8��bRm���gγ�'`J�\�6
�@N�S
�M���(Nƶ>�ٲG,�ρ�9�$����%qZ�1=*�TYk$�'�����<I�g?�Q�I���6���Ĺ�&�⮚�4~~�������wx	쾻w��� ���ߦ��������ؤ񾝍׮FS$	����l_�?t�x��yY�������+s��@�d���q7�n���>�-x��.[xW���b[�C�V���r鳌i�>J%?�*?�|�����c�O)�t2�,��'�@G'�l��j���Q'�e`kc�qs�@�$��g׍��7�'��R�G�-��hꨉ6��G�S��L�쯯/2xH`b':��f"
M��N[��ݎ��@����#5ަo�x�[?�={Qn���o�5�]f"{�9��K;��������9�"f�@	��� �}�����78/�cy�f1��k���E����)�O��z$�-Y�(?�!�ϳ�b%L�ꚭۑm0o�v��IZ��uIS��~_5�n��*�B0C�n��qP���;�UGg��w���6�GR��|�sP��`"��$@�X#V
%z[���;<|�5K���'X�� PĖ�놺(�>�~#��m��)g����{�SkӘlq���A�>�"K���`���,I�K���[�+?�IXZ�`Rz(����2��6�jz�,�ȶ�]��4��㖝��u�Ӧ~�nT�|���Yg��}'Ry4	H�V�}���H��{��jt�BT`���_��]S�>��L����t����\������aC��Eu�ҍ)3��0�Z��r�Ȉ��V-�4���d�!����}������G�{�}n����%@ᑻ��i���֗�*:��?��S�Ev�9������=���s���y7���-$5��YP��$���ëf__o������!�.-v�Ss�~�D�ՏJ<p�1�g���M�cfN�+�8M,�Z��=���_��]�}_�\i��UFv���@e��>h�v{�;JY'��s�~�H e���Q����E���g�b��1B�#G�0�J^4 ��
�)(��I�[�R|�ͼ����q���~��� �I^�B����?�e�\U��MQmv_W�f���t��&^���%�t��L�����/�Ȩx2��EZ���$K�zFПV�&/Z�������V���D�d
���(�8�
��_ܤ�=�������^�Ҭ��/�D��F�M}_�>�ټ�ա���ꦾm{�cI�P|�ޮk�R�?m��$G������y�a�4*���f^<�$���#�L�1�g�#ሇ'�QY��K��?`/���ѷe��_���n��nS{�!9�F��������B#�=f_�C�������������_Y��n�o�n������v+x�z���g
� =��YR�pjу�,��$?�"9�������ZH���i�z+�z���Tp�,x� �G�&E��'.{�E�\�� �M�����0��ϵ�������    3yѕ��i�"�B&q^	J�`��Q�����[^|x��yv��ٛ'=�^�={|����={���g?����~�H z�� ��6�1%#A�Ӑ�K:Sq7tv+���W*��� y=J'��~�DS��&IƵz�`�Q��uܕ� y�m�˘z�4����OψŜ����"��°̅:��|8	0z�^V�+<Y4��7X�2,����Ou�U��w��m��{��j�|��T�f����3��!*�]�TlL�w��KQz���yrZ���<t���5;����&�BK1>t�v�}���27y��06u������ꕲ">kc�^�����"5}J�QEi��$?~��l狱w��j�1���rҐ�.|������bK�I�%�Ü�,0�����.�?u����C�A6߂�~����������p
,��"ly�E��%��)��;q��Gv��g�]�<^����� �Ѕ��	� yX�|d��Ze��Z#��0s�_�K�faa��c�2/��4p�0�K+��zU-f���kAE������4l�������A�zy�n�"��)1�D�=�
E���rl�Yɳa
W$���d|�`��d�8��H�&�Ż�Y�/r`���%�T�I��,6���3����7���롨�u/=J�$���5�A�򠂩�	��1��U�������?m�� Ų+��w1�Ĳ�d=�s�(�)3GoiR�QQ@e)�������l����<9y��2�-Ӕr���%���ٳ�娶��.ګv������ ��[�H0���'�(u>��i1����O[���m���|L��������� �@�Z1'V��wp8�ET��a��<dsl�p��-�eX�?
�]
fҟ
M%�����Q���N��s�m��^g�������8� ��+�$yn6�m��F�:�yb�6�nI�?0.�*jRb?�Ǘv�˅����~|��H�z{7ٜP�0��R�`�������b<e�Z!ty��q`.��)��Q�i��v��5�j����O��*����4/(akH8�uI�� ��ÛjS�1)j���_�����ё�	�/�Y]�;t��|�}��]|�~�bQ�n�
�D��"C��:/r��9��a����(u�]6�.�?�:���L�4L���5z����I����{_}�#�n�=����|���^d�f���U�.�����3��u��M�� �+:�\l�H�ZTǔPey����m�5~�%f+ޡ�;dYL��l�
��$��2ɯ��*�D16v�0.����PIp��j���ރ|m1�*�;I�?��($0J�O��ΆI�I|����]W���#�3ϑ\��`�T0[@��&��c�H셼�V7f�<y�]?T�U=�'�t�-�wN�:I)�j�l�;LN�{�;fw��=c�׊
�4��(�P�H^��k��]�{q�Y|�:N
�{���tA�	�#�h�O	�۵2���b�{���5(O�<jV$L��v��7G����V���(�1�Գ��]>�ο�?{v�=dϫ�E���3��Ju��S8��V�}vc
l	�U]�dK5	I�JE$|���G�eikX��N�l�����w�j�z湞��:# $����m�oVmv���Jb-��L�c�<�8�N!���������qc�rW���	�Q7�R����^���ƀ�[��O:��	B��+����PI]{�9hb�2�����j��ְ\py"s2�$�7|)~sߟ}�������/N3��/.><�D���q��ŗ�����������u���Ϟ��O���w��O�s��k����N���}8;�?�~���ǧً��?������[���g���)p�.�ނ �_�:;���J_��� LO��_���[�����3 )���o�9Fm�k|��(J�����v�]`g�}?�ɯ����d�«N��z?_dkD��6s�3$ͥB����z�����6���д��gO>�*.������ً�׸!�+��桃��|�W�OϳW�oN᣿:{qq�������Df��$����I{;�x�dыw���~{~�<>}��lӦZ�ןڛ��a汪�ﶉ.�<goe��O�I����ἝI0�0�)�I��r�
^�$�s*��ן�	.a3�"�z�B��I����)X	���F�(z�P}�:d�4k+�GI��K.��e��n��w�K�i�r������
�I�gZ&�^֫U3��3lx?�źVbqz68iPDdP~&�l9ү��>�0̘c$?�H��-f�bU+uݖ��]B�R̢?�tp#O���HCX���ʰȟ3� �s��c�4=t�7_~����a�����+H�Y����DS����:��QR��'����.��Qb��oge;Ƈ�b�)-�ѝ��s��9b��>0��'Mo�D�y�C�Ij!b�P�&n����p�.
��ﻡ�~(X挨�TXT��#�����P�p�6�HÂ-[p"�-S�I�E�;�@g<](����/j�F:�`�Ճ�`I�EVJ7w�lco8�q�4ܤ�`Y��\A�+F�~Y,$�Ŝ�Q�U��B��� R�.V����(fwDi��r����XH����$�/�ë�5� �`�UJ1�������]z�\weདྷ$?<sі�)����~D+:����d|NN��\�99NP�#[�~w�'���������{�d�<<t>�Ċ0������)��5+�N;5<�D��'Ǥ(~p�J�3'�+PL�M��>�#��|R˻jV�
u�蔘�$�����2͙���+�j��m��KX&ΝVX�T`K��H;�?Ȯ��;] �Nw�Y&$�%I��8�����p�\���t9ɳ`~�O:*��}�����TzT<���3�Dc��c��h&�ٚS&�[���7u5����U������#y~:ɏ��.!�1e��
�I�?J�X�6��Rj,�;F��H���n��0+{�[�,�ﲗ�j�s�O��]��.�����u��W��&��g���6��z43���� ���H~��Ǐ��L{u��Y���ٳ��m���;���0�/~|��GP~A�4yvK=���A�paNB��H~6er6]����e��+
i'�s����$���2��H�c-�)�;F�L���iJTX�N���Cv��ج@�<����K��^y9�C���<�����#���X��6��')�I�k��@�X�8���gTR��jF��9�ĉ"4>N���ctz��Ӛ'�7���)�%˔�7ɯ�=����1iS%����"N�c`p �]a����6=<�I����r-�v�1��z=��Q�E�hV16��.�=쒤0ʵ䣀CT��eI�>�XGIH��1��a�
q`�q`x#N$"&�����"�ß-@����#�#�5+�D� ����aw!
�|��˯=<hw��P�*a7,���Ƀ�8I����JE����@�|��
5>_�_��G'�]����/I�ݦ��&n��Q8G�D1�N���C~�{���������]�����]H�����}�ͷ�����E>�M�巬����Y1}�ifk�1]]��a�H~ϙ���PR��{C�a��݈4p��Vs�������y
c�T���"R(�2j�BD	��@¤^g�5�H��bnLn��U�9��\����[amo������Q%?����n�.��)����6W`���$ɳ�I6o��;���){���V��m{�]�a׀t�"��+B�yYm6M��.�j�l`3�d՜�c����I�_�	T.�R$I~|�E�5��_��}ku�M��������H��M.�M{��h���z��Q�c�f�=�~��V�)��K2{����K�iF�<�PyD��'�LVke�6�<��S��N����S�-��TE��c$�Q$9��h��vc`�Q�K�#���5�q�-V5e����ACL�{�7``/V�u�i��,z��P�f�p����lD�lv��r�a+��x�}���k<5]�(0�aL)�Q��Z$�����?�]ͨ�'Z� �$�    �mrU�#�ɼ"��u��fZ;�׷�z�Pm~��"�76�,�.��<{�dִ�(�] #N�q�#×�6�D��l�o�j���]v�	�2Y�L�5uIwآ�L���O�94GI>�>�O�%�lfX�>~B�:Vh)&9]�An�Zބ���DgL�f2]�,6+�$K�) "׽1��N�t�I�W�%����`��-\ ��p�P3D�'��.�mr{��({�[^��1Nwן��$!_HD]���	��7*�B(����BF����fG�Y`�����<ر掲�"F�=Z-c�'��i��H�p���ͳն^�@�=�`�E�=<뻙'.�Y�u��/Xz�o��|j���bw�ҧ��)3:e�\����Tr�ɾ��9�#�˻9F�@k	<�����_~�JVDf�]��͕�t���un��s%�������)�e0b��	3&�e�8ƀ0���cXj�U�7����cyRF�I��8!�Ѣ�K�D9Y'��%�r>?���}���LS���R'`���|��C������n���� <��9E�u	�߰��ɣ��T�JP:�*�:7�B`'K���a*Y�<(��|#�CI5�����7)Z^���
T�{��߃��lV����-P}�.#{�hQ�eJ���q��Y�γ����Hc&�s�����-�+�g�p+0�N�c�&�8�o�Kr{�n�5A�m&��a<�Y�0c�("���IVI��Y�1�4;3�5iX	K6���O��yvy�4�:�8{~~����Uv�nn0���Ae��oO�����r�b���I�G��j��D��E^�LdaG�>�l?��DM��Ẍ́`���H�β\+��x�_�~8��4�������^��E�`��0Fh�M%I��J�
�(�:��]i�3�N�<��B�r�a�ATw�s+��&"���t�'����_g-(_��&���bIMd$��ƒ+"���.]�$�D���e�13����hI����n�Q��;���b�
���hSy����IG��D����W�4w���BʾNB�����Amt���(JR��ԓ����hk�IJ�E�)V�|l�G$�����N_�fOϞ�~��<{6�2�$��,?��Σ$�v�cx�n6�K�"�[��?��H��|G N���l@����X�"���)��9�+���(ɿn�� ����6W#�:�4��V��5��Ou�%�5X�f���fzH�p�b';�1�uQ���_]���q����*:E�Pq���-#����F�hG�i�����-�p��a�.�f��_��c�U3�]#�c��ć���#��0f������������k��J������&c��r�H^�`&y�mBU���Y��P�\G��BY����eA�BF���D/�V(S��A���U�n��]׋v�n���(�2�X�[
�*�ؑ!2"{�D������f�c!��G	�~H����P</��5���O��	+�ꛙ�665x�$<1�� -TvQc�EӮ���{����ݡ,��a��z���"n]q�K;���q򮲂j.@� t������������$�O�}̕uq�sL��g"�	�%}���p)zT9Su��3+�IǪE��_�m���]�-q(>;��ɢ"��N���F�m�b]}܂n��:�b�_���F+�:�UD>�8<<��Uw ���Wu5��;p`���3�����	v�2�R۠�j�d����1����v����1��c��h��;4�>D�,u�%<H�D�	K��r�(�����6���b���^��z�q����Sӣ)r�%
n��4�JBgI�gh����Et�W���+\ʌ�#����z��v��^Å���9��[�%~ΚEu�T+��w�������f{B�rvQ]�Ǿ���b�\�)2��8)G2���	t)���Q�
]rK{+{�Pm��U�5���Y�^d���>���L�5��xIrl`�}��oG���O���Y�6���'�o��R�}^:]�c$��ï�ktQ�V����&��7?���e�u��w��q̱�X9�9F��� �B�h�]h�1�G��X&��I�!�%8}�}����ֿ}���?������E~Դ����t�)�O�)��[UÑ�ρm��AH�bCq)ŏ�0��H���BvQ���f��}�<�"���q�������P�{�Go)�R�	���jJt%�*��J�p�V�,�x��Q<|��A���4����w�k�'3�u�9�+����`s����������v���|+�<?}��	��WW�d�_��r���_��G���Gٻ�Ǚz����YA��넮���\�<J�Ň�&ϻ���g4����ê�zI���JgYtQUU2� ��(�;QͯA�Y7UW=�P�%�i.�$��� O�4GI��M�<�,���S��S�4��]�{/-_�4:f�Fݗv�w6K_�����k5��<���#g�"�:�@ۿߣ�%������>����v'qT ��uH�*@.��F�9vh�Gg�i�w�5s�h��O����]u��#0��`u�c�	���>!�\�CJ 2w��=%�?!�ȗ_��y���KB��{����fGh�
[�+�3�������@l�2�kv]���B,��i�)K������S�&wB ��L
�Ԗ�a���m�ڙ%n�~���VX�W�#�<ɍ���(�̳�OͶ��ޜ��+֪m����i�ՁSe����)0U��EjG��&sj�r?�hv��`_��O(1��F%���`�@�:��R�a�*��6�[.˔U����e���J�ax<yE���&���S�*��r!{E��%��k_�q�$y����F��*�\���� �O+(%��F�9y��a?KI~i��=��uy1�t�<'���-�Fx��_~�~,�%�d�{�ŉ)� /ERJ6�5a�[�䶮���qҰ-��{ĔcN�!�f�S�Z�>9L��'i����Bw{C}c�{n���lq�4 ��,��ԋD!5��N��ւ���Rc��t̮b)	z �j}��~���B�yR*�ʅ��i�kK8��̾�8c��)��]R�&ˁ(u^��XR����C�+����`�~�R��k�A��/���i��w�"�7�6���������M�����E�rv��2	�T���H��~��jp�������?SXH�Uu�-�k�$����1ә(��a�1Qh}�4��{/\\~���X`rMPS�5v\V�rU�zj���Bٽd�������OY�Sf�zC:�������u����Tub��$H���«���%7{�g����;�ٲf��4�� e���og�����v� z��Z���oїt�K�� rw�4�.���V����W�%�^�a��F!L�8���R�u���$i�a���x����@H���O�eԫ;�Т��*��g�#0��鐝T�&I~6�x�PB����-([/A��_���7�f�X/��-���{����<>{�P�������͗���O��	���7��7�Q�6^z
����d>����c�,��V|z�mY���-�j7u}s���I �D��4.t5ϗ��
и�!a�m�{����(�y~��.�<F
�,��]l~���O�XU� O��_�G0]�ڴx���JϜmZD��[��?�E�����ڡ�t��6�j}��m_��MW_~�Z�M�[��uXu�:�cF{�m�f���co���2*���$)̛�9��{���/}U=S��X�=X�'l&��<�!%x)���ղ����3�b�����(1a�I��ȓg���~��#Mp�'I�}����bxr�\�?��^#؋����S��~z���X�I*�����Г+��(AeZ���`:_�}���aT�7>�#Q��¹�������\��D����
����
������� �� u,qZ��a�}��Rα2B�*ӧ�Rr-�ź���v�GĹ�M��T�+L�6l�qA�(�޵�$��,�|-�O�L�ȃ�rx>�U��+I
<�J|�/pQ�V��    첤
;=Ü8��֫�{\��PX�D�N1��%�["w���I�в�Ĭջv���ٲ�~�a$�R>'�	n��ᣏ����{����`޽=j7Bdc"bv�s�H��Sɵ-���
�ޚ9e���t���3�X��7M�2��#�W�a�p�6pX:��������y���ٵ��O��o ��>�1kJ��`��wVFV{��#fX��g��������}	�П~��^����g�78|Dެ���:�zO���t1>zb�����M]z�6���c�H��#�U�E�_�]ط�9�6v�����s�
@o�5��*�C��x����/�Ia29	����q��l*��a�����(7#?J�[��r�[Ճ�H��Vʻ�,q�0'G���1)pcwf����+�b�,?u{U��8F
��$'D�l���ys� ��w�����8 7'I��Mr��o����ށ�j�hh����RD�����||����лb��\D��y���V��P�l�M�ƒ:"�pZ�*����MY裤�@��;���2�z*�#R�X@�|ʺ�)8,��DB:Irflr|Brs2�&���j����F�l������{�f֎�!{k�$�kk���7]_k�4����'���u�a*|GU���$�iˊb��;1�F*|�1�L���u(�%��,5��PD�z��z���$ ����\��T.�XH�/t �Et��y��¬ޭ���}h��\��U愢�ک�k)O�)������wP&a"8��"uۤ�w���^��G~��n̪�U��d�a�_�,�?��F̣)���x��'K��#���u��qh�$���{��}��x�(4��X�ҶJ�k��!L:�댔v�	�����c��SF1oN��N��\��7q&N��+�h���l#�op��4�wZ�@/������.�[�S'35`�NG��I�cumq��q��w�+jkק�N�/uʬj'FF��
;	t�����>�	��~�5l����R(���~�j��4��	�~��h�8t�:�=4`�����$��f�ٶ+�e묢�1�;�=���:б�`>p'�#Cf�g�OyC��a�a~���B��08�p.��O�d��Z-�����G_��V����� s��Lg�3C,�U�r������>��`�����!<@�`U ���6S��$��\ӵC�}�=3�����Qv��z���/�ͫ��>99Aψ�q�E?�W(�_��G�k�e5�C&��N�#�f>�|ɞ���m�&���)L�����՞�r��j[/���;}�CS/����qP���TĖ#l�Sp�r��$c���k|8_�e�T�c�N�Wnh�����G4fށ�w�K�.�A^^��!��1v�����ŀfn��� �$b׌OF�9 A��S�%2`3�ņp�V��<�Җ}��tx�=�)���G��L>��<ꂴ��G D?��'��Z�N��>^�N@�4n�����t��Y�5/�}^=`���U���-*ĹŚ���ڥJg��-% �Ԝi,�7S����M���4"��z����/�?!hX�ܯ��*C��XF�\��7�%&��^�1��G���l]=�;Ԇ��~��i�z���J�T��^t�L��H�- ���Dβ��x��ہ����l��y����)��!�n�s�d+��ޡo ��o����h̗�w�u?�yy��m>�L�p>N�����lE�UX0XlL!����Ce��{�PoV]�u���N�GT%:��`1�GڲO�S��*08�JM���\^�"ѝ�?����������^��y�^����g����6L�v���c�f�RT���	���D$o�����lE�Z�aQ��t��&H;JO��%}�������-�>����~��������?g�6pE����ǻm3�i�'��,G�1/������vV*�e��ѻ���W�ɔ2��QR>�m�u}�ڹ�4�Y	��4��~�q�N��x�s���M�T�_R�f�$�T��۷^4s�W6��v´C�R��p\Y!&�$� �Jϟ�q�����e
J�:B
�e4nk��a�D��o��	C��|��H��L2�T���AE���)��ċ9��FLwl���b��+��y��������7h�$�B���ͭG-"�?j,��������{u�> �#�ȇ��3<KM��
�џ�Jc��_���P�0�+.�6	�8����6�i,�q' o��pJ�>er�o׻�K�4�� �`��V�D�D$�v��%o�Hk�(%
��=��r�Ha�ҕ|���~��`�b�G,0�/k,�>�9��g��j���	�S/�7q'F�fD
����#�UW�z��f02��t�.W�OQ�0ȡNA�����Q��B����P{��()hblw�=�P�U��w���Qv%�lQ]7��maQ_>	��ag�86W�������^�))�K��T�z���ފ�H~��}�^(��z�;�
-M�)&I��w����[m�K�(��Ɖ��\+2i�0R��H~ϜLr�"�5�Uk,��
���$��x��1R`��,�[�e�/�k���ۢY���vfz�̘� T\W�^CIR��&�4�v}� ��w$�u#^2�T�E>��0.A
��$ya���)��.�9B	ka��p�7�l[}F��0NN8��P,���N��̏ؔ���R�NJ����3�)Dd�]O�<Ò��u�X_��:�r���P�H�K�\���9��S�%�D�º	��v%�k`��#�J����~�E�l�o��	b�s�4
e�	RX�M2}\�7��"��Ӈ��?ѥ�=�Z�X�y1�����SR`풬?�٪�\�����ŵ�Èpd�r��B�c���A8q�fI����	�/�����Lz$�:��{����u� �5C�&�c�N��\������0�%A
\d��ݗ�65&���ZU�9��]]�~��^���3V���%CR���zޔ�cQ�4�H��.�p-����d���8�?�^1�|����*D&y���黋��x��o�X�@�B'b�'��.��<#A%I��wŶi�S�\����z�n?=��67�&��n�pίv���͹��X?5���4'	�v��6�g@�C�Z�k*�`�ND�	����:��]Ϝ�e%��(t3���](zb��2 ����1��/��@o��iD�C)ޒ�؝$���%?CKV r�[,��j��QRĠ�+̋��TJ�c$�D8��X�W��Tg���q�a4D8P�Z[�1��֧����溅��w6\����*p撤��$�4˻u��թ��A?'�JL��M ��+��+�>M��u�V	���������A�I�7�jtT0��$��$�+S$�7��;���ε��G�#c�pS#��d3_T�M�ݭ+4
C({�I �L.펑+~Ƅ)�\�g�S�Lz�y�U�]��Q�=F
M��5�[(۶:b>��S~
_d�D��H���3˜o�S�f3��mڻε�+~�/@��TёG�/cB8�e�"˟�0d[���]�7s)�o��S�á�j����ɀ4�m,2s�җ;,�ͮ������D+���t�\��6��y/���tL�A}$���BP���}�.l����w�`NtJ�X��(x�&�>$��G���Ӵ��"�Q�H�-�L��tC�!���+x���JĜ�e��>RCXZi��+uׅLr2�PP�.X���~���a|�c=�գ��)��t�2�I`�_ڡ�1��܆<D�n�x��va1�.��$�����E_�O�p���o��.��+�;8��iQedӅ�}�s�I��JR�;��z+z`h)�;v��p���?�"�-�QrJ?>�m��`�ƷNi"0~��=<wM����K��ˮ?�:xɆ�n�*�sШk��Ӷ�s(����sper�r����Lۯ���%2<�T¦�4停��}U�tI�/��f���	�vʆ��j�QI�<��S,��g���C    p��()>�(κ�$�$��`Q�ib]�VbrL`�l���~��CI	6�aZ7(ui�	�lY��Ɂ\"�My��8�h�
�����(�4>"d疣B��u��8�ĳY-8J<`�L�J�����$�����n�}��뿂2S�Ln�X�����!;I�/�I�:�z�����^�aXI�s�s��LI��Lr|3`�6��2#��]��#n����9� PU��Z��\�3�10?pu��v4	d��\�	�gm}��D��y¡2DuS�up����0���s@���I0_�i�f��LDB�2�Fx+,iaX}+}�'�քa"34(G�ޫ�2ƇkVmv�Ɔ``CT�=e\|���>/�;����,��ܵ]��u��w|���L� ��Ev�t u^���ĺ�	�-�5��~��M����~lWu����5¹��a1�����Q�!M
�]�{���/�" �-�����Lȿ���*/z�r�r��I�iR`��2�=�U�: Oli�`ʧI��tX�U�P����jQ}ľ�����0���ue͠t�I��H��<���twӴWm;�Q�G�O
�%��z���$�����y>������	R਒��v���F�c�0:��1%�u�DÛ��[�%�񾾭���)k���#?Y'�Ө���[��(�7���
^��5\�.u�>�ʃN3�DD
�`Ҁ=2��ϟ�|�=����ճ'��o3���-#D�0��� h���E��Q��0����g�,��s�C*b�JN�4�0���<�{xDEԆ<��P�!ޯK������ܒ�i~�Η���n�q)���<�'|���^��j��3��A{�1q}�!�bv��^Y"%��E�-��QE:���5��H�d/���]л�n��bR��3�O�I�qb�7��J�v�|oS
J�3�O�	�K�^>{U���,��9���i�sǓ�]��cO��v����ԏA��Ɵ�zO*��/ֹ�U����ʰKl�,2��_�'�����A�F��u��Sa��J�\#y�3#���7�	�Y� ]W����$��=8��Rf�Ɛ�C�0M�Ƿ�	��8��go�.N_�=�p�,�8���mv�ó�����������r��%=T�I�V%yH&�����3���f}W57��0���B�-8=R��ƣ�Oln�da��9#ʣ<��O1U@��*��=Jf�xQ�}lw������jՃ��-��#k����ƌI�\�<��)��J2}y���e������^��!v�л��j|����V����Lfc~� ?����Y#~E��%hu7��}�â����j]m���tIΖ�lt��H��Mr~[/�O4��W���H�ۦ�I�uG��)��2�a���$"��Yf� ���Z�ݧyxأ�w�޵7�!5�?V����􉚼�%y�r$�йi��,��O�lҮ���+'�."y,+.�D���"�H��GҤ�@&��ߵh�u�A���&e�Ӭ6WQr��dI<1�Sz�4��I0���E�0�K��S������r����D���^�Y�OC�����j�J^�7٫'O2���~s��ы���ﳋg�oϳǧߤ����L�騎�*ɤ7�(��2Mw`;K��H���l)�3�,����-��kl߁�����j������QVݷs0�������Mg�G��2~�b�k�?=��ѱ3W���j��f��٭��ػ�i޵��/���K*��+����A�c�l�9�:9X��z�)8���B�:Y�E�A�ꂥE��IL���쨨�K鎒�(dL�kC��Qv��A��	����(����l�:ù��+lL[�N���|48Åe�{w��O�sA�xN d�/����`3�EC����"1RD���<0P���a�$|3���[¹��󏲏��!=���ɽ�9�V$��$�{�����wDi?�2��a��e��3��Y~��g�����59�:',\g}\!�E�1qܖ�ʙ�U�䕧&ۤ-ΦJ��'�; :`�B� ,y�$�e�ݵ{ ӪKdNF�2FH��Z+t!|,U�Xa�"�R�4F��_v��F��<����?J�)U�҂%�F����������=�8 �n�s:���/j���$GG?�	nġϣ��5}P�V:1���Q�y�� h�	���s���d�d|�K�(x6��C�����riR�#+<ޠ�؞�d�s^�N�2*�	���|I�)m:vF�й��gN��H�L��0aD�t����d��x�Ǖ���FW���z�n�Rk��$��|� <���!b�©S�(���s��+Ce@^j�$+Ĺ9��w��#�m[L%��dY���Yh�@N�' �@�	���%��U,uJz������tl
'%{:�%w��Wm��V�-����6��x�|��=���Rc��ǁ�Lr\�0�j���_O�	6aH	B�u�8�� ��a�y��v]-�P=���9��ƒ����:��ȰpI�/��u���=6�9�-겟A��W-�	pCdW2��$%��=L��T��3��{83�N� ŧ81e�f.�%����)� 1`�(��R:�r-؅�������N�T�Q˞"%��ɝŲr��wA[���s�=�����TS�Z2��ܧ:��R$�q�I�2S�E9�J[cҠ��vq>���e������3r�~��=U"jY�pp�Vy�	6M1�6H�U�M�o�5�<m�S��I�@�a�|ru�4(�R�/j~{����5t��9�+�N�������d�f�7��1��n���X�g�Q��_�rZ���!㣛�����^?y��m��������?�d�����]�9�����8{��ó�g��_��=?{{��/�~���#,�F3NO��	i; ӧ0�O� T�m{��P��03�~cY��؞�r�M^z�)�;�CC<TM�~���o�r9�=�"x��Q�3��?���`����� #Ox� �'*�[��.���N�}ĹĝI��]�y��
m��U bפy�oC�1Bt���&F�gc��8&��,���B�]�����w�/�n�~��j1�OU�-ru���%Ѱ/��X��(�:��Gg�QR�'���vճ".(ct1��ȰiR`s�\bMe�ӵ�r�{T�8�_������e���޷���_���&(�Ox��MO0>䉣���B�#?-�B��锛�ӔΥq'e�rt�zh����E���Mn7��{ݛ��3
��&��:"�v�S�`i ��W�&v��"���a�������	�ְ�6��Ze�,����նY��VuXk3�륎�"�XП����>_�?P}9��� ���a�!T%���z;.
,�#X��N� '�s�c7 f����B�ߗT\n0��ZO>����p���$+1���TD���0�t���Ha�����?�9�\mI%w��G�0>�ۘ��;���IS_���mF�Y׼/�I��ℷ���	��ɍ���@�ϼಀC�a"����@��T�3Z5~��)�%y������o�D��+��r��jN�SH����))pdG�y�,�D���/.^`�+ʧb�	z"(F�JxT�1R`�^%&j��vH��Ϭ�ZG���#����᎐<ߜ)�e�� /���!	����~01�ª�ӭ�/b ��j�F�oW�v�y�>cQ��¥�GB�B'�#��H�r�,Uf2�9z)�7v��U�%���jw�T}47��$�η>ue��ݑ1��>cafS�y^-�ڛ��WY����jNI�����G�"��A�ᱽ�$��tx���7a~���es3�.jC���cu�7�$,&<ɅV�#�aˤ�\1���N�]��q5�q�~��T�9F���5H��(chtL�����|��n�BU%�z��]�]���B�w�����u=�2A��xu�͕�`�|�63���I?+��>�:�&��9��k� �m���:[4���?�Q�k��Ѕ������G4�B�''Ha��	�>���ӎ�\�x��(;���x'G�K#R�^�    �]����.B�,���ɯ�E
�o�^!5_��]:�X�v��ς����^�^Uˬ�>ܬ��f1a��L�R2H.LQ�SD
˲I���m�=Y쮲�����_d�oN��'��Z��Ďj��+���9)��U���l}����x߶7ٓj�s
�X��v�t�>F�,m�d��M?"�����d*��F���.������_�����n]�6g �tyqs�,� ��W�b��M��I�R̅��ϒ�
�� a��+L����Ve����`r-�������+�v:�]�0\rW�f���2����4)l�K��3�Q��U"��n�T�<󩨓�k��⠐e����c0�*����|�����Fe\ZQIq����X2A=׵n��q����=)�ԕ"Id0�� `��L�*��Sg��?�Jjo�����>�r���o⠽1�W�Rl���6���K��~,SS
��`ҥ�e��`��:�I�}^�t�1�?-�Y�DE����DjD���Х� ���ݴ�>myd���	�/�+��2��f#��lؖ�����橿��#s��{4��ѩ;B���Z�C�E.�2�M��3�d�zZQ���N�tз�R�>�'0��]���G����]�/H���GYʽ�D�j��}�e���I/�����%_^U|��G�
��6	uIT����	&QIV)�/���>�u�ͥ]�����;�}��t{��cH����֝�}?ro����@-���'|a�b�n:��:%[������W���n5�O=�Ŗ8�:�͕< PH�%Dߕ�'���I)��=�@/���!\ɲ��qMs�>����a�ޡ�-�Pc�&�aXRzW��b� ��R �pX�&������`��q�� �]P�k��B�oS�GX,�a�~m��s�����E�3�/{tX���d��}>�G!0�1��&y��԰�������u��!��)����ö�B|<Rr�K�� 9iu0�)�����4�F�p�5ѳq,�ݨҎ���Bj�d�i�t�� ����jNF���r�(�{��\j+éP,rqT�y�~��Hl�>Ƒ�p�Q�������&n��{����PTp]���
��*!���$A-r�c�wG�t�½��dE���$Wx(�w-Z�GBD��c�T�AP����M�Zt<%"w7x�Al<��y�ׅ��Z�56�@W��,��6F�]Ыb4����)�3ԅ�uz��z������uaNlJ"<8��nlHE�AS�Y51JP�Zq���O��Ộ8��^�����(���c):���.(��)[��;ؤָb�=�c+�l�h�|�Q�crU�@����ӓ,�nx)�0�;�����r�.�-�of��U�Pz[�F�TL�:tkv��'I��ra7��\c�a��������������ܬ���xE�F��6h�n���j�Ia>L_�(dͪ^���_#~�5��ow��o0�����O�A�� ƈc$ϻ:.?Y�+P��S�m�ۮZה>=����tg��P�H�d)����W��-�JƓ]�Ѐ��&�����f2%�h��ʭ�\��0�<����"���
B*q�Q��K]X{�6�y������]S�gB+�_��{i}7�4)l�=̰c��}���5͢Y �*�}�$w6(a�)wN
����޴Kx)���<��-�GI�a�d؝�b:��@���i_��b>~�޶7�
c("��Z��?��p�)�
wY�_	���D�Q�gE����l��<���Dj� ���4�aB�@��ܤ�i�."���z�GĊEa�y`?O�.Jlt1d)\�t��Y>�u<.�/�a�H�we�)�{����ǬW�%�I���>��Zɀ���K!�B��$�U��[�=��}�u�")���t.�|�4)|@�d��{��3D���CM����<��\F�n�������<F
z�L��f:}���t��Tq���!���܂�����#-�,�#��Aj���7� ���0ҩ��0"���9���Ȏ� z�p}�s��%EY��Q� ҏ=�� ����!�!~�ܾ��pr�M���(�/���:\���eޛx������K�0�"�ع;qڸ��3"�O�4}ǵ���ڹ����
L�X�ݧvU�6�޴kjY��~��C����	ta��-I
sɉumL��Uu���rz_\�]�)���1R�U&y!`l������f��Ve!�Q�?�"J������;=T,e�`�{D'��Gk���{�b��2��}���o�݆
;�dSv�.��m���v��6,����o���YCJ�O�lK*�/zH���qݤq2�K�jJ+ӥ`ho
�U2|l����E�4�o�.������_�횉3��,�(�u���!)�d�E���(B�����͢�Xg����|��M���I⊲�$�:���h_��|id�������Ge�,�^oh�% ����T�W	�W(7��XbE�"�v!���ۚ�]��o�P�����k����ֹ��o�M6�J��C5~��ۡr��Ł*(Q*W����� \�Us]};������mX����o���/�b�V��C�]SL�C������>��J�0C�g��mP��i��ˊ�(�p�eu8+��`���܁��I'�ܭ1'Iͷ�뎑�9��N��qu������i�w�����(gjzw$�!2��lr�0x�"�9v�u�m�$9�``z2JB8��1�g����V��p�8ߤ����h0��R�()0)�Lfr��)*0C� e���d�a<�( �¸%BJi��fAG�.q��0:������9%���cx��������t%��R���~���_"('�b/��%�|�Oy��ga��,"��Y�N�Ă�$��&���3�!�=E��!Tq�r]L�礰��g�I������/[h9��!�!�B����eY�H��-zʺ{�<W�2Q��`m| ;�@�1Ո��� x��Pw0TI-��J��v]���`��6�����2��}����X�0�'�K��Lq ��h�;4#6Gu��n��I҃⸪���K'x���$�ԑ������O@PPR���]U�z�͢m��-p&�����sS(mC�A?q����Eu���E�N������i��ꭟ��Z��3n�#��bK��������!��}L��2��t�솺�H�k�ӹ8+��7�p6eT���2�3��V��%23�K`v���S��1d�=�;S��7��ѡ�cӣ��Ը���= ���!\�t�9(�D�#GB�2Ҙa{��P��T�9�žb�^��0sk�l�E�*x>:�5�sj
3�MFZ�@�?8�7���J��5~
���}E�]h�S`N�d�zl�o���L�b�� C5�D�t:@�c�G��)3��j�!ӡo�3ђK\��v�Ю��s��1�;U0%^<�8�����ͱm�LHXl���b^��������we �����AdT)e#`���f��G����jw��l���ã�l���"Y�c�#��<�*w�	�y �����q̳&�[�Qo��g�&UP�U��2���4_��E9TZ�)��.cU+ξ��T���΀�/���*�T-����RLeD�,�&�a@����#y[�%-�kQ�8�x�A%����Ӻ|x����_5_~�T}s˩}�Q+l����u���P[���ist'�b���y����@��7��c���,O��Ϳ5��f�I QN���,eШ��6)�h:�x��ٳ��˳�e��ۊz�����6�&��Yh
ojW���8�sg�)��hR�.������.�H~Y2k4����%��aQbQ#���\�ֿm�d��ebl$�f�Jߣ6M
LT�У-fS� e[K��M�$?�K�d� �d�U!��>q�Y�7�� +��itNn���j�`��'߀��o���x�_�m��C=E;,੃â�,�.��J*y�{��&s��X�_�e�lA�"}~��1&�\L��=�5@^��}�-���x�"R8[�^A�٤(I%����G$���!�ajqj|    �i��T����������S&��lieu>�|)��._����#�(�@��+�X�G����;�ѓ�Y�){�������=��H+39�95���#R`j�LA���<^���>�����3"@3(�|��A�tM��< �$IAh���_����U���`��9?���y�r�H��H�G�K5��� `:Ќ�x�"R�9_xo��C}����M��?כ-�>��������f�(����0��U�������_�Lۓ
7���A��dΜ�ESW�ۥ��՛BFL�X���=F
|"����6��=�>��2��6�L���7`K���n��z��;<!hRׄdʚ�zu�]q��Y��N�nہ�I
��r|r!�� ��X�M5A�@�*�y��g��Q�S��@����M�UD
���)պ�|��j-z|~xix45A�G�Uc�7���g�~Dt�M���W]�8�O�)G����攰@���wk,㚷˻��~�n�M���+.�=J
�s����y�o���ٓ��E�
T$S�p�.Z:]��4"�U��-}�3��e�X���ݭ�U���~{��Yo3�l�g/$�y��YW�姶�6���r[��?�g����f	C���f�ʮ���R�4�����4,N�t�"g˻E��f��q���0<8��*��7�q�I�-K�bO����%�a:�]��/ ���7��f�+j�s�7/3�KA� ������YF��~GR*�@�n���T��+x�5�["�j^�"�#R`�~������/`�q��0���Rk1})�?��GqER�a"
F��ikD
����e�@��@���CF�� $�.�-�}�M}_/ZLz��@^p����zC��r,kX)�2K�Ǌ)f*5����_W���s�Zg���(FS��VhW �1��!��e��)�-tz�l>JT��u����M_I�����<B����+�e}s���j�f�3E~S�U���@�c3�+G��B����z����+I<�C_��HaU�YŵWD=|1�v�`%Lԩ��
ff�?ZD
KrIfiU��#�8c3�@%A|�B3�f�|���p/�X�avs�O��6;���iF	�U�8}{v��Gxh�v�B�QO�{>B�7}����"�YuOW��{xJ'^#�#B�t{��!Y0�73\4?50�j}S�����b��n�)�h���/��m��2���t?�D/��Z���Ha&29����w�E�iP�m����>{_�A�!�|Q��� 4-	�^�|2N
s`׎K]&/���X��#�� ,��ǧn^��Z��fe�+$Q�@��W#f��+�3��,S�J甅g�#^,A�)���,(���� ֖1�_����K2{]!2<?6�ԂO�������$���GƤ�2��;Ò�ԒJ:]ؿn|0"����Ol5|��Y���3{ǖ��!#��~��"R`&,&J�ر�wr�����ч�&(��u��S'v�C�E�l%���$o����<�C�jԣ����$Rҍj]��C������|�������i8�i8�O��t�X��<�E'ċ1����u7E|��4ӎĠ��	h�.3j�!9p�5�s�;�N�'��f�_İ�F$F��y������3s2�o�I�� t��ڡ����Cz�ff��ULFGD`<D./Uy`k��Z�!��d����1�yra^fy =��g(�P�`����A *�R�h��@_Ky����5d&)x�;�H]B���X�?T�w����}$���B�4*�vf )��C|0�R�	O�!B����3��Aٳ~t<EW�:�&��TO�8=��Ȣ�3׾��H��z���iӏnxt��
25�{L�C��;��X�����$�j�s�5�ŮE�:ǒ�S�K&AHMP:\.atoab��c2>��١�����}o-� d��e��)�Պ���XT�y�9��������P��N���`wLÃ��H��P]5�Q��/�m��6�\/0�'���-�_
I�~���5�@����O[�lHFQ��X��o��5��,��׋!ʩ��޴�E�N�-�(��\�X�}0y���a�Y�=����-���|�:S��݃}n�;,�Z���4��	~�'W�͡o� ok��]�t��A!AHb��|����`�u�t�������1zG��w��԰�Lu��0�
�X�(ʕV>�Q{�{�C�̞�3�0���B�x����LI�4C�d�(��)tY�p����,�O͊��6p�2:���Ό��������7�h!0}u״���l6-��zyW�sx� ��-�pzoN��Pw	���^Ʌ��i�_�cK�OETm�-n�Q�78���IN��.�SH�J6T�j�v=�:l@NQ�M�\�1i"���_�h��X�[7"a�%��e�Y�e�݋v��`O=���0���P��H�f-Qr>*ɇ�$�����n(,0)
���E������݌�2�1%���s�H�0����~��]bK(�W���0�Rum�(�D�(j��qj�`�Z8�b�o��k�q�B��o�y,nA��I��-,�M�4C�M�ۢ���6��E3oW�=��X�ǽ(��gLP�(�}l�����I��F����� �=yNE��#<�襠�}�6J�Aޘ�ݗNcf'�9�F�h(�T���{�3�����S����~���}�	R�e�3fw�@<S�8�ouS�1-[����_�mr��Jf�F$��aI���Y�5�y{���	�q�8T�.���Q_�"5L�E砱�t��P�>�m�{����!�h��f�P�[��SԺRbח	It�m�+�pc?�Z�O��B��j��|�4!��ݏ����؞'H�]8�ܾ���}���V�V�k����R�1��9B	�L��US/�X�X�K�*FI~h��m�7r�䯍�*�l���%�u�����r��싍�m�6Ck�1?쿢�	���)�@� K؀��r
�!����Nw�YE��J2V1�7��Xm�T�H�BQ����ь���=w��o���̮Zb�G(�b�T�_������.i�,��.O^a�u<:��ȆE83�g��z�����D��d���' ��h�G�0�<ԛ�z[��]_Q3�u�f�f���^lr�t�5<�1��nz�IGU%��y^����drB�'��3�"M��t5�`v�c��l�wcؔ�b�&�|@`~��Y	&"�_`C��z���QR��������V���Za��=��P�i1��h=�Hy��2e�-�)kۑ�YT�Y��6��~��Mۣ$��e8�\�};tH���r��H! A�'�љgW)��c$�ޒ�͑	r.�A�;�	��=�IRX�X|�s6�tغ��q�c�=F
Kaj�� �V �TW�<F
�tz�(or�k�z�lN��1Rص��s/-�r�1ȓ� vGbwA��.��HaA6y/zˇ�1���7��E�)SE&�(��3I
L]��XFQ�����w�/	�h�_��dk,`Q�ȕ-���-693��'|zq����a���������ɧ�ZW ��%��B�������ȵS`G��o!�p1W������^=>}�}����w���W��o���d�N���y��"{z��8}��������ǳY�U|�eR�� _e��zRW8��������V���P��S���ͻ'O�^�eo��p	��k��H�ٛ�g����/O_�$��R̔�N� �YY''[�I[�͘炷��tjt"�ZwS��h�nvW���
�Ʃej��o@j�,c�Anj*�x&)�������Mu���^7�����v[u��>n�^l�/�~�#݊��z�)��h��j���TҮ�-D�X��>D
/"L�;]V�*�c�3� ����T�Q�.d+���,C�V�lU�C�\�*j����P*|�A�`(�0�'�7�񪄄Q%��(��p��-0���GǍز���1,(�-{��p{��/���|Q��#�"���bL
A�{��(��
K)���꾝�R��G��]?ʮ�݂<����s`�u1K��T[�0    ��*C�A�LҮ���=Y��d�z�Էs�J����hELLϺ,�p��X�>ϩ�y�P�e�-B|4ټ��}���x�ejC����D`��UaE��І9S����`��Z��3w-a4�\��F��6υ>�V�>�8�3��Z�=�n�/�����v1�<�p��X~��q�/*��߭���%��Y[J��8�UNg���Γ�鲅ό��y��7�C���#���V2p,N���ogV�	4p�Sc���'�}�;�K!�M�̇��;�vOX4XJ��*J��DBV`	Hn'��(R�����B��ػ�{���/���C}����������6�[�\����EWh+���U;�՚NǸ>��f����,1"բ��K�X�no�-�5�-��u&����nV�gȁ�{D^�d�<���6�N�=7����G)�e��@��KeC�mҮ�j�g�(�����R
+�Xn���R�1�>j�ۼ������nǒ#I��~���-u�a��{�P��a�`�����'#���O�&�\-�i���w�M�IP�^D/�W��y��G�G0���v�v������~?è����\��zs��Q�To�=��@j�-2NHz*@:�oݠ�1�����o�5S��M�����p���}e0����I�E7kU߳����6���)�m�Bg� �.8�������m��vI�]~��-�$����8!����@�>����=J�KԌ6�AN�^)˱�: u�hp���GxR��U+��N=[Y�<P���� �� �5�2�'�.i���+�p��Rɍ�K����2;�W��u]��O�P|^����m��H|�Iy�&z��&6YRd?8^�EU_������� �=����ҬO��/
�4f���̒���r*�D�Z5�{)q6y�Sz�m���m�_�����P5[0�?ݞ/��nj\�����!�߇�:�%Ǟ�)N)�pj �:���o?��%z��������)+-Ε��0�ɡ�5IR 2*��|�^66:�$6��kK\��.��L�1��*)�m�ʙ#��E2��Z��#����S�\�دf����/ywRi�)�8��! Jk)�%��$�����x�����W_�~��7/��4Xd��&�A�do��Ha5���O�.�{3�N����j+vj"����e�VȈ0�X��CL��#\Pm���B;Y^J���3��Ct�ߠfp#�Hq�D"'�B-�ش]�=���|�(7w�Q�1�$"B������i��Q�Q���K�(Shۀu�����L�f����~*�H/V��%R�C�3�>��]�m��E�jov���O�g�9P��N?�7]_���|X^�T;8�u�p�������q[mN&!�Y���mq��v���3�֛��t'�������z�i%s�8Y���7�5<7���S�Р*�($����ѵ����Re��?�?K}8o���M} v�߆��i��b0�m�ޟ���̹���o��[>���N�Fl�m�k��͡�o���{x��`���Y���'ߤ�'��9`N�FG�)�5��_
3Y�������!E{+.��_l�6>>�j�T6��&'0[��P-P�L��O�ޱ��`��=����gx6�ʅ0u�'��N��m5wv����+��Hշ�|#�C{�\�ӶZ_B_<�TMܴ̆��
_YP�{�GG$[A��x�		e���JA�C�x����C���x���?����o���D}?����}��޺h���$�c�����Q��,)\0�;}����F���N�Xh~<��Y���X����gXw�`ZX�և���������a��͒��QO�Յ����@��uo춹o0.L_�q�ac?�r�G��[�ݏ�5��ª�����ڃ?~��o��h��æE4L��q�ӥ8�Fa��]"�U�'���|��'�7�Co{8����!��D5N�?�[�Ds=��A�?Go����ʥJ����O��>7��js|�6�v�[W��	3��=�wMq��+��qWl:7�\Igd��s#DI���n%��Ro�uu��{B��oA�m����RǬ��a ��R�%Rd��jJ<X
ޕgE{}��=J���bʮ2+��/=/�d+'�T���4s�M�_���A��giOY�z}^���=��TT�kB�K�W*؃��/K
F��z�j��s�[�ٕ˜��g�T��YR܇$K8߆�R�p��{��)�������=z�t�h1��"j��w��{ 6�P�e��p��c���{���w���;}b�)�[
7T6n�)l�.�\���O�l��o���/���y��F�b�5f�-��7�q������`�(��>�r����TL,��z57+�GW����V�
^E���8�O ��ۧ��q3'l�Y���x�m��^o�aL4��D�!��	��҉�j���Cu��Yx؜%i}�7�ݵ�/jP^��,�G�'#�3�O�J�BaW������v��b�i�mҬ�0��(��L�ǆ�.� ��TǺowա��o�K�T	��S�\��ږ�˜N�Zw�Rʙ@3� �d.<{:������3ӻ�L�k=�xYi��gY^��f(1 u0���0������&M��ͬ��ʭ���9a�M�R�������u��F����@)�Goxn
�< �3�\IV�8��C<�[�u��3�lR<��I=�T3,��%E�r�YI���O��/����V�%.�1��5v��.eo�R%kVOc�A@Fx�->}X"�䌀4�p�ʧ��ĔS[����ъ�@�� 9l�a3����:N �i��?65FW�-hA���m�50z%��°��Dl�R��㹋1i�����Ӛ�ﱯ~����t1�Ǐ�x˗՞}��ga6>Q�.��A�ܱ�j)<!�d���,K]F�G�'N���U��IO���Η=���Es�A1iY��R5�XU�/�,Kk��3O��F47������qf�0YfeJ�7N����m��O��f[�{�}]�=<P�ˏ�
�-�h�?�b�9Qr,ܜr�sY�] ��Gs�O�S,Ψ�j	I���Nz�9��r�d��|�cr5'���yZ����W���F13�&be���YZ!�E�a"1���8�ME"@�?5�mM}�	t`�aZ�ñcY���Pi��U�Tx$n�ׯ>]�y�ի��y��b&��6cؤ3G�̢��g&���S2�-VS��T��;T}ח=LKpV���� �Y���N"�J	#�J�O���t�cQ��)���r�<��#DH|V�ख़��6X���-t�N�[h��� �iۛ���]O��o�;u/3�=Cp+'�3]��=��E��9��=oA�� ��2$h^ƿW��낀l1�/����EG��b�b�"��T���������v-P.��p=ʫ�s1XLol�z8�����>xvR��?��L��O�r�Mt�9[�g�[���y;��
�:ʰ��<�1��Qv��� /$�L ��Æ�1}�Q܅|6�tV.]1��1�S��X!����p�eLV��i��OH����m&s�0�f���r��۝m�R1jO�B�sy6��E�K�!�%Ҭ���FT��a��w�`#9cn+P���g�PH"��R��{�?ߴ;P7�-�ӭ���U�s���qe�Ӑ}�񉋻=���p�w�ӗ�=$�X�ч%�Q&dI�{|�������؃ƶ�v�r0,~�2.�R�jb�n��,II\j@�ڇ��V����b4�xh*��#���0�~�;����-��Hqyo*�}��ܻ̚���n�rߙ������w��N'*���r��w���a����0�aI�a���T���~u�MJ�'̩'���L6y@������$/�[Tڜ<Է��כk�D���6f�����j��1����U��dIz�-�6l���ա�*���b�����P`e&�(�+�UT��S� �4v4�N�ARZ]�/�9$���]�EV
��7��⻨3��2n+l	J^��o7��G��#`Q`�t�rK���.;#8\�P�ﰯ��;�HJ8'�F,�I�Ӕ��    �Y�ה�w�A�S����s�؏�jS1��#�)��%O.ҥ�4X�r��:T$���"t9��}�+>&��j)�Hq�:�l����L^�4���	�ɠ��F������@���%R\�ɲ��7����Þ]sY
5�aZ�gA�S NQ�V���`6iZV�$�� ����)ml��%��df)�QE%=l����P|ʝu�-�"�e�vs�"��P���	�e� z�զ�1�n�#E�*���x9#��n(�	DR��u�����S괝'Dn:����bS_W���}�����?�}����PFAHT�ڨNdI��p��ڵ0h��n��k�F�i�g?,#b��qSR��,�PW�v۞��a����b8��

�3HKe�IP���QU"� 0�	���^D[65�����R��"�F�?�1�Fz�@[0r���HFH��@s�`!C�9X��O�΋@"���6fH�Kd�xH\ȕf�����M)��xٟ�[1�~�^�sA�}�����B�y��4}cyb��#��̱�t2[r=��=[�-�1��X���˱c;V�U�z�eC`zs�F�������D�6&�g�bJ碓���- �V{w7��s��#Cݍu�����d6W�s�X<>������~Ds�������yK�pO���$�K��}�M�:&!�Atή��'cӬ7��p����TH`
��ٯ쩂���t�?��OV���պ�}؇z}:~�������'�����xzq��_�����P��/N��8�	��o^<��ˡ����`���ޟ�@�@P�X����W���u���F������9���ʋ)�X�nB���3���o=�����P5wY���/�=�JHl�:�zIG�}X���^>�U�]�ʒw4[Dǰ��SO���r���$ܮ/p1��ߜ���.(P�3��QhQ���Z1�X��Q�M1j
�gk��8[���ށ�A�]���>m��	�GGȹRO��:� )bO�	/Y7bS�����ZV�Od��Ī����` 3��O�@g�Pd�ϋ�ޜΏ��0!Զ�u�ҸnB��2ruɳ��;0���d���=�.���!$_�!�Fvψ�'FI-@�	�
�i�g��$��� D~wF�@��cCq|�
M;�sn?j�e�v3I�c��0���fqF]�z�ˡ�doʅ��I7ػ��9֞������r:7R�Bϸ$�vZŹ�'΍��:�ǒ8���63����iLt�G�8�=0o1�OALҁ0�E眱�����Gd��$�=HV���/���c�<�vX���&>��Bh�A!�Ұ�q&H40˹T5,}�%_�I-�v�}���ȱȗuBӰ��U����쁋�
���j?��0�}6V�lǾ=41��+�/I!x�@�C���bÒc��D�v�h~�>i��J��l�
���d�>���e�I�q���u�0 �����/���WR'9�Q��l� #t����TR��$l�=�}�
�TȥnIʡC����9�lLR-(҇�Bk?v�M>���|�@0����Тd��Q�fj�u�ާ��<��N���{�E��`�:;��Bv�A��k���$�_�c]��A<q]�#�Mu]��#�D;�O���Dc�����0�Y�'�K{e�zbMB��_q8��{�]���&��ܯ�J�+0�ǩs���:��{�Z�c�e8�!𕙊8?�A�T��Lș�5R���u)�n\KD� � P;���OA�h�c��E�Bw~t���D�&���W� 76�H�Ȏ 9(���E;b&��JW�1S���&�6�*����Ћ]a~����5��,�鍸b��r2��k��n��8���_�zCH2���8�2"J:L�vK��W�y'Η�aG�C��=`�y~��#MH�(�[�݉a�[*�\�N@�Eq���5\M�v�T�O��e~�ġO`נ���a�	0Z�@N[&��YRd��Jl�ڎ�Z�i����Dx��3��J��gϑ�L��>����!^on�5�W:�H������ǷkKuX
y�[����e��W�����)rO<���|K�L돿\S�P�U����[�_b.��{��x���s)�؅H
�ȕ�_aI0�X���)2uY��"��q]��#Ua}��=�G���~k)���RN-P�$�0}��/ɶ�o�iQ�%K����e�*���&�fI�#'9�i�B������C/���,����Y=��R䚸0Ҥ�
v��*�؀�=ܨc��(�����X8m��_���,_������r{�T���H�S��t|�RJ�/J=����1�K\%��c�4 EFI�w���#ex8�
N59�))��|�#!�n���,�2�Uz�0=>�R\�˲j�5܊j_�ΗO���xho0����᷿��DO&��:#@�<=RX��g/�3s���V��@�j�#%��&�8��o�5bi�|�n�z�u�X�w�O�A�O�5�MgA#��e߀W�OT%�\�����C<�K��Τ�J�uxG���:��:�@��JR�W�,������/3�v�S���'e;��(�4�1b�jH��������xN�ޤCS�����)JI1l9�Y��ޟ���K(�NEiojL�����%���.f��V ����K��iS�%ܴ7�Q����6D��sk�?��k�\j#؋�TK�x���a
�c�ΉL�w�L7�s�'95��CeL�<�4�IFt?1c�JH��xMR���
޾�������^|��ͫo_����Ż��~�û��T�Q�m�C�bD�/��b�,<���$�Ǐ�Vxϋo���z��s|ɶ`Y������q����Qݬ}%���q�Nޖr�x�=������h�
�{�o�U���|^��W?�]�6��*{nʞ���5|q����U�yW>��S� ��
D�����9����Z_"��7��M����>�G��e�%Ȓ�YVo"^�/ަ�7�9X����xn%8j���������ȵ��m�
�`��\ F�/��$W�]��R����,�Mp)���"f��Tp���Ig9�AH'�`0$�U��z�vJf�8ijuZ�R,��$c+Q4��G�����50�ye��'�x���O�7%E~Q~M��j���)>������������� *��Pܟ�m�;FJ��C��7�O$�+d�șD�>c���J-�w�@7��*�L�H
;`y���_|���W��}�J�5�RMy�~���C�yL����:M�S���K�rǙ��2���NH��ή�J� 앙p��h�+Y�f��V�n�C�l���<#c�x�;@9撆:A�z"�7�X"E�3?x�e4�|B�E�k�˲\$�j�+��O*��1a�)��^"uU#:m��x{����>b^� V$�N�{��6��!���eN��#����,	���	$+H}4$������VK�e"���&6d`X��RCiJ
�̉�?xr?K�8���1�� ���'��Q� Ud%x��NI�:�e�D^�WL�"�)�[��X�ޡ}�.`�Ci�b�ݽ[ȊJ������ǿB�����05�73G��-���T[J�i�S�;�6�
g
J�G75�S+�,�]"�9k������S�����c�E�m���L=d�!�!�4=.�o�"�{��7�_`2�Ⲻ�A�,�?w���#������T�ΔQ�(K��%��<ME�����M��K����e�'�����Yq�o݂r�;�	������Z�~�R���>u�i�KØ]$�R5)`K߅���[�N��N��>Q��r�D#�վ�H��C��*�P��]q���\I�r�II��4�1�XI��A�?����Qk�I�D��bx#���8��}M0ޜ1,��@����^"��p��yP��L����m}g]Q~��R�w�&i�0[>�3p`J��Be��A5�਄�*N*	d-eZ�������>�Z���������Rc�f�I>�>��;�uh;���
�y{ج�T/�1�UN7��%�����&�C^��f/J    E��`:%D��x[W�s&�dȋ&�=D݄�Aǧ�}>��t�D�.��鄼��v�8>F�:��-���T<J��vfo��S]�$�F
��]j1^2''Y�]z �Ig�Ɖ�N���O��]�>_N��G�%xO�f]�� Q���R�Q��Ǿ�pk�!<�W]=@N�#N�щ�kJ�^\S&z^��$�w�Ap<]aO�yUH�r��>a���s��y��=bo\�����)�It��;ż*�L���ԯUe�:ʸG��qv}�BO`�[}�%R�V������C|��}n?����P��C}�`�s�΁F���B�]��e�^ 8���"��dk�9|V!��4ƛ3�U83�,��J4W�=Z,�:e�����M��=�������cκf%��!u>�s���>�:'f �"�S�D���X&��<�%	�6��l�H�Z�(�6�����̧|� Mx���/��XkLg���h �Yn/]O��G�2�W*��ː���D�_��\?R���Ɉ~T���M�5%�3��)�w}Ld�{�L2|	���npjq.���,)�U�|�T�#�z�#qͲe�rZ��9^���,�뻺�2�aq�����!F-QQ ��Z�h���!C;�~K32	]q׷c;�a��d�6�Y�)�1yE�0(�����_L�>�����uӞ7h2�>n�K���R���%Rؿ��6E�xw��u㳴���H
5�aËB��=���Ƀ�!E��VˁM4�y�2Q b�W��_�)�4S��~[0$BP.K��RΟ6�X���{?��W���oϧ�3���R��0��:�,�D����l�a����T����^��>��蓙	w?�I�I`8�m�a�H
���a[����P���b�4r�$I���YR<:.��";�ByI*�d�B����-l��%��5��]Y87ͺ�ݶ�.���#UZ�W4p2t�9�j��opR\�8�.�O�mul�{96�*X��G2���$4F�0��%!a�vɄ0q�<+H$��Xl��7�G� ��i���_Q��K���z�6N�8�Z/���-��'x�ڇ�4 �����H���u��zb�,���+�5E��}*�KJ�c���P?�'���:�PE����y��|ڔ�2�>��}QE}�J��L %ŧ.1����~��AWb&)��oo��X8�iN��Cpc�P�b,�����T�C���0A�K������.�Cs}x<v��7��~�����S�a�*�+��+�d;$���D�H��>m>}�aCy�����~^ϓ�b3��-��r����Xr*��KōH樳�bi����F��L��	�����Π�"f��<��r����	�o���v[O��gR�I9$a��8�\�8��S���3�I6�3����;1�Ь�A"�K�t�!�
�4������1�y���K���S��є�?�#�S �RO)�>�SR�f�ܾ��`��u�9^�r �B����a�aK���e������Z�T�d����6���#SĿ��bC�<K���dY�W��y���ND����D�_7��_��Q��ն���6`�=��}�n��8ý�~V��e��%������	|�1��$`��XlSJ'�["u#�3<�lQG��N��u�D5��X4�+� re1+�]"�v�L�%�r��+���t��ͦ}�y������h�ܭ��Z y�%Q`���|"G	g@?mF���>/�r5��[6؈	%p�ˊ��럐�����֔���cj�.���_v�2Hg�[R��s`H�Jى�"<"��u�$e�)Hg鲬�]67E���L�]7h`ͱ�FΌbK��bGH�"�O꘾%6��+ati�)p
�n�C��7��0�~���w������Z6�����l��S4v�EăШ{�5��VW]�����.n�u~���X�~��PD�����v�%nz��K��H� (��վz���/ݡ���������o��W�T/�"�|�Z��F�2�`d�m뛓=��+N�J2D�L�u^O���Y"�W]���'s��/G�U���,�SR`��ư[�����Q��(n&A��ٍ���K�#sK�0/�;�b�0��0b=����Z��/v��PS=P����`��ñi(K�Bn�h��f�O3�R􋞍 �@@��7���z:/;|��D`��k=Q7]"�y�<����:���!2�d ��Ʈ23$!
VX�ǧf@�g��xey{Yy�������#� ���I-jnX
�̋QPu���H�����B�*쐹#̰.q��b�O�̐ͥ���~<�SYO�EԠg�CdQ�DL��G
#=�,�2�Ǎ���Ep{��Ӧ�װ����n����7��O����s,^mv�V�x��2xK9^���]��i?
l����	ʧM����O ��9+5f�9�4�p%/�'0t� CC$۔�y���>Q�:m�9?4��Ƕ�Vm���=�氡L̉�j00�7�5� �`(���"}�!��K�p���J�c�P�]�i>05��ց�ez��{�t�,�B<�{�����r�*T��⺹i�🼸m��_A�i<��(�*G'�sG�(#K#��Z�ni���t�⌏��d@iy�gH��}�>9�)J��RP4JW���]e6�Q�8���K�09����K���˥GEo��	&WVr5�
#R��L�;��:k	O�j:�/������'s���1�Q��@��D�*Y�B�o�ʾ��f�9lnkK�s�0	��IL�1J
\�Ε"C
3O����;v�U@k@(>�3�j���S�S�r����XZ��x�H�K�e�Zʮ4�˂^Ԕ۔�`rL���x�ў@�h�PQ�����j%����!����q~h��}��C��UC�s��g�qp�(R��y��`v����Ԡ<a��f��gfIa�HL���Zb1X@�f�h���*�rdB�4t��$��)X��b�&����3\������U~�r�o��H��-��~@2¾VW�LN�
m�vK�ȉe9����+�}�0����݀��J����
�� /ͺ�7j@6�l
ӞA���\}����'��>�B������SR\��N!��\7���R�Fu���� s8�T��}~�<nL2%�Hq2��)�����{���u1L��4��5���j,���� C�,�z�L����FE�piu�G͐��ku�$O���❵ J<�u�Jv@h��eWt>`W��M>FJ��ċ�<�Z}D]���/[
����?gl��x�u�Zi'�Ø0_i�dJ�uak�8���ηd��B�T��z{87'����!���9�\*#fd�6�-_��?Q�O��OQ�Hՙ���\g����p�\�f7ɂ��A�΢B���H.��K@��|O@Ru�����a1-Ɏl�n:��D7����+Ǟ6чX	A���L��hi]�9�r���j����Ha2yq< �Ŷ�ﻈ"�G������p���K��⁾��n:9GSD�5K��i������c��t���ޟ�Ĕ�̅�FX�+�ХY"�Ö�)iNz���5�`���%��I�+�8/�)n��rd�2l��ޝ't4m���Ǭ]UW�udv:԰ˀf���2�^����lȕ����q�=h���΋m�a#�8"��i��N*�v[��z�GQmw���ʹ��"B@�WH��)�%��~ ��Eψ�'������9�l�RՖD��SU;C����/�:h@�CM7;��i�1��B����SN�B�O�Y�����-˧��.~��j_(��ڶ��]ܬ#vMV.�/T��+ ��)̅��\��`�MaџO�*m5�E���k���b��:LhF@N�:F3�οm�sy���p�ڇ`c�m��#����WX_6�� @a���)̸���^���ƃ�v����5�BIc�O�`�(�%��,G<��P�`�Ğ�?���n	, �	w�_��L�,��Ѥ��&d������(�\"u	�4Y_��m������I-i� =@�V!c>K��    �?K�>��CC���@GM�	�/����k�u��p��)�f�I���]s��o�u�G��@�E��O��pѤ�K�Y�K���%���nV�.� q��B�юH�ڐ
Imp�T��`��?�/ .>�֛�}��@� �Y<�0�̈́���,�/�,��4y䇏��8�ޟ��S�~p�KðnI�J�F�px�*��w�~��nP��ϟ��1g��K�`B��(�q;�4 ��r�s��lP��6�@D�g!=h��U�����Ѿ;0o�~l�ќ1�,}�p=�`���F���!:�{�#h�>�U��^n�n�3�X����!�u8^*���ͤ�v ��A��QoNv)V�Z �Q�YEX������}x��g$��*���"�(})>�6S�d0ε��=��]�}góՏ�T�ǲ�Q}?ɸpAS����Z1�o�����n��
O��e�<�{�c����$����t����)�$L駧8v�㢟^9Ӯk�1k���c+��=�56Av�
՘e�T͠��$X0�h#�S�� 溂��6�/.��&�D<TG��%��Cu����
��Wꃥ�)�A�:h���l��Oǈ��)ˮ�ki%(h��4 [�<n�hu8�5Z��+&I�_.)�v�D��
c��C�p!�8uRW�=n�A�L�;��Y��)t��$�8�tʟ�� ��5"���/\�}z� ^z^�î,�L�J�x!L �'&�͢3�*^Z3iy�ȹPZLP�B�p��8����k܏���q<&�}���X��aԮ�Ԛ��|�91�e���0�r&ӓ! �xV���քg�������|A��.�o���@'br�Aa���V	��Ɗ0-ַ��k��d��9��x:<�����i��=7���Y��{�j�K3m��d��Z?�R�x������虾>�p@�؀�*��&"�e��hۣƿ����OCI]�}��u��?J���/yҤ�$D�4��R�NE�w�Y�9�~�.�ې�VI�Ǿcv��x�����`vJu������uAv�[MƑT׼YY��6��F*�����N����o�h{��$�D;uO=�+��ѿ�pJQ4���
!�i}ۆʱ�MI�[� �,K�Cx0�G�0kJ�J;V��r,7Z��Gj�3삀��>��U�FB����Q%���dLS+]���r�m?��,��������X���u3H.$�vB*I?�|
k=��6���(��*E�LUo��w����$u,��;�M���#�-���@O����C�Ép�@��5K�b��շc��4�'_ۏι�24l��=L��
E�U�� ,
#�Y9������q���k��m�^_zx{�M�J12~xXv���`8H�za{>|h�c������㦨*,��#:Ƞ���9:D�-�L�gЙPُ�a*��k"���<� �A��O��T��l�3���F*�ɵ�)ɫ┌��ɜ0)H�e�b�9Y�w8�^ׇS�r�����?^o������ߍ3���=(��_0���_��M{�5j{Dk�	��߬��k̾;T7���jKu�5��%(j���`�Xd�X�?��-�4���R�4���zf����/����U�ӑ���i�hu������8&���vK�'���Rpc�|�T�������38$�OMU|��nhO��]@��l'̸�|Ҕo@�M~֣�����������A�p���)�c��jr�G��LZ���|,Z����#<Oetl�Ouz$��� �#N�
sK�,�Cr��J�%��3�-��,%9YU�	w*:��O�&q���|ӇC_�۟�5�^׈סR�56����c���R�1�R[�a2�?��q�H'F�+oT�d�21
j���%����}-��F��7R<�� �c��6|�;��5�	;v0A�S0��~�d%�2U�T]G����S��l.W�#�mhL�N�?Q�CJ3��o���,{�m���D}�?Շ=�����n�?��/��C��t9��*ڇ}l�6����T֡��Qp7�^��>�$���N�j��A`�c7��Բ�D�-{�B�MI���������pM��P��¦�B-Pzgx��0���+~��v͙R.�h�r�e멯�]p:�b���	̹�`8��:H�hSʤ/��i��s:�Q�������p
R��d!o���',�{S/��.�����|���Ra�`�ό�A�+�d)	��~���$�K� u����2���4!���)��S��X��Ş!Ż����m�Ūiun2����s�D�Sg9������lL&�X"��Mv�B��ǿ���QUauT=~�}n�Й�:�=,@�4�)���:A��X�ýR�9�H��%�C���/]�A:"���B"Tph^������_��<��+'�M	j�-�Bg�ԁ�Y��*Y�����5��ݠY�&�[.��(�������N�}��vؕd�[>���+��v�{�m��I�a��	��N��m�Ĥ�4S�~�H��P��d'3��+9mn���7��n��/l��wQ�2��C�L_B}���AX�-���͐�˦����'0�h�"N3O�{RdԴ�����.�a�z��,�a�!��qų���xߢI�;��5�d���x�l F:�?�����RR�>I�,U���w�c��p`���E���g�� ������;�D�2���|Sc8�X�?����+V��k8��*Qؔ�&�5\�%R�ݫ�n�1xW���]�U��~~,��ŷN�_���m����9o��T�n�yi�����?�Nթ��Gbx@E�Ya,E4h�n���n�^��aX��} ���;����s:���i��vC �C�3�chV�uV-���9�,}��`(����=��V�S�1|	�|)lv+�D�}+�x�2gH�K�?3�������~Sam��]A����\ڨ��d���P��|ȥ���Xʰ��X�է�t�̈́y:B3�6�T<��a̒�u�g����n�Ӟ�{�CU@��΍��:�f]_9Mn���~��^�c!g>K��H~�|���]���}u�o�t���hz��P>O�/��[qa�eK�p�B&�x�&����ȥsB���}L'L<����+	�(����H�SyF	��-��\Tv.��z]�p�{���hK���a)q;.�3K����(ɿ|�p�"U((���>�I_nbzy�Կ0!��^� �J�3P669˒��2������Y�r�j\�S��Ѱڸ�fH��>�'�=��B���Q�kf=�g��!�`=<F��@��~��sd��v�u���t�ϒ�3b�S��	G�ͬϖ*��gIa��i+$��$Qs4(S��{�V�L��:��+Αnn�`ӊER`��Ɛ�?�N�"� eI��~;�\�v-�AQ}�K��/�*l U�,�PI'�,��+��L!`A��9���?���Oԋ���Ϡ�>��Д�/��Co��IZ�8�R����%�3K���1�P&ϋ5�{h]�f��'�!մ��/l��
�V�܂��n�{R�ђb���e8�CH�Wޑ?�4~A-f?�����u��/ڽbx��Z�����&��:R�^:{����l��0��%R������bB�<)b�_�8DK/��o�JY��fX�0T%%�Y���=���3�4�v�xR�j�� j[�G5I�qlc�Q����7>cl�tx���PNg
��#1�GO_����J/�"��������k%s�JO��z��jD͈��`g�=��3K�^ 8�D~4#�0MB;�gؑC�4���|�2!�bs�<)���lh�(1o��0\(��d)p�-�F�ɸ��h10�3��!�6q�_�.��2���+�H=d�.�y�Fi�%��G��'"�ϳPF�3���")�gE�߀���~f��jn�<��w\Zݴ���Ꮖ5Jټ��H��|:ǘ+0�J7�وة'�����C�DVI��pP�c�G�<#�s5+ e�5�/�#���Z�PɜX�v��츦��s��<��R`�����,6X�F��e��@���)5�m'����J5cz�6:������- :  �<��r>À(a|���(�[�[�3��S�(@f��	|�<=n �:ՔB�_��8�'r��4s�%VǮ�YRਞ�+>��	��em�@
�S7��Ҝ�&A����ّG��%b��S�J�Z-��$��oZ�V_��Μ������#R����慤b���Oؑz~�|?��bsG�S�D��tD���(�˙g�#uu�G�ddg#0�<P5y�v��F���z�yQ+6���)3r�#2�IP	E�8�A
'f6ɓ��)�F.Iv,��y;R��ĩG�:"���Qj� %��d�i�����z~��p�bM��aS.U���)p�
��`�
��0�m�zR�A$�H%a�QU�\�ER�/��;�X�1�A��Ϳ��� �(o�;5���H�Aް��Ϳ 3��KG
�u���J-��C�y�n����בC�4�|ԯc4�0\-��$Y5k�`Q7�`�EcPK���I��yC��@��)Q೤�/ɽ�#k�~�Kjɥj��gN�'���?̼֡�٠V �e�D�NӣF��$$K
���C�	&��3� ݢ\$~�i�����pPSJ;�%t��/��<~��0�g���P�\�j[�������i�0,6w�Q{�$�W�לaƹ�Q�:R`�v��#@�,)0�;+�P��q��,���H�CbX�"ձ�`zn����M�K��DUm%�I a��X�o���<^I`�>	�� O"N��D�H��I�z,6J����<K�3ɓ���[b�2a��©66�sgH�E�9�7�?��xX#��2<�x����t�9N��=<%."�u�(�s>�9`���oTG����<쒿�">H^�u��Bͱp+��XpnfT��Y�,���}s8!���ݷ/����`S���؂�36xG��c�m�9<���x8���$r��a�K;^��������g��s�US;�Fw���.ˮ�u��r�v���3�Ǔ��F���,�.����ٓ��`3|<)�G��O�ٶ�&'�wȓ"��@Tw����Q�i�L8'��1�΄N������Z�`���3S�qS�!WZ6s�;M��|E3�M��aS��2;R�)�����y47��NG�<������[/�Y����x>:r���I_�=���45�Fnރ:��	�t��pj�h�}�D��Ԙ��[� �Y6I#���x���<#4k����v�T�@�ݝ)�xH���Y]�n��Q���#�%�~65j�0��2��Ha�L� #7��/�pLfsJ)�H"��!�D�0|U�L��Fq@�`�e�]��D�rk��!�
*�j�A�Ig=�:d/L �nf��n���ޝe�hR�x(��h�s�CDM�YU����F/��s�q�`l��SO)� �i���J�r``Tew�րI6:'��n��+c�ծ]�G䢪{yX�B��f�e�[)�
6q;$_~S=Tx�.�iƭ�f��e�uW����5.Q����I�H�}��o�c��KrKKC8��HqI2��b۹S�n	2x��Hóa�@
Gp�¦ݜ��qW��X*i��%Ѣ4�I*5&���砙��b).$��DB�&<�8��;s�<)��r��b��;�g���C��DQl�� ܥ����l�@�0�����(<���2��R�����gШ��x�9zr�ߤ�T�4hRN���5p���ґ�.%��I~���p������ƜM.���5��*@����,"X�\ĸqCu>����.C{Dzx��n6�+7��$����
拤�<_��~����c��6�O�-��4<�J�A���K�?���Y����� 
�n�߇3g�O�Mח����G���K���Xl�˗Hq-6�,E��yJF�VN���V-�� �s��{>�b�jkɠ��´1K�nA���-D��Uga�3��D�I	�x&� 2Y��'��J�,-��<*�NL�d!W��1�%�������Ҿ�(
�	�B�,), )�J�}}Ӭ�T���'h�a4D_I�T�|�t>vW�������YW�c[���*��+���~��'�O�v��emzy,��0� o@�%�%��G�:�O*d�?�:h�˾����m,v��#$�)F`#	�ȁҡ�H~P�	������/�}��[j����K�n�?��-������_�~���?w�������)>m6��������� U�t@7�!�EuЂRY9�t��+��LDe�����իo_���e����������W𡊯-S����k����/�O_�ASU�N?C�6�z�o���=�	��N�=b��WJ"���L_!�wZ�)
�zO���T޿���7��[ظϪc]|�� `|�Y�S}������0�<3��X���K�8�x��oǍ�v��f�J�(��Lv�w?|�ŗ/�q��a���")��f�|Y]�~�\.䢔Wbʌ x�Q��)K��\d��Z��8�0�o�]"�zӚ��̎��O���o�۟�@�X�)/A�05z�+%��xC��J��7mUx���3��� �-�L�쟒�#�d��_�3y��q�7�+%ǟ�+I�XHr�� N��}NŢF5��{L�OO��V:�g<?x�hy�ѱg�^i��˱T��_J�Gg,?>�2�s��˒���#�DY�<k�Цb����f+*-�d|�������/mv��9T�l��M}:����g�Ҁ�:���L��M�J�H-�GZ'��=V�MsS�D����av�����$g����h�
�,C-U����QQ2�a�>��_$ŕŋ�:�)%/sa�J��d�)�����˩i��̻v[�c
�↠/�	ak%bEp��'�\T4�����훱z0 E�!�Sn
/�'\��
��e[��`^��bsF�"a��҂���z]��0��eq��5�WX��3kFd=�ץ�)�=xVz(�%Wby���Ha|Q��S�8��c*#��:�(��D�K)�l,���(���3��$���z2��N����>m��Z��/Q������9������g����m�꫗ş�}��/_����Y�����35K�\e���/C-셐j��I�QPs*rP�#��}��NR�������:�U������Br~f��T|YO�Oն��xZ\��xݞ{D�+m��=?!��%���XF�73�J���]ui�Űoӕ®c���pМ�ycm �(�D���3�nw5��+Y���a��x���@�=-o������w�'�����/_B�"r[*9v�A�E��t@B��Z�(0F���͍/�I;޼�{�`|63>�Rb:��9��I6�~J
O&wĥ�L�wA���5p�E��S��vK�����������Z�      �      x��\K�7r>���:RV�� �>8B^��7�
)��Kkf$���0�C��Q!�"�|�����zU��FPA�Te"�od�"��ߡzn�s�1��g�q^F���������Mp!�����oǻc������������.�N�؛�i0ύ���A��꽉 ���?�~��B)b����q�gMpZ�]X<8�#2����0��t�^���/pg�>�̂�W�A6p�"�`-��	����ށG�[6��n��c�B6u�v���g�|�^e�G0l�������{����y�{��������\Q�{c&Td.r�}�G�dH�3�nyB#'�(��Sg��#�<AƓ�Ɣ<y=�%8X�3YO�e�bבּ�w� ����MD�Ĵf)�"��i:
���
�t����4k�������$��t3��<���oE��Dm�Ɇ{"�.��o�������`-�iY�[��V�� R�����}ws�^���~:�_�~8�N���S��Uq\��`eۆ�f�S�yQ@��wj�b�o3�ɶ��g7?��״,
"V�:Bz1쇻�7��*������h��R����"��#�-hCU�:Q����*�ҲWk�Tu9��h�"�
˽uփ�V��%(�}�&BW��hϠ\XU$z�ԐE�B*�p1�Æ	YO�����IX�_��3�^�J��ԄL���NA�Psqo�"(����:+�,'}���c�M7��K�:���}{��<�:I�쾱�+Ӳ��:<��]���e{$�q<n\�fǮ��ӏ=���p��6���@Klt��|�aOIYb��2奱�2�2$�qm��/�W��y�}�ޞ��5o��;9��[s��������YXlA�N��Iu�KZ������v�J��8q1ٹ	�����(���;�9A;E�+�@ܣ���7�H�����ZPa�mE��Q���{9awz$#�����6��C�y�{�kF!{�I$V��z"�{�&�#9T�~r�ճQD�&����d޹L�^i�G�\j v��#��ﳬz�%�Vj�P��A��"��}�I�|~�?����k�D��d�o2�i� F.�S�	��&�a'�*.���F�i�,�^҉�D|�I�T���zoO)꛸B��!$%�����{�gF(_V]�D��$��-�ηw��۫���{q~7��>�ػ���n>�w�Ͽ�WQ��2wf�C酸I�e�r�h�=DlB��-{�]lq�F_k��̟T�G�RM�`�6Tp�]��\v-���>�Vysd?�|���i�&B{�>P��x���[k��A��C�e|Z�w/?�����h-lғ�-�T�2KnM5J�77.e>�FkWP�+'���E['��!J1-��^��y�/��}��'Ċ�_�Υ�H�������tzy�U���{;����pߞNԖ��,jA��1�����LKc�O��mlA�4>����{B�[������y�*˒�IT�t��B]zy�~}:
����׷����"E��ӵ�?�܌�zލ�$�8�s��gn�Rqc��$ٕ`�ᦀ�e�x75I�Xl&��I'r&�����1���p���Z�P��ն����e_�ۅ�'ZhZ�&���
)SM�
�!kE�R��HF��ut>���w/#.e|�I�z��c�Z�f1��ZP���T�ο`D�h�Z�\8/9��^�l��rƦgv�����C�<��KՉ�|���וᴬA���m{���	*i�A���>u�W��>�v�|���t��������_�ܽ����x~�{��ջ���w��P���K�����z�t_f;�BO�v����ɺ��v�@R��$�It[P�H�E�9Q�NJ��,De��_ �rx7�ʨU:S$-h>�K��)��� rv��P���9I$e���7���V6����^�Dx4N�6 ߂����۫�sR.�(_ר��)�dY�K��9[�BO�(7i�&Β�/�۶s�>��q\Һ~V��K��[/ ��'�4aBb��\W�d�I<�;��ֺ-$���87�����S�����dg��G�ƞ���zy��,��?�T��6dtpsA0�����5�x.hA��^���UwwL�U���zX�C�J��%������ж �����~w׽>��t W_��/�}ZLD)U�=Q}���dw"����I	��^`��ie2ڞ��G':;��ڰ�+�˫��v���}�����֮R>�ٔf^�}O�ݘ��_'��Z��s.�Ц�%�>:����
�����|��.����}�΁W�`p �C*8�.x�x��:�D��p��=�[�J���z�-hTw�e��v���#�T��9�w��@�q���-�΄|�#Q���s:}�9�G;��0s�/k����.�a�H^J!���>ڤ�q�H��J=&z!�x�:E^���kz���S�.��ل2��2�݈d|L��oAOt649� �(���Q��GQ*#����/?]�5DMvp�15.ת��,���1i�Ԅ4-wU3 �]*o���d	�B�7�K�,s��y�Z�a����s�|��y< B}�S�Vn,I�[��.�^Si�m�1�����Itnh�~�4+<uS�v��m�웱��}�u:�/�mj��2%<�!��R�*���Mh�������S�����tys&�������Xs?�;��~@	E<SʝL̍>d�S��I%u���0���>7-+)�.��-ݼ�������ϣ�땤Iqs�T�'���w�B���(M��2@��l��R�1��Z�ay�:��c�-��z��b���+�J;�� ��Y���l���e�{�ָ� �<��7�p�X�ס�a�r~�$�{b}ZNNFj��r g[P}�NO�1W�XW�8iÞ<�옪�U�'�c�m��͵8���.e�.�h��s+����85/?��(��$aX�A�%�����'	Ӿ|&�5����5�xC�=Q�q��6	������ˈZ1h�-�ЂF1����r���rN%��߰�-�Z����=W��3F�i�-�������ﬤ��r��#�&�͎�ʨ	���y�c�Ľދ^H�ae����
��#Ѻ-+9��=J�z���0�I���U*�qy���l��y�BOS�Q*ʌ�p�s~*�N�Sc�ꚓ|j>�*t�c"�;��~AU���5��䕬���ס�]���qZdB�Fe���[�f�i��X����z��G�PKY�_!�ў�$�l)o��OulT�#�?�A^X�&]X�N�F�FL��Oׯ�~<���9c�q��	�a�lE'�ψڤb"�v(Dtj�DK']8\�;ܴ<NW�6�`֭*�D]�Y�լ�<
�fǯh�`��:ߒ֡�IS�
�q�fD��ޤ��CKZ�����v�=끷 ���3����{N�b�h��I�r�m� ��qd�Q���_���H�N�}�y�tǿi)M��]�Z��N=SJ��cwu���~���ؽ>I�����������O�_��V��]�ƅN*�0а���3
�����Cmt-H'��?��x}��K�g(��hI	M`�ZPI$�*���T�4 t΅������ZS�F�K��Ѥ��iؒ�;�&�ͣ��;)�5WR�R���[,�PY�5_RqP=`��η�5*���H<�,���XrhM%�T�A*V�Ͱ۞K��pI%<@%=��6�ZS�%~��~z��Fb9�����Tp/�*�>����К
T�/6�Sy{�����ͯ���{��#D�*�Z�5[������Ǖ�Ҭ�d���+Q�<R�?��s����C
h[�^��=,�J?1���4�^��<=*�1��@o�B,2�����O��u��7w���u�1킑�m��;U�k˂�a�t#V����UE����A�xG��5�	i��#b�R�o5 x�����ch�4M(�}�:#����]b$�{ZT{;�S�ޖ���V"9T����D�=��������zJ	.IHlA���N�O5�V��^@ZV�Bp�Z�k�y$Ԧ�Xw=����N��=�:�Pq����� �  �w �ަ�m�X@*n8Vm��vc���v-hۖ�nӕй��0����bE���!b)��E��+��؈�y�a��V�/��5�K�T�QN.ɦw��c3�?/��4�e�-�=������@��&�����Z�ľ��
9}]l\0D-h��3�|aM*.}�b���l��g���Hj��	�@�4܎�b�X������=�r3R�6��g��Y����0����^�k+ws�2؃!u�,�1krZoX������k_�O�� �����	�U�������V���Gs�/_
ꀉ!����e�
W�gh�����ۃHEN��$uI�h�A7��RF�S?��yx�l�o~9��ٰ�_ti�9Xl &W��գw�>�A�� �[��9���W'j>%�h) 5�0ު'z~�Y}��������;���s?'!YF���MH�Y&�9��&F\�݇i�D��>�d$�v:�6��|�O�X�x�~�9�������������U��v_R�]�e�^Q�2������S�(yP��)Uc�DXu��nA�q}��&�r�K��x�{�д�|K|v����Pe �R�m���t�<벎3�5�[�_�Rd�ܾ�~su��UҬ�������D�k��a�s�Q�X�8kG9�Oo�l�
}_�Ҏ4�����3))�|��]g�_��=���j��e��+)?���J�IWNH�؉�*bz1z����^N'B;)�{�^\�@fz�~Ł���-+�U�T q0�9��u-D��d��z��"��g�'�H'��!ۂ�2˳���2Do�M#�����.vQ�C��n�]���3� ͻi)sf�Q�	ӡt��geO����ʗ�%����=@f{�xM��~��<���ԝ�t�쵟�#�YDUH�����3��1/V�u�7�HIJ�nN�jȳgh�[���������      �   r  x��U���F=k�b�
Hg��[�\	��X�E���ub-��c�~D�߉���,��F(`����7$��pE�i~d�󧺵�ms�0E�����C��|��d�q�qH���qy���jמ�.7���<�OW) 8�:��k�|"yJj�A���$�*��O_��S���i�>k$��}z��!��0`<dg�'>���c�c��.����#�}�o?�˿{�Z7�u��V��5{�9�HZ{����ѩ�Χ�8
��a�/�I���uXi@���dF`��U��xi ֥�^Gg #/潵�vwh*�<jP�j�Z����=6���}{��0w�&��s���r�pV�!�>��$p08z�~�D��oW��v3��}��
aL�������%B��b����Ա0�%�<���9��!Ď}$��#˽߬w�o���k�k�����O���q��6�j�Cd'i����-z�D3���0U�U���}��6gJ=�R�N�<����!fNB���~�P��C��`�]3���cg���yQ>]4A\dLHW&��t�%%P�3�������9B�4�4/�a2_���q���_>؍}�.�lW�����������d77��������S:�Cv�E�
���%��W`�wj��%�.�K���u�.+r)e��C��0�=�+ǁҺ	z�%˨!1��)i
��4d��g C]�W[���(.޺z}�At��g C~@�td���9l?�pn춛T��}��UX*�H@�x�g Cԗz%�~w��]�,AW�4���V��'H1tr��}04<����f$�onD�kQ��T���'A)!�):�^4�U��?Qb]�W�I�/���+M� eA� q6w��ߺ�      �   y   x�]��C1�{��l�	٥������� =aa` 9��B�����d\�؜��9J�f"=�GVZ�W�J}ɾ�j���]��Bbj���&�Sy1���G;�p��&N*L��h�� �??'      �   �  x�}��n�F��w��`�{>�i�$u\��Eohi�В�%Ց.y����K�:ԩm��!�v��Ή����0�)��ԝs]p^qSQ^r-���䲩狐����tLR�' �uW���vey��$�O'�c��uz �"�����[�� M~X������P[0QQS1]2F�s����8/��T,yS<�;�8ru߭�S�6>�"iV�G�(��Ӆ�)F�����Q��S���#`�����y���������0�z�<�b�z��X'���*UN�	0I^5S�(&�q�6�z�����O�#�j�1�"���&/`%B��ް��3���K9��b���}6�z�Ɋ�R8�T�!`v/��U��X3M,�0Gn���ZB��Еb��<�� ��r�^M��vamN�G��a��/�"��Ӱ�p�wDN@Su��1���~Rw���:SIW
���ǈ�ǘ�u^�O�\�̘/�T8^� ���ȭF'!�+�p��*�>]�*&J|.@�-y�\��V%a�?���0��&� (��-A�~�	pJ?D� o��K�h���Ӿ7;'�85$F �ސ��L�V�@`�����B�YbO���b$S�${D@hr��.�]=�Mɉ0�NS-F��~3��/�e��1a�K<6/��כS�!�����]�ʭ����#���	h�rg�`���]K�އ��B%�'F ���w}��D�ɵD�$s���k�Ҝ�v�4b8��wwv�P��C��	8jWG��Ŀ��5m�c�����Q)[J+�N�!�h���]�U�ʛ\P�@�C����: d,;�'1Eɏ�e?���w��z�~�/��N�đ�uF}j2
[X�q��<�������/�P80 �9eoGN�P�N� ���a4��IE0�r�%g�`���/�j<�X\�u1�8���9�}�`Sq�Z�9�7�"�4����b��E����9e��8�)U���̱]�� P��Gx���s*�*�*�m��;�@�0�7ϫc�خc��n!y����4@���؏5i���jօ��~���_��&�Ja��R���2��ן%��a��,�ٺCVҔ8-Y��5#���}S��%7�{����拦�oΊ����	�k֮���tEii�K�Jt��E�L�[_/:�Ʊ���*'-ݟ�
��6tWRm�D�9v�Y�c/��7��b|z�_b�ݗ��;.�_��sv{l<G�q��^�$���(�?�{z      �      x��}��%�����+�fߏ����#�<�"�}�2,�jE��L�c�p	�@H���3~����������?��������~R���0�M�����'�Oom�y�����	�O
��<�O����|J�c��ԟ�_��:>����1~�O�Ϡ���SiSg��'�O���yĀ�R|�����J�G����b�0�)~�h�����^���OL-E�ŅJ/&#�?y~Z���#r���J��0g����^�j��Z�q�ߕƟ�>��<Ɓ���B�����9���''�RMXd�F~1��|�h��#�4��
?��<z9`K@��%���郩(�H��^�r���c�L	;����'�OK-�x�{*/���?�}z�%�#U��_X�R>�Ϝ�S�?�5����j)�T�X�ў�J���K�G��?��� �̏C�zM�ʛ�hU��z/�ȁ���8��,��cl�����8�*�S�l1���i����	%Wlf�H�} `�OΟ�	����$�ѹV��{�Vy����j�S�'���i!���h!q~Ҝ�G���'�R�&-a�a/�'~˅����"N�0>5����ws��YL����e��B�1�=U��������Ϙ=�-�6�W������'�B?
O�y?���==K�A �ǫ�2O� �3�Q�?�	��
6ڧ�^8�]v��a�0�0X"\\����>#��[a�g��
B:���D��u@���!�ُ��x���5�J�`�G���`����ħ���=j6��)}�Uz�V�ʯsB°A#�O��R[��M�{�'l��S�x�
CN���n5&��&�R�Ղ����+y�G'1v�+$��R2~�T4{�G ���U|Z���фe�N@A\�� ��К1��h�p��\����a���a��|��S��,/�x��n��R�1�ᒻ6���2aՆs��!�A���)[3����Q���k�pO?���t��7�+�M��egH��TN`�ܝ�q8Qkʳǣ��8���1h�8�z�f���щ�+�`Nr��5,���A������1Z:��J�m�r��r����պ�J�A~%�,�=���)�R�5�ya��G�E�l��k T�l��-�`b�L��K`�A����G7S����8�LD^޶��T�7y��FEk�R����σ8�y��o!�eF������P�E7X:��'�3c�W&��a�R}c1\eTT��<��\q�CG�h:N��`�:�X�� ��c�1���s3�w��+��̥=.�;OK7�}�<��`��X����Of���2!`���4D���8w�T9��!�����g��f�"��X����1�`�NG$L~i*�
o�I�(�GΕ�Я��B:�懌��!�l8�&'��_��]S����W��a��6��S9E���t,��5��W�2]s^�B/��,�1�P^�V�	0@���2V��}�2"pb���Q�w!}��g&��e��	\�x�B@�B���]�c�c�qz@Ј��Q�=�8���^�+E�c�'.�pf�3/b$҆��E�
�"9ה��cb�2��Дj�1�E�Q{+@���Y�ax�N��f�L?2J��R�W�9���0g$���#���1\W*:�X�Y�hr\`d���9l�	��Oе5"��R��q�8�'/���&�<��Aw�T��:7�d�t��K�N ��{K�Z4X�)L^Թq��qA�K�4� JCx~	V�T엺s���"�N�:�>�B�H(�adrNL�t7�F��95��s�k���l�3;�Ox�t-|y�� ��ȍ9��O^ܺq��:ki�m9��O^�z""D�Z��5�Ԁ�YU�ֈX�4�^(�q����yx�t��"�3��]�P�t�n��0Z�r8��o����%��V�0�H���w`l��6�
�s0ΡTq�4�)N&c�9�v��L�E�E��9F�q�n�rDb�l�;K�DI7E#�Vx ��J�Y��,��[b�@.8g�7N��R��*P��:�8,|Gv��[(x��_2X�S)P�Bэ��f�=K	�2�׈c �e	�6�
CJ�y�iX&x|�C���D|ł%/�8%�%N�����I�Wn S�Wy�0l�9��b{���p܍79�3C��3�3{�3Ӓp�ao/�h'.�0,7`+¹+�p�0#�axA*�'{�^�G�hp��Hg�t���K��)��KyЅ����8��*���4 ��uYy��C��A�}���M�޵|�a�fD�������m�w�!���
!p�W��6̻ �w�����b��-/|�5ra3��?��ʷ��Wܔ���w|�e@/8:�.��7�]79�m�+P�����o�ï��e��n�gޙ���^��#%g���^LKnZ���HO��^�YZv ��4���+
k�G��xE��`��w����0�C��)L��U���@y��}̀/vDa��#)G�|a0 �R8u�L�����W Y��u2.���/l@�v��XD�ʆۤ`�*}Ed����mʷ���˄�������m�~�)<���K1�p�+Q�
���-?�*n�+���#�W����E)���D
�G /g�Q��
V:'�c��g*����f�������$� ����E��l) &LoF�e�[k#v ��m�}b���i �N�N���d&�=�ډc�_,
E{	,�A�e��ѯ@ݱ���6�\8���EDʋ�2��pf���[��
TeWd� 9��ŸM	���:��,�r<|\wt���?�A%RHN����m2qVC��[HQF�o��+��\�9�����������-\;��l�G_Ӕ/e��=��)��߲�`�Pˤ��f@�j�n�x��Y6�y��P�
lJyC��j���ku��!gb9�2�����u�l=`a8$ʰ����XUZ
�g|"�JD&�>��Bm�YǨ��&#W��@B�C8�2:J��NuX�µ Q���v��g�끙!O��I=�(�"v!ǫ�>w�.#$�4I�t�6���N҆��	�i �+�����%�0}·%F��6�1��o��:�/�3N��\8d��Eu�I�A8wn�kEl_���\�ɠ��N�"�$���±P�~vK��WP�r�{/ip/���x��]����v�J���@w�.�ԍQ�ir�������)#�1Gd[ny�+.q�9�7���pYaT1�$�o����+���O M���W�m!|怅'��M�e��PD�Y�Ï��O�p���b��s[�s�5E�8�q�8?ݸ|!�t���xIX���~��u���脙�ʊ��#�L�=l�b%����zd�(��C����^Ҝth[��s�O�Y����%�`D���͐�g����A�CN��|�r�+vGQݓX�⥆Wyb#螃�*��7n*��E�6�;����6�$Ĭ���'q�� {�5+���C���lo`?��h%-^��)�!��,tU.D��c��=?Fh�bW<r{s�MZvG4fK�7����#<r�X��ۋ.Q�2m�g�)Eӽ�7�Țo +[�����t�"�J�wF@�	x[��70��'E{���T��	�C��a@w16P��D��Ӏ�X������3�	�n�]��i=nC����F�:C��d����<C^�6ra�Z���7�0�u�\�����o��r����'�^-^�qSW��P�ED�/=qH�a6�鄮���(�/X1'=wWPr{?u�%fi3"b��������v�'�`���81$-��`��^i�\*�5��ʹ�#�<���F]��4(f�`2��潀bZ���a����VW\UM2�|�����T�?�5��CF�e���
dV1q-�:W�W�Hk�Ε1� �|"�[�-Z؇c��٨��3r
���'���a�^fS��,�$A���X�^8{���h5�N�2h    �7�!��cgd�,$�݈�
/�Ȕ�ɩ������W ��9�q�Yla;HbI ��cLN`jV���g�\�my�cL6p��Nj�R�?�cL�t��I�?l�
:��G}�@�O=T �W#�Q�B)9*^����_�U��ɝ	O`6�c��	aS�#�z��%%P����+�Y�5̸s+���6ջ��
[�*��r�=�qd�� ""n
�4-�5�8�ț߬���pn�b>�u��Y3��l֘�f�0&�8�:K��^;(c���Uf�%$�MH���gl_�rUp�#d�P���Ǜ���$���-z :n+i(�<3��8���6�m�8�"�=��������/M*b{55ds�L�SZo{D.�J&�)�����z��Y ��HŔV� ݰ��{"�����X��x��)�f4�v��$u~!��-H]v �/l�wWv�&��`����P��8,:��L�2����0%'����12>�3�V��#�caf)"�/F4����g�3�R��;J7�2�X�����^bZV�[�̓#d�3��B���T�t�8��K���+`be������n���Q2ۮX3����"M�7��zY�ƉK��g73�!G��C��¹APW�+��[5�b!�~��ٍ巌����ٮ]����Rh�wOHj�8�V�U:\�>��0�bKM�q�p�sc�TZ�\(����)��V8�b�j��8��J$�z)�U���A�@�ݼk��YF�g,U л&�@���d=N�r���{m��U�G{+�g�"2QȪ֬��tE!Ođ�<��͋�7P]-���T���\M��b�~�8J�O�.:/:�O#�JnM������ _'X�D�w�Xx���tU�Phpط�;1W���p�;��Ӽ��󂷎$̱~��E��b�7/����Bd�pĪ��҄�t�̈�kؚ�o� %V��0��O�j!7P����j��XY�4���wa��j�Pk��z�y)��)�N�M���n _Ljf�5�1!">XLSm^��|/"&��r4�K260��W�����jx��fz����^�IA܋9�v�8z�8H7��?�����f�,B�y�Ɇibp�V�|6�Jh����ҙ|��l^���)8��4&{�� �sro [�Y����<�n���>cb'�G�_�|V'�T$2�ex��	d�������Q�bN+�1�2�<��6������AB�⏮o�����c�1�b#V��1�@+U_r����u½V�<3؀/̛��Y��L���F��jZ�����d�G�8%�#��if�(nX�Q�q8el�if�%
��(�<�U*ܼ(�.��<�:0"�M?Ջ�8�,V����f6�-�J��X�%����B�;��9���X���Z;X�%�o������3��p�5�φL���}o���'[���j1}�gmTĈȆ��r1�������)�~�^L�G�Q�Ou���^L�v��h��nwY0&��т���A���w�uⒺ)��uf½07+��8�ؔhf�%4��BU�ߧ�D3�k3+�lH�DM�f�F�����A����B]����G%���K�6Pմ��ĭ�l�j��@w�JM�v�$�T>qR�l����S����	��ntm���pgD3�[�����Ί���p�����*
 ʬ�K7J�$&�ɬ�K/����Ѩ�fV�e�(	�V�S��ؽ���"�++�X�'���T₯a����=_M�%-�Y�?��v
Ll�2
Wc���dɯ!�I�p/�&�N,z8J|c4*�F�(e��_؍U/ Uc�Ma�=p/̆|m"'xFe6Au�|w�ʤ�@8u�2��/�j�c�p���V>�J���pd7NVc@��uΨ���i��?P8&Q���Tfd	p���E]Ц�%|(��?��'��_�D9BJ|�5��Y� ������H�'0�;��f�x�.#� �*%���I@Ҋ�ˬ4R���McIPJة18Ezj�7#FuZN�A~c3���b�yYN�3o[���	d�)N�@�Y͓�Z�O�sc�@��'+]B��>�`�WY�C&|�*ٓ\;�����`��Rk�t]���U�.
;�k�:��o�_�D�Ó?T~�V�o\�TD	�V�Bu�J؀JU��imt�mE� i�q����w�[y�H�-
K}f�LY��}�e+���B��Tf��g%���Ms�2#洩���������%Z�'6-�O���p���xy�RL��z�Ԧ��K�Vbbv��R@�J)g�1)&�$��]_m�4*�0j�vRk}���SȞ"v�D����w/�<a1��a������kt�t�<�{��e������h�+��I��!F�0xw�~�qX	ą2���?�OeH�U�a�q7����TvU�,d2���F|��i��m�`W�SمS= �z�81���"R�)�} ��ZS]��I���1M�������@!֨��4rN_�bV��,�c�t?%]@���Q<�����.��bh��/�\����(��F�Uc2����ʹ��[V]efk7�[p�՜8�k�����Y
��C/8*;�b�o� :涁��hY�� w3��d�:E0��I�N ��@]x���)���%%TY��L�lI�/+��&I����=������Y�,t�LH�����Q��K/@�QaF��Pf���6��m�x���O8��P��Ԗ�H�&���� v�<��mB)�45D���̫Z���Ӿ�Մ8�`ͨtMu�)9���Xd�(t-u�u�$�W�����q�"*�YC"e?�=p
W���v�p���g�R�\3]8J�#�K��5��dx���T��3*MdAGU%��R�Ǫa�g/쐋�~���%��F���U�(8�%�W	o@�_�k<���l`T`n��Y��xax������p��$sx)��#&�4*��x��7��ĕ0����b�F!R�?�H�ZO�c��CeqlE��Xqx��R�����ѣJ���%&'��ֆ���-�w��q��c�gTM�û�ݸ!Mؖ�� �Y���)&E��<^��ʳa��d�(kN�����O� �X6��ᕫn���՜~j���;���"�� �ox�E�\�2 ������@��-+̻�MU�c���+8H+�=��k��u�����BN�h�xI�Ǜ��y���|x��6E|��7+�
��w�|�5j��A���h���@��´�D S��n\�������^�'��x�!,�b:ٲE��{�'v;Ғ�՚�@
%�؝qr@�/Y?�� ��(���u$n`� p�,q�d���4�.���cbQ�F|�������+{����/��@U������|��L,��ʮD���b��iL����{����l�*m`_�l��o*�B�/�����~�7*�̪����=���X�ZX�z���� �@�	��������@�B�*Z�� �Ǧ����b�{<�)���W�jS���x�k�.kO��z�D��Rvm�|�6��Ν�J9��5��5�������z|��R��qbi{L��bğ�����c�XCR��o#���3��=�Ƭƻ���*�NJU�ʻ����EK����P���Z�?�of$qByw��Q���A`lE�����A,?UZ��#kN\VEm̡0��*��벁���h��	 Θͳ�*�ʔ���uU�M�u�@1�H�3��J��Q،��9�]s�bN)⅃8w�����w�u�Q+��鍙�x����l�їb-<E�X�)O�7V#�G+l`��yȍ6��/�QgE��u��r/��J?(F�ԡ漻���������e�W��l��`g ���U���װ߇m�N�81`�K�H�˜LJ)�9߬~��X���*-���o�b�8���B����b��C:k@	�ǘEIP����Y5 �3��j����R�Hii}rr�N�Vw��V�[��f�G���M���2g���?��    0�z؆JL`��8��۫����Q،r��<>�����@O�u���kUS����(7�.=���}5�nWQO8ÿՁ|�h�>��������`��x�������o�ѫ����=1�M��	���/U'�}��z;�~��x ^�W�����D�p���m����g@85S8�hN�Te����~#��Ռ�l4����1��,���V�#@�j�ZH� d"�"�A���д:[i ,|�t>0D����i��J#������j�P��<���L�^�Tl���D���>��!
z/�j�O�8��x�Q���'��7$�`��o�R�;�=��0Q���P���Ӆ�S�GJ�?�\�qbjW�+`��5���y0ՁUtg�2�l	�Z��İ��CM݀��ǺN7fDpR��:ȁN�{�muU>��䦒��V�)[��K}�n�?)�_R}��X������z�a�'!��(q�t�T���i�/��z�w����K[F.�����h4��Ŗ-��Y��V����n|m�$oC=�f�M�E[�Ĝ_�pTy�_*ad
��Jm|�mᔞ�Bm�f�M���핣���j��S�n�̅����f�M�cd�Tc�@2{4+ʜ>�f@q0�̇`a�ł�/��q>�Dǵ�I�T��t�#?�bb�D[@�� yC����O�-��)�QlM�	� ��W4�v(zp3kJ��|�3Z��x�2'�GM$/�)��l�Tj�^��g{!_o�^�FRԞ���V3���uE�@�Qba����D]D��?e���o�&��q>���jgk[3��C�w�ڦۨ:��|�U��՜ߜfe&U��W3s�6�Jb�m�z�2xD̆�ЩME�ll\P��l�ZjUQ����#���ˀ������Q���#b���I�R@�]����!6����`M2�@��\u����ok�!@>���x��3
�,���}ڞ������+�4�DJ�!D`�ҦM�W��7r"4c�Z&"��ސ|���A}�C{@:~���cO��|0����һ�H1�	4��.^c>��=i�;���m���O�`H{v$�����s�X���8*��<�A��V���\��&�%�!�&��T6Rbz�,t��fi	����D��5�LlΧ�[�����	}<&��ǾXO���O c��Xq<�fC�*.P����6�U��R<N���V{ _�O��4�Y*��z���^,JR�G�,l?�X���[.H�cͮB/,�C=����n��%�B)�<�d�W�7���L@��e�"bB˝=U4�K�;������P�!�b�{^s��|�ɒ��gJl�es�!�XBS�Q�mb���&^��F�f! /D6�&^�̉�z��N"l��w�R3�v��'x3��v�CO[6��=V�LX�0�B-�6m�^�O ��\%��K������Lp�Pş}�|?+x���,��q�R������A���jٺ5G_@+pv��{_�I��g���v����-�wdj�΃���7.P怔x娓Ұ�	����;f�9��"��ƍ��R6;bMi�ٛ�mmz��ӈ���¦UK�3s��C��{���Pr��t�6��F��Y���3j�hk�O�h�ܾ�L��X�?��-V�oBժ�
�eirUX]<�'6�k�^��x��iU�?BƞZ��e�w@��ǹa\�|���]����J6��� �f���>��(e�4����]��<�ʐz�M����O��zv���^�6��?��?I�k�9ط���A&����yfHWH��d�.�N���_z��ЃNEu�<�2�(6�ҝ�hxvRB|' �P5A/�i~��J������kO$�3��ؖ��k]�Ϸ#I&�C��k���[�F=���_'4�����TB�}����칭um(&�F$�X��ט�H���4"w_�KM�d�A>ȹ�|��q�!K�hѧ�b�'0&�Y!��,+��	���RJ����z�5���ʲN|fY����-����\ �B��g�F�C�L�^�	y�hB�X}U�9��^�9�����H<1p#r�!�`�zs�J����s�_�F�x�Ӏ�W(�L����B`Rk{� ��儾�!���"�Ѐ��	X�"�U���l�=^v`^k��U܍Eۧ.�g�	@�=2WG@��D��Mm�=��0v��\P�������u9��(}��9+�{kLw�,�ȝ΍�_;ט�<��{������El�Fu��ymq�����8��㦧B)e^��L��D�x��g�,�J%d�y͂��q�S1P׫�{���y����H��_�u{�e�`"5x!�Y>˧�^Ɍ)��r
���Ȼm$o��=�D/���N�<"�I�������{dN�	M7�.�)�
5X�y���V@�W�y���V� �$�T\b�w7�t.�8$�c��	.�B�A��՗݆���9�x���/��]0�H�hV�a �9�sоV�_u��2�B�J�x�83r���>U8WmCJ�2��*$ҟعS6����c.���L7Rq6����`
E1�(kHwf��h�5򯣮1��ȴ�کi�ba5��]������/VnӅ��;`�L����V�����f�^\!89?
^�6��,"��?��Y���0�6����%�"g�����?''��*�8;�{dvٔ�X�HҼ�)�N�0=� �����*�N�0����_hU1n�|���V*.��]Z�k���Iݔ;���$g�%pr���L��ڋa����s��t�364�uݘ�Aь,�����??3g�x�/�K }�����M�׃�	��u�/R�KA�A�}��K�=���S�gH\ �GCГ�lq�o�Sr��#_�s/N3u�A#�St�2�H��$}�c�!��_d�BZ���5F��t#Y�O����s!_,f���V�8��!N�	-�

��0C1�1_,gau/�N5��S�~ѹYPIS.��V�v��� M`*Z!dG0CI���@��J]j��kR������˧�Y"qP��P�6�W��_�͉`�M!N���֫��)t���bl��2����Hj[�тL5wJWr �B>Z�)��GY2�i!-h�WR&�2���B�0�$��y%��T��mA���u�bU��#�|�k��N��Ff�t�0��|�S�yE�LI)7�c#-_���Wda!l-!�5��|Z��Ո<�f�&���N ;��v�|aBD��Fq@��v�|aBY���HC�y���"Ҩ�!���4�.��E,�H�عZt�ԙ�"�T�����	9��W$�����]u�aܯHV$��"�eؘ���l�C|�rp�x��	v(�_h�á%�C%��;(k�Qց��J9��9�O{R.ŀ/̏�%E�o��b��SyuE�l|&�6PjEC�����є+iGYn����
3#58d���!��B�y�y�)�����ɰZ_*Ww��_���8�@�(sA��:Ex��W�rD���Q�5���eA�~�)��#޺��6�Hj��O�|����
3��3�H������"�v�F"���&�����EJ>��w<�Y$+�bK��}�Viv�l���[�[�,�M8T���Xᘍ.��z@&�:�c���0	���VCf�<3�%�ĤK�/��A`kۣ�@>٭!��Og��19����_��,�`c���O�(�bE� 1��
'EȧM�=A��tP�ĐO�Tk�H�L�1���/�ӂԊ�>���tʬ��k�<5#0	wR5��W(C�TG��Z�Pl!�E &|��I��0�T����C����g*�SE#>��d�p�C���������m���j�@�7[^i~�� �j0���c��I��TW�"�O+�4g���֣^�T��LK��#ifb�9|u���x/9l�/R�	!��c��|�k�8�\#Cp2|E���bZ��_��i)UrH׍d��\,�w����r��,�k�E�JV8<����RF�+Z����ʫ��9F=�M�yJ��%��K��wl�֩�o'�6^N��꬈y��@�    *Q�^FL���;��R�sv�)�iO��ہ!U��A� �ҷC��oNn������n���#��f�� =p�'���U�ٍ�N>��.Z�:���j�����\P������{�xt�����U�-e>�C���ǽˠ�,�f\�೮9t߈Tl������uŰ�f\������d��iǌ�|�v#�h���Lv�h=���q}����NS��5��(qW֒dFO�&��Z��)\4IMtJڅ��	3�_"s!�5Ӛ$�����%W"N�n&�WK>e�����!�m��,�;`J쇢���!�T"'%'8$�f�:+Ł�b���/�X�^go����	�k�)堞q2`=�|�x!���v|�=��:�H5\4�r��G'��5d��X�\�A��Z��]H�<&o48�uu&�z]H��j`��z���^t��ؠ/E�|�,�o�"�6�?U��bU���k�\lR�I[C��VF��ea֙|�v!+UdbEZ�"1JN��B�E���d,d�k=�6.%�(�u�f8*�ұ�cǪd8�Ud�<�v#��'Ḟ�OJk{"��~p
&Z|YA��_�8�zm�פ��!�����9�RSO:!F���*K�- L2*#��SV=Y^��}(%ӕ�=~fUO����ΤJ�=F/+� ��^�5����]/H|fH�5Z4��O�F��P������Ǽ��tu�G�n���e�jȪ���w*�j*�QY���"�$<X�Ke+g{AV�p���:U�@"��=��Nn1y�m�K(�/	H*�۞zn�|E�˽�qͮ�Y�K���m$�K[U_@�^ {�iJɣ�7T��1�+���f@����@[	��4�A]��P>�Vcf�Ѭt,yl�F&k|���Y_ѼS����v��"�s�$N�OѼ�����7t��'�5�C�����b�wP�Jk*zQP�-��L$�#d�x�YY�w�j�h��2�z���1�^�o�V�V#�����(��G2H�u���z�TUG}��y ^x��J�RrTEd٩a�JAۥ�@7{\�FN���\����ԑ���*���34�e����(V)w�uM�{dm�Ǟ������������A�#��~�8W��o8t�S�&�~ƣ�ږ<U]�wO�f��@{�/e�l3�z���,���%�"jv=�ܠ]U���'�a���_"�>繤�Wl���k
�;�g�~L���j �:�Ǔo����}rz�%��U�Bo�=�ףY���(�Y�2�Z���_�*��Yx�*��>�͐^Fg\V�~��F���O(�)�,������ŲF둁�/��uA_,�]F�rhi�ź�r��!� �>�rAU}��Է�}a�0'�D�Q�P����
�/Tb&8Ǒ(Һ::�ʰ.�4n�Ԅm�G�o��X�l�֨i���S����mxq����ʥC0h��%]$C>����R�J[�˖<"{#3�мu�f�Ⱦ )%Ʒ�]���ZĞVAjIT�8���}�z@jL}\Tbb��>َ"9&�>��I�������&I��'{�z)�!��V8$�=x��Ꝍ�~k�k�'��}u��U��[�t�WF��w���6�Z�Y�h���gwxH��y_�ʈ7��j4䴥��ii�tX��LQ��'լ�bi���j�Y.�L���<�uc�B}FZ󐠓��x%�۴8qm��=�vc;+�h�&��Q{��ٞH2�̭�XwH�%��>mXk�U/�O}mQ�J~�Vo��ݢ>�Ė��o�����$&����r펹��!����nlSWDOUGN^��c�7��/�ٵ8�'�̼��EA�SQ�T��h������,��1�h�zx%	!1*}�Go�j�ʔh��x�zu����M���ui¾�&���Oi�ب&
�}�xA�ʨ'o�)RM}�5�Ѐ�����KP4�e���k�GC����'�f��c�=�֡akY+�hOq�>Ƨ�����3���A���җ�b�#=b�
�NQ-�#r'��)�P���K>��3�������Cd N �K [0�p4�!�o�i��v�F����S��*g�'Ӏ	���,W�q?����x�G �[�f�|n��9�4��`y�����í�/޾�RK�����u
X�����d8�~)���+?�h61�L�B�/'Lj���P�W_ЩZ�?r�tf���
-�浹��6�޾0X�AO�1`�蛾�Ŧ����ר��<�#=nP���ɕ,���ȏ��^DIU�N_^�7h�RQ*<��Ò_Ϗ<7�zkI�P��'79O�<7��4ue ]D�#���/��m��bF�[�_�VJ;T���������P��k�[�#�e�6)۠ي$�#���ע����:r�4��HR�N8�4l]?�q��]>�đF��nj6>r��V��e B����v��H6*����-ќ�e'�2T�>Op��
{�-^E��R�!!�~���+^Q���{���Ii�y}y�*	�P� �ƥ�N�gg�V�z�����g�����s��8˂>�;AkT�u��+�@�0'����M���)#z��Hˉ�8U�T�Q"��>
5�%���}�G	ի]��$��ջ���0D��\�23IN�Г�xD�}Y��Z��-�v��~ ��F�Tu�u�U��]Lf��r��#���:�5�������#�Jl�cc�ShĚ�Dy$W�Z������#�j�R\�4k��*.�0�WY|B��5�j��^��1��,��z�1�ԨF��ՠ�+mJ�2�USZ���-��#�叫��x���Ĕb�Gu)��M�Ky�͚�+yү��x�t��tJ�Ba!I�d����iU�}j�,qm�0�;lF`� �j4V�긘ĺ�!*�w8�6%�ⱺI��:t�!fI]б����@3%mp:s�KN�+d!�D�V{eƉ�`Ť�3��n2�aA��^�$�)|J�`��n4)���-4��D���e��դZlr�j>�s���l�@�yrХ٨�.hgO��l�;�0c�������ۨ�.(uM�=D��ب_@'�m�OCc�ʔ���'�����}��>�x5Ze���>�a��"�GCo� ��]���sA}c2��΂|�p9��uM�[d5�5r��rń���Ao��g�	/5���'4�r�)'����G�l���Y�I9�J��Q��b���!ӂW�i�(�=��~o[��=��p�ʬ!h�V���Zձ�P��bS��c�7V/�S�yjXf�$<��e/1��F��_.����I��Ÿ:���A�Т��¾n�����N�S{�H��C�˃{$tҍ^Yb�|+�PV(
�.�Bv�2�<�Ԫ���xC5K3kб�w�Z�A�/4�Қ��I3i楏WwU����U�/3l��Бgt-�m���7������c&.�@�n�9öT�s�3���P_����Һ�D�)i������kh��@ݔ3�A�-Gv���(|��� �T#�-EvE�b��Zcf��"�Pʥ��x��p�H�	z�����kt�T� �k��Y��pM�A�-��6<�{�_u��;�v�fсitň$�H:}�͵h����Q����^����s��]?w$m�[&�T�'���9�d�`[�3*�!I_B�Jm8"S�[
�
��|)������έ]���?X@`������"��}(+���J�4비�Z(��)�z[Jz��*ed��k��`dk5�j�R$QU�����g�Yn�ߠb�۲�+R*YstVptL��k�Yը���Pzpu]�0�լ��a�_8M�d놦��V��,��_`%�wH���\�Q�Ju��R� �c�p�k*����Q��w�^t�A��ķ��*���{4�Qn�m�Pj:��!��-�|A֠�r���lO��[^�
M:"��r�R^D�x�+oh�iU>T6��T)>�[Z����%Li$!�z��^�U5���~�1!��l5�^�K�d���C#�;d���!�!}s��&f+��"�����ޝ��BI�-�kؾ�1J4�B1|)��|��/���ٝd�[���E-Q���5dV�    a
 =+����-2j�Y��G7���)N��4R���R����2Va�>5H��l6M�8���l���K8����	uVgC��k���d����ꙃ���n-a���떦�@��Ik+�u��o{�.ФJ�:Y�{H�D��-�y�R�:����R]Pwi��)|K���R<��|_�q�6��89�F-�5˽��b�J2��4O��z[�z��!C햒.1�u��SJ���I9,�u���[E��%�Xo�+��Ax����9�7Tw��<Mb�-�۬�o�l��h���-�z����E�n5��[��
���tSD��[��o,w]	��^�ў�J�yZ�~񊈽�`#�XaF��\�GsJK�A��i���ќ�R,!j�W�|��L��*fL]ɤU�Xo)�+TJr�+<(�u�}˙^����{{��J�����������G'֢/�-��7���<�i�U��2�hT�)�ZW8A�������B��`.�tY�-�y���H��M�����-�y�J��gk�I���������^�����^�[��
�*��V�{Yo��+T��/p�n--��zK|^��n���� ]�tK|��� Gj,p���A_X��4:�3J�]�z[�wEv�d�
�׻���m�"�iQEUi������Ԋ�Yj���ι[��o$�t���ZX_��Xڥ��+$����}aJ�|��R�P#�!_XRQ%#_>ґޖ%�*E\��,�ӧ�c�V+�EVƇ[1���6�Kb	8��f��eJ�Q��l~�$_���-U����sY�W�W�@k�o-�����:�ހ4}��W�}�����މ���P�7pm=JڰYl�j�;�@*�(���}�4[�N�8鍕���Kw�Z=�P=Jz#�%�gIԟ����Qx��U6��u��g�}����� �^��*��ho�R�9����#��q�f=�KuG�w}HF�摦�R0ޫ�j�n������PgU{vU|�۾}��&�a�����_��4x�8`´(*}jXyNh�ź}�5E6�prI�Z�NѠuA�={B� +TR�`�A�=[��Fe��G_P˖�ǒ�<�S%�w�c\O(i9J�&%�v�5�p�P��R�f����O��9��q]�)\Ch�_<�9y��	�z�W�(�=1�cMh��OH"bf^Pǚ�F�R�`њ��,��	-����}Ӵ�������֢+��C��G�:�dH���@�'�8Q�#!�*�2�'�tl9ňsY�m��A��2O��WW��5yĜA���ЉzВ�=_�|j�=���%"
���Ov聩�^���Cr"Z���IA��
K����yG=����cخ��䜲�Ř����	�)[��</�	��'{�`�hj�|c#�:���t��B�p-������/Ф)�4ӨsA]��Pz'v�`��U��<>pC�͋ްy	|Ե�-<���Cը��xw:��Ǻ�xABi{���tB٢0���*kr�ͣ!O�]�ΞG��D{6�y4䆊s*c����Z��=����9Ru+���>o�^bYN�+��>�qb�q�S�S��'�����ʄ������h̍U)�f!-���6�{,�_�Q_d��h�zHBX��j4S�W��h�S5������Mb���`��b4芫�G�n��H��BN�Qy$�ڻ1���A&w�ǂ^��
S�H�<�y�Fv�Z((tH��W���0Ǣ�3��iR�4)��XU��0��5�tS��/L���;������k�h�U7a�~>g
' ��v[�y�"{�.Nw�' ���h���(�ּ��j19�c���G7��c$7V���e�|P(�k_�O-�_g��"��b}��6��κ�m�(��5���գ�Z6�3Dh���6%��h=xb�M��iޢX�L�8��!ce��RV�Or �d�j5�J�݇tU4��Ꚓ45�*�\t'�<�k#'�b�C��	�QTh�<�������5Ͱ9�K�-l0¾�$Q)�BέyL�	e[_���j�|^����6 ��ڨ/�Ƥd�iA�,��ŷ�����ۨ+e��6h95�;;��⾥$�<V&��7r� ����CJ�E����dɔ+�d��I��t%j�#V�ra�+f^;*<^ls����Fh�o���A�=�����Ć�41�bb�=fec5O��	װ�/�Th샥&sa����U���j�����B���h��!)�l݆M�-.�:��r�TG�y�&�hV��Ey�毰ҥ�<
���@�!}�:*�^;�ofI�]šJ�j�І}N&�F�2��Qa]�(B��/$Y�� �ߋ	t��X�$ޫZO�p��g{c3!����/�S���Ә�(��T3�����5�ca=��>edd���S��tD��ivQٽ���%��RT�5]��E�v�RkC�uY;v~-���X���Q�n[��bo�G�Т:s$Yv�u��ee0�x׷�����l�:���(����ȩ{<�F{��Uk��9�6Ԟ|��YZg�G#mhUWb�Q���H(��C�#O<ᚨ�qA'��ς���;|�I�QUUjV7
E9��t���Ф������k�x4҆r`lM����R�X���p��"���b��x���D)8�i4]�8��^|"A�?,�W�IV��\�R~���#���v+w�T�ȡ��^��h��q*EMM�-��HC-kT�O���I���2�u�����A�	6h�|C¸��eK�P��kkS(����i��`P�ʒ~���z	�v�&0�t/Y<�y�O��KK��E�}ш۲(�����{���صw�H�j��,/�yS�XP���$3k�SoQ�:���'�rNEjN�Y1��H����ݚ�b|��iR����z�|�D*+u�aA%wŵ�o�Ȋ*�����%��E���m�-qB�����3)��5���H�jL��
���Q0��T��s�RX�z%V�&fV��>}�:�<*dC��m�^�se�v�	�P>_�W��@�M�G�T�I����\��lɫ��@U�Ӥ�bH��uy��A���tBY�>}*���1l��֠2���'�qu��zή��P�a��e�<)�=8$�bX���TQ�¾��\�r�Z�i�������X#dBN?X��H���t�P8��Nq}rZ��G>[)��R�e�ϋ=�ڋ��֤C
-�}5O�x�8��iS^�s��5*,���t:���ʫ�U*�{H�E��+��ӏgU[!zqY����/Oh���@�ͻ��*��W�w��M��t����{5i�ys�ج�)��veU2w�I�@��:���%��=:pCP���f�0t��9����۲���J�64�0GS�u�y%i���&>�@cZBݫH�Piu�EMP�e
꺘���)PA�D�VA]ON��M���;��'A�q�����J�g[����>7TU�?vU2w��xC�"��OY������j���"��
w��7��R�S�r���t���TT��B�G���G[�H-%[�CH+>ɻ�Ɋ�f֪�wÆG�n���j�+���8�*A�����	�Q���[S�J����1*�&h١�Ѵ'�f�!��BF�����Xv}�����ha+�w�ld�7�+9�Җ�����o�Kl�T^6�l�5�)���I��h�n}���/�>S�uFY9<���R�=�f��A)��cy7VDU,�"EI���֫��`�[FU,ޫa���/��+M��^��P��;%����)N^8	@�Sǐ7�ڣ\S���[6�OhULB�^4,��%����Z!g�T��`�� C�q�bg�P�<�|Ϛzu�~�FNP�Am���b�U1'�ZT��������>���-��6����ְ����jZ�e��Jbx��F{�I��*/6�Ro��]bY�w�@����/T$��
U�j�Gc<��R������j�X�+jd������a�r��*R��ax l���Jy�Jf��/�^�U��^�3�-����6����S�x�]Z������l|V�J��K$S��l�g�we�D3K��utmJȰH	���W6�����B�O��슰�#+6VNy]�S>�X�ͼ@�� \  ��	M+B��Y.X�#�Z�ETDAD{�,'��/{���k�dc����OM�:��w山����h�f,�K�/Xdjc=�@�ڲ�7l�T��%pFՖ���+=�8�0haO�~�T���n+�I��ڝ��'f��9���Ʊ�y@�K����5��aKY�Ά�5���'/d�&������6�?�=�T2Ѡ�E,�^�/!�F�B&6�{(�-�uX�K~$z�a�7�� �Ѩ,�c��A�	W��V����������V�h�:ol G,c���{�ꅽ�\�>LF�dJz��*��`L����(�Dw�W�+���Z=T���)o���bF�ʆ;�R�O�nL�����ٝ����myb�����e~Zk1h���mx7	��V��P��ji,�c}U����O)�Ϫ��[�����z|�fx	�ﺥ���ARM9�^_�ûp�"��Nޘ�&�s�G^OM��a�����~����[ָ�q�76�y�$o���]}n;�u��/lIC�'�s��X��M�8�u��/l��تy���☕-��ӻ:�;�}lQ�z�Q�W�z�&���h8$c?��7�1�]f5�M4H)�s9`����n���,�}��}O�c<�Y��̙��F�&�Q8T%P�}4y���j�L���6T����Cб���^��|ZHki�:�|�f��:� �cP�/�>=��;��p�y��P��E4��e򪟪1B�c��]���|���J�;�r8�Q&}tՌS4�eS�K�Ohʺ��SO0Q4&����JO,.�>tu�j���)��+Z������D��u�[�·�lX��$��h^P{4Rqu${L��.�柡E/	�:���9����<܉      �   9  x�mW;r�6����ȡ������?�pWd�*��G�}/��J�\�D� >������׹Q����ݛ�+e��I/ּ�KT�I�����]�5�,�K��C��=�NjE?~����v7L·�R�-�n9��|���٭�'*-i��p�P�Rpc|jo�j����F���f}�ΑR��J��fV��x�h^��7�ss���lQQ�}o��,���
�7��w��G��f-b�0��vsL��,�����&����ڔ&��?K���u"�*i���R���͟z�ֳyJڻ���c��K�Mߍ�t40����+v��>/f	�������p��b�����[�êl��5�IV�`lG��k��4x=����+���jIw�%Μ�����F�u���9�����g�@�eWr�����;�[n��b��/�"�&uJv6R���튇9��ގm�]��ّ&���CsJ
�ޟ=��2u��Y���N.�BZ�pt�j��C��(G��%�G�U.�
�F�
�W�;�fx�?�7=�.��~���N>�%�'�f��s� ��͠� EzGe���>�7ږl�uh+2�?f���m?�@Ʌ��6o�����1��^B*S�`��۰����v�����պXDZ��Ji3���O�IY��vQ��L�f�M�c�U��b&﨨�WE.���T���{��=-.uZ$UI#� ���ș�2��d�4���1C�ޑ�
mh|��f��݆kכ}�dQ&p��S�g�FU��'�n�SV-���`�[a��:k�6<]!���N ����2p��T�N�����~n$8�[����,T)�(<�3,��E㨖&��ހ-L0�aɓ���2it��tǋV@8vC�Zy� �J�z��#�@�:`��PRwz7ኒ"�b9�;'�۠������*9��]��l+q���1pD�e��Q�ovD�P�Ĳ�Y�R��L��8x�&�W�m�ڌ�Ovct����2#2Y.fww *h��w�&����NH�n�@ʮ�������eA����(�k�^xU�5����m��(1G��ZI$l2h!�[A/�;�طw�,v}���r���|������Oa>P�Ĉya������)�/��K#��4�/�b{���4�:��)��eA6l���� ����o�@J��?$X:�P�+DН��?��9�'k3���{�~Ea��L~���CE��3�̛�DK�ځ���
3+���,!:�u��LU��v�����9�w �@!gן3�)���?�*�Y� %����,Ji&�	6�4�תdUzi��\���g�U ULVn@c��l�)�ML�)�Ә���ܾ�[
r*z*�+���8��L�#���N�d��s��^{oFw � :f{x��'�[n7y��Mw�{7�F�I���O���Gq{�6n^�1�u�C�F�2T2�0<-�1��*�3��d��wJ�s�r�m�Ef1,�ZZ��e2D_�Yg�[��!���S;�>A�P�x��+�C�M�z�7����Ӧ�t0�z�a��qE� ����5�*h=�ח�a#p_7�֏O5�^�;HU�V��q$lT��Sh�9E���A`bC����Q�'�</��R��|z�ܲsg�[��}�׃!��@fC���3���i��j��i������C �D���h�<�>���������`Q�Ԍ�5�������	�f�>�J�.�&3��e&���$�J!'�0���Ɓ����T+�HR���}g'n�oG��/�fL@�)� d��xS�?MB��Y���I��P���      �   �  x���ێ�0���Sp�-�g��U�+D�@�m��P��%��U���J����{f����s��M�,�ڐf=��]�t�zj��[V��O'g�s21+L�izܜ�(��<����&�|��e�
�>�A]�V0�%�(P��mY�Y�邶\XT��R_K��2��Q#c�Ċ��eH�(Ɔ�n!�7��Qvm��1R|0��L����QT��/紨�E�-�ۜ�ʨ���l�*_EL��W@�Z��BJ�`3�9]��C^,W�e�9�������G��K��s�M9>����o�������Dm�E�7i�_9��[��(L E��`i+b�*�A���1�@�k���� )��?'%W�$���b{�	!J#�'����t~o*��     