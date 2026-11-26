.class public final Lkpb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkpb;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkpb;

    invoke-direct {v0}, Lkpb;-><init>()V

    sput-object v0, Lkpb;->b:Lkpb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkpb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget p0, Lkjb;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lkqb;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lkpb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3c

    sget-object v2, Lpib;->c:Llib;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    const-class v3, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lydb;->a:I

    :cond_0
    sget v4, Lydb;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3b

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzgp;->i(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Liob;->zzb()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v3}, Liob;->zza()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/play_billing/q;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/play_billing/q;-><init>(Lg;Lcom/google/android/gms/internal/play_billing/zzhr;)V

    goto/16 :goto_2c

    :cond_1
    sget-object v14, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v3}, Liob;->zzc()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    move-object v15, v2

    goto :goto_0

    :cond_2
    move-object v15, v5

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    if-eqz v2, :cond_3a

    instance-of v6, v3, Lgqb;

    if-eqz v6, :cond_39

    check-cast v3, Lgqb;

    iget-object v5, v3, Lgqb;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v10, 0xd800

    if-lt v9, v10, :cond_3

    move v9, v7

    :goto_1
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_4

    move v9, v11

    goto :goto_1

    :cond_3
    move v11, v7

    :cond_4
    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v10, :cond_6

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_2
    add-int/lit8 v16, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_5

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v13

    or-int/2addr v11, v9

    add-int/lit8 v13, v13, 0xd

    move/from16 v9, v16

    goto :goto_2

    :cond_5
    shl-int/2addr v9, v13

    or-int/2addr v11, v9

    move/from16 v9, v16

    :cond_6
    if-nez v11, :cond_7

    sget-object v11, Lcom/google/android/gms/internal/play_billing/p;->j:[I

    move/from16 v18, v4

    move v7, v8

    move v10, v7

    move v12, v10

    move v13, v12

    move/from16 v21, v13

    move/from16 v16, v9

    move/from16 v9, v21

    goto/16 :goto_10

    :cond_7
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v13, 0xd

    :goto_3
    add-int/lit8 v16, v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v10, :cond_8

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v13

    or-int/2addr v9, v11

    add-int/lit8 v13, v13, 0xd

    move/from16 v11, v16

    goto :goto_3

    :cond_8
    shl-int/2addr v11, v13

    or-int/2addr v9, v11

    move/from16 v11, v16

    :cond_9
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v10, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    const/16 v16, 0xd

    :goto_4
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v10, :cond_a

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v16

    or-int/2addr v11, v13

    add-int/lit8 v16, v16, 0xd

    move/from16 v13, v17

    goto :goto_4

    :cond_a
    shl-int v13, v13, v16

    or-int/2addr v11, v13

    move/from16 v13, v17

    :cond_b
    add-int/lit8 v16, v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v10, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v8, v16

    const/16 v16, 0xd

    :goto_5
    add-int/lit8 v17, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_c

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v16

    or-int/2addr v13, v8

    add-int/lit8 v16, v16, 0xd

    move/from16 v8, v17

    goto :goto_5

    :cond_c
    shl-int v8, v8, v16

    or-int/2addr v13, v8

    move/from16 v8, v17

    goto :goto_6

    :cond_d
    move/from16 v8, v16

    :goto_6
    add-int/lit8 v16, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_f

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v12, v16

    const/16 v16, 0xd

    :goto_7
    add-int/lit8 v18, v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v10, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int v12, v12, v16

    or-int/2addr v8, v12

    add-int/lit8 v16, v16, 0xd

    move/from16 v12, v18

    goto :goto_7

    :cond_e
    shl-int v12, v12, v16

    or-int/2addr v8, v12

    move/from16 v12, v18

    goto :goto_8

    :cond_f
    move/from16 v12, v16

    :goto_8
    add-int/lit8 v16, v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v10, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    move/from16 v18, v4

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v19, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_10

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v12, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v19

    goto :goto_9

    :cond_10
    shl-int v4, v4, v16

    or-int/2addr v12, v4

    move/from16 v4, v19

    goto :goto_a

    :cond_11
    move/from16 v18, v4

    move/from16 v4, v16

    :goto_a
    add-int/lit8 v16, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v7, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v20, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_12

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v16

    or-int/2addr v4, v7

    add-int/lit8 v16, v16, 0xd

    move/from16 v7, v20

    goto :goto_b

    :cond_12
    shl-int v7, v7, v16

    or-int/2addr v4, v7

    move/from16 v7, v20

    goto :goto_c

    :cond_13
    move/from16 v7, v16

    :goto_c
    add-int/lit8 v16, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_14

    :goto_d
    move/from16 v7, v16

    add-int/lit8 v16, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v7, v16

    add-int/lit8 v16, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_16

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v10, v16

    const/16 v16, 0xd

    :goto_e
    add-int/lit8 v21, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v22, v4

    const v4, 0xd800

    if-lt v10, v4, :cond_15

    and-int/lit16 v4, v10, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v7, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v10, v21

    move/from16 v4, v22

    goto :goto_e

    :cond_15
    shl-int v4, v10, v16

    or-int/2addr v7, v4

    move/from16 v16, v21

    goto :goto_f

    :cond_16
    move/from16 v22, v4

    :goto_f
    add-int v4, v7, v22

    add-int/2addr v4, v9

    add-int v10, v9, v9

    add-int/2addr v10, v11

    new-array v11, v4, [I

    move/from16 v21, v12

    move v12, v7

    move/from16 v7, v21

    move/from16 v21, v9

    move v9, v8

    move/from16 v8, v21

    move/from16 v21, v22

    :goto_10
    iget-object v4, v3, Lgqb;->c:[Ljava/lang/Object;

    move-object/from16 v22, v4

    iget-object v4, v3, Lgqb;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    add-int v21, v12, v21

    move/from16 v23, v7

    add-int v7, v23, v23

    move/from16 v24, v8

    mul-int/lit8 v8, v23, 0x3

    new-array v8, v8, [I

    new-array v7, v7, [Ljava/lang/Object;

    move/from16 v23, v16

    move-object/from16 v16, v7

    move/from16 v7, v23

    move-object/from16 v25, v8

    move/from16 v27, v12

    move/from16 v26, v21

    const/4 v8, 0x0

    const/16 v23, 0x0

    :goto_11
    if-ge v7, v6, :cond_37

    add-int/lit8 v28, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v29, v6

    const v6, 0xd800

    if-lt v7, v6, :cond_18

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v6, v28

    const/16 v28, 0xd

    :goto_12
    add-int/lit8 v30, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v31, v7

    const v7, 0xd800

    if-lt v6, v7, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v28

    or-int v7, v31, v6

    add-int/lit8 v28, v28, 0xd

    move/from16 v6, v30

    goto :goto_12

    :cond_17
    shl-int v6, v6, v28

    or-int v7, v31, v6

    move/from16 v6, v30

    goto :goto_13

    :cond_18
    move/from16 v6, v28

    :goto_13
    add-int/lit8 v28, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v30, v7

    const v7, 0xd800

    if-lt v6, v7, :cond_1a

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v7, v28

    const/16 v28, 0xd

    :goto_14
    add-int/lit8 v31, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v32, v6

    const v6, 0xd800

    if-lt v7, v6, :cond_19

    and-int/lit16 v6, v7, 0x1fff

    shl-int v6, v6, v28

    or-int v6, v32, v6

    add-int/lit8 v28, v28, 0xd

    move/from16 v7, v31

    goto :goto_14

    :cond_19
    shl-int v6, v7, v28

    or-int v6, v32, v6

    move/from16 v7, v31

    goto :goto_15

    :cond_1a
    move/from16 v7, v28

    :goto_15
    move/from16 v28, v9

    and-int/lit16 v9, v6, 0x400

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v23, 0x1

    aput v8, v11, v23

    move/from16 v23, v9

    :cond_1b
    and-int/lit16 v9, v6, 0xff

    move/from16 v31, v10

    and-int/lit16 v10, v6, 0x800

    move/from16 v32, v10

    const/16 v10, 0x33

    if-lt v9, v10, :cond_25

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v33, v10

    const v10, 0xd800

    if-lt v7, v10, :cond_1d

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v10, v33

    const/16 v33, 0xd

    :goto_16
    add-int/lit8 v37, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v38, v7

    const v7, 0xd800

    if-lt v10, v7, :cond_1c

    and-int/lit16 v7, v10, 0x1fff

    shl-int v7, v7, v33

    or-int v7, v38, v7

    add-int/lit8 v33, v33, 0xd

    move/from16 v10, v37

    goto :goto_16

    :cond_1c
    shl-int v7, v10, v33

    or-int v7, v38, v7

    move/from16 v10, v37

    goto :goto_17

    :cond_1d
    move/from16 v10, v33

    :goto_17
    move/from16 v33, v7

    add-int/lit8 v7, v9, -0x33

    move/from16 v37, v10

    const/16 v10, 0x9

    if-eq v7, v10, :cond_1e

    const/16 v10, 0x11

    if-ne v7, v10, :cond_1f

    :cond_1e
    move/from16 v7, v18

    const/4 v10, 0x1

    goto :goto_19

    :cond_1f
    const/16 v10, 0xc

    if-ne v7, v10, :cond_22

    invoke-virtual {v3}, Lgqb;->zzc()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_21

    if-eqz v32, :cond_20

    goto :goto_18

    :cond_20
    const/4 v10, 0x0

    goto :goto_1a

    :cond_21
    :goto_18
    add-int/lit8 v7, v31, 0x1

    move/from16 v19, v7

    move/from16 v7, v18

    invoke-static {v8, v7, v10}, Lud;->b(III)I

    move-result v18

    aget-object v31, v22, v31

    aput-object v31, v16, v18

    move/from16 v31, v19

    :cond_22
    move/from16 v10, v32

    goto :goto_1a

    :goto_19
    add-int/lit8 v34, v31, 0x1

    invoke-static {v8, v7, v10}, Lud;->b(III)I

    move-result v35

    aget-object v7, v22, v31

    aput-object v7, v16, v35

    move/from16 v10, v32

    move/from16 v31, v34

    :goto_1a
    add-int v7, v33, v33

    move/from16 v32, v7

    aget-object v7, v22, v32

    move/from16 v33, v10

    instance-of v10, v7, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_23

    check-cast v7, Ljava/lang/reflect/Field;

    :goto_1b
    move-object/from16 v38, v11

    goto :goto_1c

    :cond_23
    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/play_billing/p;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v22, v32

    add-int/lit8 v10, v26, 0x1

    aput v8, v11, v26

    move/from16 v26, v10

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    add-int/lit8 v10, v32, 0x1

    aget-object v11, v22, v10

    move/from16 v32, v7

    instance-of v7, v11, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_24

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1d

    :cond_24
    check-cast v11, Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/play_billing/p;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v22, v10

    :goto_1d
    invoke-virtual {v2, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    move-object/from16 v20, v4

    move-object/from16 v36, v5

    move/from16 v19, v7

    move/from16 v34, v12

    move/from16 v7, v32

    move/from16 v10, v33

    const/4 v4, 0x0

    move/from16 v33, v31

    goto/16 :goto_28

    :cond_25
    move-object/from16 v38, v11

    add-int/lit8 v10, v31, 0x1

    aget-object v11, v22, v31

    check-cast v11, Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/play_billing/p;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move/from16 v33, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_26

    const/16 v10, 0x11

    if-ne v9, v10, :cond_27

    :cond_26
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto/16 :goto_23

    :cond_27
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_2f

    const/16 v10, 0x31

    if-ne v9, v10, :cond_28

    add-int/lit8 v10, v31, 0x2

    move/from16 v18, v10

    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto/16 :goto_22

    :cond_28
    const/16 v10, 0xc

    if-eq v9, v10, :cond_2c

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_2c

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_29

    goto :goto_20

    :cond_29
    const/16 v10, 0x32

    if-ne v9, v10, :cond_2b

    add-int/lit8 v10, v31, 0x2

    add-int/lit8 v34, v27, 0x1

    aput v8, v38, v27

    div-int/lit8 v27, v8, 0x3

    aget-object v33, v22, v33

    add-int v27, v27, v27

    aput-object v33, v16, v27

    if-eqz v32, :cond_2a

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v31, v31, 0x3

    aget-object v10, v22, v10

    aput-object v10, v16, v27

    move/from16 v33, v31

    move/from16 v27, v34

    :goto_1e
    move/from16 v34, v12

    :goto_1f
    const/4 v12, 0x1

    goto :goto_24

    :cond_2a
    move/from16 v33, v10

    move/from16 v27, v34

    const/16 v32, 0x0

    goto :goto_1e

    :cond_2b
    move/from16 v34, v12

    const/4 v10, 0x3

    goto :goto_1f

    :cond_2c
    :goto_20
    invoke-virtual {v3}, Lgqb;->zzc()I

    move-result v10

    move/from16 v34, v12

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2e

    if-eqz v32, :cond_2d

    goto :goto_21

    :cond_2d
    const/16 v32, 0x0

    goto :goto_24

    :cond_2e
    :goto_21
    add-int/lit8 v10, v31, 0x2

    move/from16 v19, v10

    const/4 v10, 0x3

    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v18

    aget-object v31, v22, v33

    aput-object v31, v16, v18

    move/from16 v33, v19

    goto :goto_24

    :cond_2f
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    add-int/lit8 v18, v31, 0x2

    :goto_22
    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v19

    aget-object v31, v22, v33

    aput-object v31, v16, v19

    move/from16 v33, v18

    goto :goto_24

    :goto_23
    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v18

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v16, v18

    :goto_24
    invoke-virtual {v2, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    and-int/lit16 v11, v6, 0x1000

    const v19, 0xfffff

    if-eqz v11, :cond_33

    const/16 v11, 0x11

    if-gt v9, v11, :cond_33

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v12, 0xd800

    if-lt v7, v12, :cond_31

    and-int/lit16 v7, v7, 0x1fff

    const/16 v19, 0xd

    :goto_25
    add-int/lit8 v20, v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_30

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v19

    or-int/2addr v7, v11

    add-int/lit8 v19, v19, 0xd

    move/from16 v11, v20

    goto :goto_25

    :cond_30
    shl-int v11, v11, v19

    or-int/2addr v7, v11

    move/from16 v11, v20

    :cond_31
    add-int v19, v24, v24

    div-int/lit8 v20, v7, 0x20

    add-int v20, v20, v19

    aget-object v12, v22, v20

    move-object/from16 v36, v5

    instance-of v5, v12, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_32

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_26
    move-object/from16 v20, v4

    goto :goto_27

    :cond_32
    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/gms/internal/play_billing/p;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v22, v20

    goto :goto_26

    :goto_27
    invoke-virtual {v2, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    rem-int/lit8 v7, v7, 0x20

    move/from16 v19, v4

    move v4, v7

    move v7, v10

    move/from16 v37, v11

    move/from16 v10, v32

    goto :goto_28

    :cond_33
    move-object/from16 v20, v4

    move-object/from16 v36, v5

    move/from16 v37, v7

    move v7, v10

    move/from16 v10, v32

    const/4 v4, 0x0

    :goto_28
    add-int/lit8 v5, v8, 0x1

    aput v30, v25, v8

    add-int/lit8 v11, v8, 0x2

    and-int/lit16 v12, v6, 0x200

    if-eqz v12, :cond_34

    const/high16 v12, 0x20000000

    goto :goto_29

    :cond_34
    const/4 v12, 0x0

    :goto_29
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_35

    const/high16 v6, 0x10000000

    goto :goto_2a

    :cond_35
    const/4 v6, 0x0

    :goto_2a
    if-eqz v10, :cond_36

    const/high16 v10, -0x80000000

    goto :goto_2b

    :cond_36
    const/4 v10, 0x0

    :goto_2b
    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v6, v12

    or-int/2addr v6, v10

    or-int/2addr v6, v9

    or-int/2addr v6, v7

    aput v6, v25, v5

    add-int/lit8 v8, v8, 0x3

    shl-int/lit8 v4, v4, 0x14

    or-int v4, v4, v19

    aput v4, v25, v11

    move-object/from16 v4, v20

    move/from16 v9, v28

    move/from16 v6, v29

    move/from16 v10, v33

    move/from16 v12, v34

    move-object/from16 v5, v36

    move/from16 v7, v37

    move-object/from16 v11, v38

    const/16 v18, 0x3

    goto/16 :goto_11

    :cond_37
    move/from16 v28, v9

    move-object/from16 v38, v11

    move/from16 v34, v12

    new-instance v5, Lcom/google/android/gms/internal/play_billing/p;

    iget-object v10, v3, Lgqb;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    move v8, v13

    move-object/from16 v7, v16

    move/from16 v13, v21

    move-object/from16 v6, v25

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/play_billing/p;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzhr;[IIILg;Llib;)V

    move-object v4, v5

    :goto_2c
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqb;

    if-eqz v0, :cond_38

    return-object v0

    :cond_38
    return-object v4

    :cond_39
    check-cast v3, Lhsb;

    throw v5

    :cond_3a
    const-string v0, "Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode."

    invoke-static {v0}, Ln7;->g(Ljava/lang/String;)V

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get message info for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported message type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v5

    :cond_3c
    check-cast v2, Lkqb;

    return-object v2
.end method
