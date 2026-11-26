.class public final Llgb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Llgb;


# instance fields
.field public final a:Leeb;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llgb;

    invoke-direct {v0}, Llgb;-><init>()V

    sput-object v0, Llgb;->c:Llgb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Llgb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Leeb;

    invoke-direct {v0}, Leeb;-><init>()V

    iput-object v0, p0, Llgb;->a:Leeb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljib;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    iget-object v3, v0, Llgb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljib;

    if-nez v4, :cond_3b

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    iget-object v0, v0, Llgb;->a:Leeb;

    iget-object v0, v0, Leeb;->a:Ljava/lang/Object;

    check-cast v0, Laeb;

    invoke-virtual {v0, v1}, Laeb;->a(Ljava/lang/Class;)Lzeb;

    move-result-object v0

    invoke-interface {v0}, Lzeb;->zzb()Z

    move-result v4

    if-nez v4, :cond_39

    sget v4, Lhgb;->a:I

    sget v4, Lpdb;->a:I

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v0}, Lzeb;->zzc()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Lr7b;->a:Ll7b;

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object v15, v2

    :goto_0
    sget v4, Lueb;->a:I

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l:[I

    instance-of v4, v0, Ltgb;

    if-eqz v4, :cond_38

    check-cast v0, Ltgb;

    iget-object v2, v0, Ltgb;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xd800

    if-lt v7, v8, :cond_1

    move v7, v5

    :goto_1
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_1
    move v9, v5

    :cond_2
    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_2
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v11

    or-int/2addr v9, v7

    add-int/lit8 v11, v11, 0xd

    move v7, v12

    goto :goto_2

    :cond_3
    shl-int/2addr v7, v11

    or-int/2addr v9, v7

    move v7, v12

    :cond_4
    if-nez v9, :cond_5

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l:[I

    move v8, v6

    move v10, v8

    move v12, v10

    move v13, v12

    move/from16 v16, v13

    move-object v11, v9

    move/from16 v9, v16

    goto/16 :goto_e

    :cond_5
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v7, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_3

    :cond_6
    shl-int/2addr v9, v11

    or-int/2addr v7, v9

    move v9, v12

    :cond_7
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_4
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_8

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_4

    :cond_8
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_9
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_5
    add-int/lit8 v16, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v8, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move/from16 v12, v16

    goto :goto_5

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move/from16 v12, v16

    :cond_b
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v8, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_6
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v8, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v16

    or-int/2addr v12, v13

    add-int/lit8 v16, v16, 0xd

    move/from16 v13, v17

    goto :goto_6

    :cond_c
    shl-int v13, v13, v16

    or-int/2addr v12, v13

    move/from16 v13, v17

    :cond_d
    add-int/lit8 v16, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v8, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_7
    add-int/lit8 v17, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_e

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v13, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_7

    :cond_e
    shl-int v6, v6, v16

    or-int/2addr v13, v6

    move/from16 v6, v17

    goto :goto_8

    :cond_f
    move/from16 v6, v16

    :goto_8
    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_11

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v10, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v18, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_10

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v16

    or-int/2addr v6, v10

    add-int/lit8 v16, v16, 0xd

    move/from16 v10, v18

    goto :goto_9

    :cond_10
    shl-int v10, v10, v16

    or-int/2addr v6, v10

    move/from16 v10, v18

    goto :goto_a

    :cond_11
    move/from16 v10, v16

    :goto_a
    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v8, :cond_13

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v5, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v19, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_12

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v16

    or-int/2addr v10, v5

    add-int/lit8 v16, v16, 0xd

    move/from16 v5, v19

    goto :goto_b

    :cond_12
    shl-int v5, v5, v16

    or-int/2addr v10, v5

    move/from16 v5, v19

    goto :goto_c

    :cond_13
    move/from16 v5, v16

    :goto_c
    add-int/lit8 v16, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v8, v16

    const/16 v16, 0xd

    :goto_d
    add-int/lit8 v20, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v21, v5

    const v5, 0xd800

    if-lt v8, v5, :cond_14

    and-int/lit16 v5, v8, 0x1fff

    shl-int v5, v5, v16

    or-int v5, v21, v5

    add-int/lit8 v16, v16, 0xd

    move/from16 v8, v20

    goto :goto_d

    :cond_14
    shl-int v5, v8, v16

    or-int v5, v21, v5

    move/from16 v16, v20

    :cond_15
    add-int v8, v5, v6

    add-int/2addr v8, v10

    add-int v10, v7, v7

    add-int/2addr v10, v9

    new-array v9, v8, [I

    move/from16 v8, v16

    move/from16 v16, v7

    move v7, v8

    move v8, v11

    move-object v11, v9

    move v9, v12

    move v12, v5

    :goto_e
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    move/from16 v20, v6

    iget-object v6, v0, Ltgb;->c:[Ljava/lang/Object;

    move-object/from16 v21, v6

    iget-object v6, v0, Ltgb;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    add-int v20, v12, v20

    move/from16 v22, v7

    add-int v7, v13, v13

    move/from16 v23, v8

    const/4 v8, 0x3

    mul-int/2addr v13, v8

    new-array v13, v13, [I

    new-array v7, v7, [Ljava/lang/Object;

    move/from16 v8, v22

    move/from16 v22, v10

    move v10, v8

    move/from16 v26, v12

    move/from16 v27, v20

    const/4 v8, 0x0

    const/16 v24, 0x0

    :goto_f
    if-ge v10, v4, :cond_37

    add-int/lit8 v28, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v29, v4

    const v4, 0xd800

    if-lt v10, v4, :cond_17

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v4, v28

    const/16 v28, 0xd

    :goto_10
    add-int/lit8 v30, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v31, v7

    const v7, 0xd800

    if-lt v4, v7, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v28

    or-int/2addr v10, v4

    add-int/lit8 v28, v28, 0xd

    move/from16 v4, v30

    move-object/from16 v7, v31

    goto :goto_10

    :cond_16
    shl-int v4, v4, v28

    or-int/2addr v10, v4

    move/from16 v4, v30

    goto :goto_11

    :cond_17
    move-object/from16 v31, v7

    move/from16 v4, v28

    :goto_11
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v28, v7

    const v7, 0xd800

    if-lt v4, v7, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v7, v28

    const/16 v28, 0xd

    :goto_12
    add-int/lit8 v30, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v32, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_18

    and-int/lit16 v4, v7, 0x1fff

    shl-int v4, v4, v28

    or-int v4, v32, v4

    add-int/lit8 v28, v28, 0xd

    move/from16 v7, v30

    goto :goto_12

    :cond_18
    shl-int v4, v7, v28

    or-int v4, v32, v4

    move/from16 v7, v30

    goto :goto_13

    :cond_19
    move/from16 v7, v28

    :goto_13
    move/from16 v28, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v24, 0x1

    aput v8, v11, v24

    move/from16 v24, v9

    :cond_1a
    and-int/lit16 v9, v4, 0xff

    move/from16 v30, v10

    and-int/lit16 v10, v4, 0x800

    move/from16 v32, v10

    const/16 v10, 0x33

    if-lt v9, v10, :cond_24

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v33, v10

    const v10, 0xd800

    if-lt v7, v10, :cond_1c

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v10, v33

    const/16 v33, 0xd

    :goto_14
    add-int/lit8 v36, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v37, v7

    const v7, 0xd800

    if-lt v10, v7, :cond_1b

    and-int/lit16 v7, v10, 0x1fff

    shl-int v7, v7, v33

    or-int v7, v37, v7

    add-int/lit8 v33, v33, 0xd

    move/from16 v10, v36

    goto :goto_14

    :cond_1b
    shl-int v7, v10, v33

    or-int v7, v37, v7

    move/from16 v10, v36

    goto :goto_15

    :cond_1c
    move/from16 v10, v33

    :goto_15
    move/from16 v33, v7

    add-int/lit8 v7, v9, -0x33

    move/from16 v36, v10

    const/16 v10, 0x9

    if-eq v7, v10, :cond_1d

    const/16 v10, 0x11

    if-ne v7, v10, :cond_1e

    :cond_1d
    const/4 v7, 0x3

    const/4 v10, 0x1

    goto :goto_17

    :cond_1e
    const/16 v10, 0xc

    if-ne v7, v10, :cond_21

    invoke-virtual {v0}, Ltgb;->zzc()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_20

    if-eqz v32, :cond_1f

    goto :goto_16

    :cond_1f
    const/4 v10, 0x0

    goto :goto_18

    :cond_20
    :goto_16
    add-int/lit8 v7, v22, 0x1

    move/from16 v18, v7

    const/4 v7, 0x3

    invoke-static {v8, v7, v10}, Lud;->b(III)I

    move-result v25

    aget-object v22, v21, v22

    aput-object v22, v31, v25

    move/from16 v22, v18

    :cond_21
    move/from16 v10, v32

    goto :goto_18

    :goto_17
    add-int/lit8 v34, v22, 0x1

    invoke-static {v8, v7, v10}, Lud;->b(III)I

    move-result v35

    aget-object v7, v21, v22

    aput-object v7, v31, v35

    move/from16 v10, v32

    move/from16 v22, v34

    :goto_18
    add-int v7, v33, v33

    move/from16 v32, v7

    aget-object v7, v21, v32

    move/from16 v33, v10

    instance-of v10, v7, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_22

    check-cast v7, Ljava/lang/reflect/Field;

    :goto_19
    move-object/from16 v37, v11

    goto :goto_1a

    :cond_22
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v21, v32

    goto :goto_19

    :goto_1a
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    add-int/lit8 v10, v32, 0x1

    aget-object v11, v21, v10

    move/from16 v32, v7

    instance-of v7, v11, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_23

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1b

    :cond_23
    check-cast v11, Ljava/lang/String;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v21, v10

    :goto_1b
    invoke-virtual {v5, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v7, v10

    move/from16 v18, v7

    move/from16 v34, v12

    move/from16 v7, v32

    move/from16 v32, v33

    move/from16 v19, v36

    const/4 v10, 0x0

    goto/16 :goto_27

    :cond_24
    move-object/from16 v37, v11

    add-int/lit8 v10, v22, 0x1

    aget-object v11, v21, v22

    check-cast v11, Ljava/lang/String;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    add-int/lit8 v22, v22, 0x2

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

    add-int/lit8 v10, v22, 0x2

    add-int/lit8 v34, v26, 0x1

    aput v8, v37, v26

    div-int/lit8 v26, v8, 0x3

    aget-object v33, v21, v33

    add-int v26, v26, v26

    aput-object v33, v31, v26

    if-eqz v32, :cond_29

    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v22, v22, 0x3

    aget-object v10, v21, v10

    aput-object v10, v31, v26

    move/from16 v26, v34

    :goto_1c
    move/from16 v34, v12

    const/4 v12, 0x1

    goto :goto_22

    :cond_29
    move/from16 v22, v10

    move/from16 v26, v34

    const/16 v32, 0x0

    goto :goto_1c

    :cond_2a
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto :goto_21

    :cond_2b
    :goto_1d
    invoke-virtual {v0}, Ltgb;->zzc()I

    move-result v10

    move/from16 v34, v12

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2d

    if-eqz v32, :cond_2c

    goto :goto_1e

    :cond_2c
    move/from16 v22, v33

    const/16 v32, 0x0

    goto :goto_22

    :cond_2d
    :goto_1e
    add-int/lit8 v22, v22, 0x2

    const/4 v10, 0x3

    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v18

    aget-object v25, v21, v33

    aput-object v25, v31, v18

    goto :goto_22

    :cond_2e
    move/from16 v34, v12

    const/4 v10, 0x3

    const/4 v12, 0x1

    add-int/lit8 v22, v22, 0x2

    :goto_1f
    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v18

    aget-object v25, v21, v33

    aput-object v25, v31, v18

    goto :goto_22

    :goto_20
    invoke-static {v8, v10, v12}, Lud;->b(III)I

    move-result v18

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v31, v18

    :goto_21
    move/from16 v22, v33

    :goto_22
    invoke-virtual {v5, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    and-int/lit16 v11, v4, 0x1000

    const v18, 0xfffff

    if-eqz v11, :cond_32

    const/16 v11, 0x11

    if-gt v9, v11, :cond_32

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v12, 0xd800

    if-lt v7, v12, :cond_30

    and-int/lit16 v7, v7, 0x1fff

    const/16 v18, 0xd

    :goto_23
    add-int/lit8 v19, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_2f

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v18

    or-int/2addr v7, v11

    add-int/lit8 v18, v18, 0xd

    move/from16 v11, v19

    goto :goto_23

    :cond_2f
    shl-int v11, v11, v18

    or-int/2addr v7, v11

    goto :goto_24

    :cond_30
    move/from16 v19, v11

    :goto_24
    add-int v11, v16, v16

    div-int/lit8 v18, v7, 0x20

    add-int v18, v18, v11

    aget-object v11, v21, v18

    instance-of v12, v11, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_31

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_25

    :cond_31
    check-cast v11, Ljava/lang/String;

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v21, v18

    :goto_25
    invoke-virtual {v5, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v11, v11

    rem-int/lit8 v7, v7, 0x20

    move/from16 v18, v11

    goto :goto_26

    :cond_32
    move/from16 v19, v7

    const/4 v7, 0x0

    :goto_26
    const/16 v11, 0x12

    if-lt v9, v11, :cond_33

    const/16 v11, 0x31

    if-gt v9, v11, :cond_33

    add-int/lit8 v11, v27, 0x1

    aput v10, v37, v27

    move/from16 v27, v10

    move v10, v7

    move/from16 v7, v27

    move/from16 v27, v11

    goto :goto_27

    :cond_33
    move/from16 v38, v10

    move v10, v7

    move/from16 v7, v38

    :goto_27
    add-int/lit8 v11, v8, 0x1

    aput v30, v13, v8

    add-int/lit8 v12, v8, 0x2

    move-object/from16 v30, v2

    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_34

    const/high16 v2, 0x20000000

    goto :goto_28

    :cond_34
    const/4 v2, 0x0

    :goto_28
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_35

    const/high16 v4, 0x10000000

    goto :goto_29

    :cond_35
    const/4 v4, 0x0

    :goto_29
    if-eqz v32, :cond_36

    const/high16 v32, -0x80000000

    goto :goto_2a

    :cond_36
    const/16 v32, 0x0

    :goto_2a
    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v2, v4

    or-int v2, v2, v32

    or-int/2addr v2, v9

    or-int/2addr v2, v7

    aput v2, v13, v11

    add-int/lit8 v8, v8, 0x3

    shl-int/lit8 v2, v10, 0x14

    or-int v2, v2, v18

    aput v2, v13, v12

    move/from16 v10, v19

    move/from16 v9, v28

    move/from16 v4, v29

    move-object/from16 v2, v30

    move-object/from16 v7, v31

    move/from16 v12, v34

    move-object/from16 v11, v37

    goto/16 :goto_f

    :cond_37
    move-object/from16 v31, v7

    move/from16 v28, v9

    move-object/from16 v37, v11

    move/from16 v34, v12

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;

    iget-object v10, v0, Ltgb;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    move-object v6, v13

    move/from16 v13, v20

    move/from16 v8, v23

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;[IIILzd3;Ll7b;)V

    goto :goto_2b

    :cond_38
    check-cast v0, Lbkb;

    throw v2

    :cond_39
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    sget-object v4, Lr7b;->a:Ll7b;

    invoke-interface {v0}, Lzeb;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;

    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;-><init>(Lzd3;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V

    :goto_2b
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljib;

    if-nez v0, :cond_3a

    return-object v5

    :cond_3a
    return-object v0

    :cond_3b
    return-object v4

    :cond_3c
    const-string v0, "messageType"

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    return-object v2
.end method
