.class public final Lksa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lksa;


# instance fields
.field public final a:Lvra;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lksa;

    invoke-direct {v0}, Lksa;-><init>()V

    sput-object v0, Lksa;->c:Lksa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lksa;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lvra;

    invoke-direct {v0}, Lvra;-><init>()V

    iput-object v0, p0, Lksa;->a:Lvra;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lnsa;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lksa;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3a

    sget-object v3, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    const-class v3, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lfqa;->a:I

    :cond_0
    iget-object v0, v0, Lksa;->a:Lvra;

    iget-object v0, v0, Lvra;->a:Lura;

    invoke-virtual {v0, v1}, Lura;->b(Ljava/lang/Class;)Lzra;

    move-result-object v0

    invoke-interface {v0}, Lzra;->zza()Z

    move-result v3

    if-nez v3, :cond_38

    sget v3, Lfqa;->a:I

    sget v3, Lisa;->a:I

    sget v3, Lsra;->a:I

    sget-object v13, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v0}, Lzra;->zzc()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    sget-object v3, Lfra;->a:Lcom/google/android/gms/internal/measurement/b;

    move-object v14, v3

    goto :goto_0

    :cond_1
    move-object v14, v4

    :goto_0
    sget v3, Lyra;->a:I

    sget-object v3, Lcom/google/android/gms/internal/measurement/d;->m:[I

    instance-of v3, v0, Lmsa;

    if-eqz v3, :cond_37

    check-cast v0, Lmsa;

    iget-object v3, v0, Lmsa;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xd800

    if-lt v7, v8, :cond_2

    move v7, v5

    :goto_1
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_3

    move v7, v9

    goto :goto_1

    :cond_2
    move v9, v5

    :cond_3
    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_5

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_2
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v11

    or-int/2addr v9, v7

    add-int/lit8 v11, v11, 0xd

    move v7, v12

    goto :goto_2

    :cond_4
    shl-int/2addr v7, v11

    or-int/2addr v9, v7

    move v7, v12

    :cond_5
    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/measurement/d;->m:[I

    move v5, v6

    move v11, v5

    move v12, v11

    move v15, v12

    move/from16 v19, v15

    move-object v10, v9

    move/from16 v9, v19

    goto/16 :goto_d

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v7, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v11

    or-int/2addr v7, v9

    move v9, v12

    :cond_8
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_4
    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_9

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v15

    goto :goto_4

    :cond_9
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v15

    :cond_a
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v15, 0xd

    :goto_5
    add-int/lit8 v16, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v8, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v15

    or-int/2addr v11, v12

    add-int/lit8 v15, v15, 0xd

    move/from16 v12, v16

    goto :goto_5

    :cond_b
    shl-int/2addr v12, v15

    or-int/2addr v11, v12

    move/from16 v12, v16

    :cond_c
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v8, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_6
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v8, :cond_d

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v12, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_6

    :cond_d
    shl-int v15, v15, v16

    or-int/2addr v12, v15

    move/from16 v15, v17

    :cond_e
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v8, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_7
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_f

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v15, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_7

    :cond_f
    shl-int v6, v6, v16

    or-int/2addr v15, v6

    move/from16 v6, v17

    goto :goto_8

    :cond_10
    move/from16 v6, v16

    :goto_8
    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_12

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v10, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v18, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_11

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v16

    or-int/2addr v6, v10

    add-int/lit8 v16, v16, 0xd

    move/from16 v10, v18

    goto :goto_9

    :cond_11
    shl-int v10, v10, v16

    or-int/2addr v6, v10

    move/from16 v10, v18

    goto :goto_a

    :cond_12
    move/from16 v10, v16

    :goto_a
    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_13

    :goto_b
    move/from16 v10, v16

    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_13

    goto :goto_b

    :cond_13
    move/from16 v10, v16

    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_15

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v5, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v19, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_14

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v16

    or-int/2addr v10, v5

    add-int/lit8 v16, v16, 0xd

    move/from16 v5, v19

    goto :goto_c

    :cond_14
    shl-int v5, v5, v16

    or-int/2addr v10, v5

    move/from16 v16, v19

    :cond_15
    add-int v5, v10, v6

    add-int/2addr v5, v7

    add-int v19, v7, v7

    add-int v19, v19, v9

    new-array v9, v5, [I

    move v5, v10

    move-object v10, v9

    move v9, v11

    move v11, v5

    move v5, v7

    move/from16 v7, v16

    :goto_d
    sget-object v8, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    move/from16 v20, v5

    iget-object v5, v0, Lmsa;->c:[Ljava/lang/Object;

    move-object/from16 v21, v5

    iget-object v5, v0, Lmsa;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    add-int/2addr v6, v11

    move/from16 v22, v6

    add-int v6, v15, v15

    move/from16 v23, v7

    const/4 v7, 0x3

    mul-int/2addr v15, v7

    new-array v15, v15, [I

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v25, v6

    move/from16 v27, v11

    move/from16 v26, v22

    move/from16 v7, v23

    const/4 v6, 0x0

    const/16 v23, 0x0

    :goto_e
    if-ge v7, v4, :cond_36

    add-int/lit8 v28, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v29, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v28

    const/16 v28, 0xd

    :goto_f
    add-int/lit8 v30, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v31, v7

    const v7, 0xd800

    if-lt v4, v7, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v28

    or-int v7, v31, v4

    add-int/lit8 v28, v28, 0xd

    move/from16 v4, v30

    goto :goto_f

    :cond_16
    shl-int v4, v4, v28

    or-int v7, v31, v4

    move/from16 v4, v30

    goto :goto_10

    :cond_17
    move/from16 v4, v28

    :goto_10
    add-int/lit8 v28, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v30, v7

    const v7, 0xd800

    if-lt v4, v7, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v7, v28

    const/16 v28, 0xd

    :goto_11
    add-int/lit8 v31, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v32, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_18

    and-int/lit16 v4, v7, 0x1fff

    shl-int v4, v4, v28

    or-int v4, v32, v4

    add-int/lit8 v28, v28, 0xd

    move/from16 v7, v31

    goto :goto_11

    :cond_18
    shl-int v4, v7, v28

    or-int v4, v32, v4

    move/from16 v7, v31

    goto :goto_12

    :cond_19
    move/from16 v7, v28

    :goto_12
    move/from16 v28, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v23, 0x1

    aput v6, v10, v23

    move/from16 v23, v9

    :cond_1a
    and-int/lit16 v9, v4, 0xff

    move-object/from16 v31, v10

    and-int/lit16 v10, v4, 0x800

    move/from16 v32, v10

    const/16 v10, 0x33

    if-lt v9, v10, :cond_24

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v33, v10

    const v10, 0xd800

    if-lt v7, v10, :cond_1c

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v10, v33

    const/16 v33, 0xd

    :goto_13
    add-int/lit8 v37, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v38, v7

    const v7, 0xd800

    if-lt v10, v7, :cond_1b

    and-int/lit16 v7, v10, 0x1fff

    shl-int v7, v7, v33

    or-int v7, v38, v7

    add-int/lit8 v33, v33, 0xd

    move/from16 v10, v37

    goto :goto_13

    :cond_1b
    shl-int v7, v10, v33

    or-int v7, v38, v7

    move/from16 v10, v37

    goto :goto_14

    :cond_1c
    move/from16 v10, v33

    :goto_14
    move/from16 v33, v7

    add-int/lit8 v7, v9, -0x33

    move/from16 v37, v10

    const/16 v10, 0x9

    if-eq v7, v10, :cond_1d

    const/16 v10, 0x11

    if-ne v7, v10, :cond_1e

    :cond_1d
    const/4 v7, 0x3

    const/4 v10, 0x1

    goto :goto_16

    :cond_1e
    const/16 v10, 0xc

    if-ne v7, v10, :cond_21

    invoke-virtual {v0}, Lmsa;->zzc()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_20

    if-eqz v32, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v10, 0x0

    goto :goto_17

    :cond_20
    :goto_15
    add-int/lit8 v7, v19, 0x1

    move/from16 v18, v7

    const/4 v7, 0x3

    invoke-static {v6, v7, v10}, Lud;->b(III)I

    move-result v24

    aget-object v19, v21, v19

    aput-object v19, v25, v24

    move/from16 v19, v18

    :cond_21
    move/from16 v10, v32

    goto :goto_17

    :goto_16
    add-int/lit8 v34, v19, 0x1

    invoke-static {v6, v7, v10}, Lud;->b(III)I

    move-result v35

    aget-object v7, v21, v19

    aput-object v7, v25, v35

    move/from16 v10, v32

    move/from16 v19, v34

    :goto_17
    add-int v7, v33, v33

    move/from16 v32, v7

    aget-object v7, v21, v32

    move/from16 v33, v10

    instance-of v10, v7, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_22

    check-cast v7, Ljava/lang/reflect/Field;

    :goto_18
    move/from16 v38, v11

    goto :goto_19

    :cond_22
    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/measurement/d;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v21, v32

    add-int/lit8 v10, v26, 0x1

    aput v6, v31, v26

    move/from16 v26, v10

    goto :goto_18

    :goto_19
    invoke-virtual {v8, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    add-int/lit8 v10, v32, 0x1

    aget-object v11, v21, v10

    move/from16 v32, v7

    instance-of v7, v11, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_23

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1a

    :cond_23
    check-cast v11, Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/measurement/d;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v21, v10

    :goto_1a
    invoke-virtual {v8, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    move-object/from16 v35, v3

    move-object v3, v5

    move/from16 v36, v6

    move/from16 v18, v7

    move/from16 v34, v12

    move/from16 v7, v32

    move/from16 v10, v33

    :goto_1b
    const/4 v5, 0x0

    goto/16 :goto_26

    :cond_24
    move/from16 v38, v11

    add-int/lit8 v10, v19, 0x1

    aget-object v11, v21, v19

    check-cast v11, Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/measurement/d;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move/from16 v33, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_25

    const/16 v10, 0x11

    if-ne v9, v10, :cond_26

    :cond_25
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto/16 :goto_20

    :cond_26
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_2e

    const/16 v10, 0x31

    if-ne v9, v10, :cond_27

    add-int/lit8 v19, v19, 0x2

    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto :goto_1f

    :cond_27
    const/16 v10, 0xc

    if-eq v9, v10, :cond_2b

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_2b

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_28

    goto :goto_1d

    :cond_28
    const/16 v10, 0x32

    if-ne v9, v10, :cond_2a

    add-int/lit8 v10, v19, 0x2

    add-int/lit8 v34, v27, 0x1

    aput v6, v31, v27

    div-int/lit8 v27, v6, 0x3

    aget-object v33, v21, v33

    add-int v27, v27, v27

    aput-object v33, v25, v27

    if-eqz v32, :cond_29

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v19, v19, 0x3

    aget-object v10, v21, v10

    aput-object v10, v25, v27

    move/from16 v27, v34

    :goto_1c
    move/from16 v34, v12

    const/4 v12, 0x1

    goto :goto_22

    :cond_29
    move/from16 v19, v10

    move/from16 v27, v34

    const/16 v32, 0x0

    goto :goto_1c

    :cond_2a
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto :goto_21

    :cond_2b
    :goto_1d
    invoke-virtual {v0}, Lmsa;->zzc()I

    move-result v10

    move/from16 v34, v12

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2d

    if-eqz v32, :cond_2c

    goto :goto_1e

    :cond_2c
    move/from16 v19, v33

    const/16 v32, 0x0

    goto :goto_22

    :cond_2d
    :goto_1e
    add-int/lit8 v19, v19, 0x2

    const/4 v10, 0x3

    invoke-static {v6, v10, v12}, Lud;->b(III)I

    move-result v18

    aget-object v24, v21, v33

    aput-object v24, v25, v18

    goto :goto_22

    :cond_2e
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    add-int/lit8 v19, v19, 0x2

    :goto_1f
    invoke-static {v6, v10, v12}, Lud;->b(III)I

    move-result v18

    aget-object v24, v21, v33

    aput-object v24, v25, v18

    goto :goto_22

    :goto_20
    invoke-static {v6, v10, v12}, Lud;->b(III)I

    move-result v18

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v25, v18

    :goto_21
    move/from16 v19, v33

    :goto_22
    invoke-virtual {v8, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    and-int/lit16 v11, v4, 0x1000

    const v18, 0xfffff

    if-eqz v11, :cond_32

    const/16 v11, 0x11

    if-gt v9, v11, :cond_32

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v12, 0xd800

    if-lt v7, v12, :cond_30

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_23
    add-int/lit8 v18, v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_2f

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v16

    or-int/2addr v7, v11

    add-int/lit8 v16, v16, 0xd

    move/from16 v11, v18

    goto :goto_23

    :cond_2f
    shl-int v11, v11, v16

    or-int/2addr v7, v11

    move/from16 v11, v18

    :cond_30
    add-int v16, v20, v20

    div-int/lit8 v18, v7, 0x20

    add-int v18, v18, v16

    aget-object v12, v21, v18

    move-object/from16 v35, v3

    instance-of v3, v12, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_31

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_24
    move-object v3, v5

    move/from16 v36, v6

    goto :goto_25

    :cond_31
    check-cast v12, Ljava/lang/String;

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/measurement/d;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v21, v18

    goto :goto_24

    :goto_25
    invoke-virtual {v8, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    rem-int/lit8 v7, v7, 0x20

    move/from16 v18, v5

    move v5, v7

    move v7, v10

    move/from16 v37, v11

    move/from16 v10, v32

    goto :goto_26

    :cond_32
    move-object/from16 v35, v3

    move-object v3, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move v7, v10

    move/from16 v10, v32

    goto/16 :goto_1b

    :goto_26
    add-int/lit8 v6, v36, 0x1

    aput v30, v15, v36

    add-int/lit8 v11, v36, 0x2

    and-int/lit16 v12, v4, 0x200

    if-eqz v12, :cond_33

    const/high16 v12, 0x20000000

    goto :goto_27

    :cond_33
    const/4 v12, 0x0

    :goto_27
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_34

    const/high16 v4, 0x10000000

    goto :goto_28

    :cond_34
    const/4 v4, 0x0

    :goto_28
    if-eqz v10, :cond_35

    const/high16 v10, -0x80000000

    goto :goto_29

    :cond_35
    const/4 v10, 0x0

    :goto_29
    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v4, v12

    or-int/2addr v4, v10

    or-int/2addr v4, v9

    or-int/2addr v4, v7

    aput v4, v15, v6

    add-int/lit8 v6, v36, 0x3

    shl-int/lit8 v4, v5, 0x14

    or-int v4, v4, v18

    aput v4, v15, v11

    move-object v5, v3

    move/from16 v9, v28

    move/from16 v4, v29

    move-object/from16 v10, v31

    move/from16 v12, v34

    move-object/from16 v3, v35

    move/from16 v7, v37

    move/from16 v11, v38

    goto/16 :goto_e

    :cond_36
    move/from16 v28, v9

    move-object/from16 v31, v10

    move/from16 v38, v11

    move/from16 v34, v12

    new-instance v4, Lcom/google/android/gms/internal/measurement/d;

    iget-object v9, v0, Lmsa;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    move-object v5, v15

    move/from16 v12, v22

    move-object/from16 v6, v25

    move/from16 v7, v28

    move/from16 v8, v34

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/measurement/d;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;[IIILcom/google/android/gms/internal/measurement/g;Lcom/google/android/gms/internal/measurement/b;)V

    goto :goto_2a

    :cond_37
    check-cast v0, Ltsa;

    throw v4

    :cond_38
    sget v3, Lfqa;->a:I

    sget-object v3, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    sget-object v4, Lfra;->a:Lcom/google/android/gms/internal/measurement/b;

    invoke-interface {v0}, Lzra;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/internal/measurement/e;-><init>(Lcom/google/android/gms/internal/measurement/g;Lcom/google/android/gms/internal/measurement/zzafc;)V

    :goto_2a
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnsa;

    if-eqz v0, :cond_39

    return-object v0

    :cond_39
    return-object v4

    :cond_3a
    check-cast v3, Lnsa;

    return-object v3
.end method
