.class public final Lcom/google/android/gms/internal/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcjb<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:[I

.field public static final l:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/auth/zzfx;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Ljfb;

.field public final j:Ltlb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/auth/c;->k:[I

    :try_start_0
    new-instance v0, Lanb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;[IIILjfb;Ltlb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/c;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/auth/c;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/auth/c;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/auth/c;->f:[I

    iput p7, p0, Lcom/google/android/gms/internal/auth/c;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/auth/c;->h:I

    iput-object p9, p0, Lcom/google/android/gms/internal/auth/c;->i:Ljfb;

    iput-object p10, p0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    iput-object p5, p0, Lcom/google/android/gms/internal/auth/c;->e:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static k(Logb;Ljfb;Ltlb;)Lcom/google/android/gms/internal/auth/c;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lyib;

    if-eqz v1, :cond_37

    check-cast v0, Lyib;

    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_3

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_2

    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    add-int/lit8 v8, v8, 0xd

    move v3, v9

    goto :goto_1

    :cond_2
    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    move v3, v9

    :cond_3
    if-nez v6, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/auth/c;->k:[I

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v15, v12

    move-object v14, v6

    move v6, v15

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_6

    and-int/lit16 v3, v3, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_5

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_2

    :cond_5
    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    move v6, v9

    :cond_6
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_8

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_3

    :cond_7
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v10

    :cond_8
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_4

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v11

    :cond_a
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_5

    :cond_b
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_c
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v4, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_d
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_e
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v4, :cond_10

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_f
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_10
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_12

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v4, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_11
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_12
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v4, :cond_14

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v4, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_13
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_14
    add-int v15, v13, v11

    add-int/2addr v15, v12

    add-int v12, v3, v3

    add-int/2addr v12, v6

    new-array v6, v15, [I

    move-object v15, v6

    move v6, v3

    move v3, v14

    move-object v14, v15

    move v15, v11

    move v11, v8

    move v8, v15

    move v15, v12

    move v12, v9

    move v9, v15

    move v15, v13

    :goto_a
    iget-object v13, v0, Lyib;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lyib;->a:Lcom/google/android/gms/internal/auth/zzfx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    add-int v16, v15, v8

    add-int v8, v10, v10

    const/4 v7, 0x3

    mul-int/2addr v10, v7

    new-array v10, v10, [I

    new-array v8, v8, [Ljava/lang/Object;

    move/from16 v20, v15

    move/from16 v21, v16

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_b
    const/16 v5, 0xc

    if-ge v3, v5, :cond_36

    add-int/lit8 v23, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v23

    or-int/2addr v3, v5

    add-int/lit8 v23, v23, 0xd

    move/from16 v5, v25

    goto :goto_c

    :cond_15
    shl-int v5, v5, v23

    or-int/2addr v3, v5

    move/from16 v5, v25

    goto :goto_d

    :cond_16
    move/from16 v5, v23

    :goto_d
    add-int/lit8 v23, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_18

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v26, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v3

    const v3, 0xd800

    if-lt v4, v3, :cond_17

    and-int/lit16 v3, v4, 0x1fff

    shl-int v3, v3, v23

    or-int/2addr v5, v3

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v26

    move/from16 v3, v27

    goto :goto_e

    :cond_17
    shl-int v3, v4, v23

    or-int/2addr v5, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_18
    move/from16 v27, v3

    move/from16 v3, v23

    :goto_f
    and-int/lit16 v4, v5, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v18, 0x1

    aput v7, v14, v18

    move/from16 v18, v4

    :cond_19
    and-int/lit16 v4, v5, 0xff

    move/from16 v23, v6

    sget-object v6, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    move-object/from16 v30, v8

    const/16 v8, 0x33

    if-lt v4, v8, :cond_23

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v26, v8

    const v8, 0xd800

    if-lt v3, v8, :cond_1b

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v26

    const/16 v26, 0xd

    :goto_10
    add-int/lit8 v31, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v32, v3

    const v3, 0xd800

    if-lt v8, v3, :cond_1a

    and-int/lit16 v3, v8, 0x1fff

    shl-int v3, v3, v26

    or-int v3, v32, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v8, v31

    goto :goto_10

    :cond_1a
    shl-int v3, v8, v26

    or-int v3, v32, v3

    move/from16 v8, v31

    goto :goto_11

    :cond_1b
    move/from16 v8, v26

    :goto_11
    move/from16 v26, v3

    add-int/lit8 v3, v4, -0x33

    move/from16 v31, v8

    const/16 v8, 0x9

    if-eq v3, v8, :cond_1c

    const/16 v8, 0x11

    if-ne v3, v8, :cond_1d

    :cond_1c
    const/4 v3, 0x3

    const/4 v8, 0x1

    goto :goto_14

    :cond_1d
    const/16 v8, 0xc

    if-ne v3, v8, :cond_20

    invoke-virtual {v0}, Lyib;->zzc()I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1e

    and-int/lit16 v3, v5, 0x800

    if-eqz v3, :cond_1f

    :cond_1e
    const/4 v3, 0x3

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v3, 0x3

    goto :goto_15

    :goto_13
    invoke-static {v7, v3, v8}, Lud;->b(III)I

    move-result v19

    add-int/lit8 v22, v9, 0x1

    aget-object v9, v13, v9

    aput-object v9, v30, v19

    move/from16 v9, v22

    goto :goto_15

    :cond_20
    const/4 v8, 0x1

    goto :goto_12

    :goto_14
    invoke-static {v7, v3, v8}, Lud;->b(III)I

    move-result v24

    add-int/lit8 v3, v9, 0x1

    aget-object v8, v13, v9

    aput-object v8, v30, v24

    move v9, v3

    :goto_15
    add-int v3, v26, v26

    aget-object v8, v13, v3

    move/from16 v24, v3

    instance-of v3, v8, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_21

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_16
    move v3, v9

    goto :goto_17

    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/auth/c;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v13, v24

    goto :goto_16

    :goto_17
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v9, v24, 0x1

    move/from16 v24, v3

    aget-object v3, v13, v9

    move/from16 v26, v8

    instance-of v8, v3, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_22

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_22
    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/auth/c;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v13, v9

    :goto_18
    invoke-virtual {v6, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v3, v8

    move-object/from16 v29, v1

    move-object/from16 v28, v2

    move/from16 v22, v24

    move/from16 v8, v26

    move/from16 v9, v31

    const v25, 0xd800

    move-object/from16 v24, v10

    move v10, v3

    const/4 v3, 0x0

    goto/16 :goto_23

    :cond_23
    add-int/lit8 v8, v9, 0x1

    aget-object v26, v13, v9

    move/from16 v31, v8

    move-object/from16 v8, v26

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/auth/c;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v26, v9

    const/16 v9, 0x9

    if-eq v4, v9, :cond_24

    const/16 v9, 0x11

    if-ne v4, v9, :cond_25

    :cond_24
    move-object/from16 v24, v10

    const/4 v9, 0x3

    const/4 v10, 0x1

    goto/16 :goto_1c

    :cond_25
    const/16 v9, 0x1b

    if-eq v4, v9, :cond_26

    const/16 v9, 0x31

    if-ne v4, v9, :cond_27

    :cond_26
    move-object/from16 v24, v10

    const/4 v9, 0x3

    const/4 v10, 0x1

    goto :goto_1b

    :cond_27
    const/16 v9, 0xc

    if-eq v4, v9, :cond_2b

    const/16 v9, 0x1e

    if-eq v4, v9, :cond_2b

    const/16 v9, 0x2c

    if-ne v4, v9, :cond_28

    goto :goto_19

    :cond_28
    const/16 v9, 0x32

    if-ne v4, v9, :cond_2a

    add-int/lit8 v9, v20, 0x1

    aput v7, v14, v20

    div-int/lit8 v20, v7, 0x3

    add-int/lit8 v24, v26, 0x2

    aget-object v28, v13, v31

    add-int v20, v20, v20

    aput-object v28, v30, v20

    move/from16 v28, v9

    and-int/lit16 v9, v5, 0x800

    if-eqz v9, :cond_29

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v9, v26, 0x3

    aget-object v24, v13, v24

    aput-object v24, v30, v20

    move/from16 v22, v9

    move-object/from16 v24, v10

    move/from16 v20, v28

    goto :goto_1e

    :cond_29
    move/from16 v22, v24

    move/from16 v20, v28

    move-object/from16 v24, v10

    goto :goto_1e

    :cond_2a
    move-object/from16 v24, v10

    const/4 v9, 0x3

    const/4 v10, 0x1

    goto :goto_1d

    :cond_2b
    :goto_19
    invoke-virtual {v0}, Lyib;->zzc()I

    move-result v9

    move-object/from16 v24, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2c

    and-int/lit16 v9, v5, 0x800

    if-eqz v9, :cond_2d

    :cond_2c
    const/4 v9, 0x3

    goto :goto_1a

    :cond_2d
    const/4 v9, 0x3

    goto :goto_1d

    :goto_1a
    invoke-static {v7, v9, v10}, Lud;->b(III)I

    move-result v19

    add-int/lit8 v22, v26, 0x2

    aget-object v26, v13, v31

    aput-object v26, v30, v19

    goto :goto_1e

    :goto_1b
    invoke-static {v7, v9, v10}, Lud;->b(III)I

    move-result v19

    add-int/lit8 v22, v26, 0x2

    aget-object v26, v13, v31

    aput-object v26, v30, v19

    goto :goto_1e

    :goto_1c
    invoke-static {v7, v9, v10}, Lud;->b(III)I

    move-result v19

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v30, v19

    :goto_1d
    move/from16 v22, v31

    :goto_1e
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v8, v9

    and-int/lit16 v9, v5, 0x1000

    const v10, 0xfffff

    if-eqz v9, :cond_31

    const/16 v9, 0x11

    if-gt v4, v9, :cond_31

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v10, 0xd800

    if-lt v3, v10, :cond_2f

    and-int/lit16 v3, v3, 0x1fff

    const/16 v25, 0xd

    :goto_1f
    add-int/lit8 v28, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_2e

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v25

    or-int/2addr v3, v9

    add-int/lit8 v25, v25, 0xd

    move/from16 v9, v28

    goto :goto_1f

    :cond_2e
    shl-int v9, v9, v25

    or-int/2addr v3, v9

    move/from16 v9, v28

    :cond_2f
    add-int v25, v23, v23

    div-int/lit8 v28, v3, 0x20

    add-int v28, v28, v25

    aget-object v10, v13, v28

    move-object/from16 v29, v1

    instance-of v1, v10, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v10, Ljava/lang/reflect/Field;

    :goto_20
    move-object/from16 v28, v2

    goto :goto_21

    :cond_30
    check-cast v10, Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/auth/c;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v13, v28

    goto :goto_20

    :goto_21
    invoke-virtual {v6, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v3, v3, 0x20

    move v10, v1

    const v25, 0xd800

    goto :goto_22

    :cond_31
    move-object/from16 v29, v1

    move-object/from16 v28, v2

    const v25, 0xd800

    move v9, v3

    const/4 v3, 0x0

    :goto_22
    const/16 v1, 0x12

    if-lt v4, v1, :cond_32

    const/16 v1, 0x31

    if-gt v4, v1, :cond_32

    add-int/lit8 v1, v21, 0x1

    aput v8, v14, v21

    move/from16 v21, v1

    :cond_32
    :goto_23
    add-int/lit8 v1, v7, 0x1

    aput v27, v24, v7

    add-int/lit8 v2, v7, 0x2

    and-int/lit16 v6, v5, 0x200

    if-eqz v6, :cond_33

    const/high16 v6, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v6, 0x0

    :goto_24
    move/from16 v27, v1

    and-int/lit16 v1, v5, 0x100

    if-eqz v1, :cond_34

    const/high16 v1, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v1, 0x0

    :goto_25
    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_35

    const/high16 v5, -0x80000000

    goto :goto_26

    :cond_35
    const/4 v5, 0x0

    :goto_26
    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v1, v6

    or-int/2addr v1, v5

    or-int/2addr v1, v4

    or-int/2addr v1, v8

    aput v1, v24, v27

    add-int/lit8 v7, v7, 0x3

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v10

    aput v1, v24, v2

    move v3, v9

    move/from16 v9, v22

    move/from16 v6, v23

    move-object/from16 v10, v24

    move/from16 v4, v25

    move-object/from16 v2, v28

    move-object/from16 v1, v29

    move-object/from16 v8, v30

    goto/16 :goto_b

    :cond_36
    move-object/from16 v30, v8

    move-object/from16 v24, v10

    new-instance v8, Lcom/google/android/gms/internal/auth/c;

    iget-object v13, v0, Lyib;->a:Lcom/google/android/gms/internal/auth/zzfx;

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v9, v24

    move-object/from16 v10, v30

    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/auth/c;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;[IIILjfb;Ltlb;)V

    return-object v8

    :cond_37
    check-cast v0, Lelb;

    const/4 v0, 0x0

    throw v0
.end method

.method public static l(Lcom/google/android/gms/internal/auth/zzev;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static n(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " for "

    const-string v3, " not found. Known fields are "

    const-string v4, "Field "

    invoke-static {v4, p1, v2, p0, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzev;)I
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v4

    int-to-long v6, v6

    const/16 v8, 0x25

    const/16 v9, 0x20

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v6, v4, v9

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v4

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/c;->l(Lcom/google/android/gms/internal/auth/zzev;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :cond_0
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v8

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzha;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v4

    int-to-long v6, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lljb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v4, p2, v6, v7}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-virtual {v4, p2, v6, v7}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/c;->f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lpnb;->c:Ldta;

    invoke-virtual {v4, p1, v6, v7}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-virtual {v4, p2, v6, v7}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p1

    invoke-virtual {p0, p2}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    :goto_3
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    aget v5, v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v2

    int-to-long v8, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v7, p1

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->v(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lpnb;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lpnb;->f(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->v(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lpnb;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lpnb;->f(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lljb;->a:Ljava/lang/Class;

    invoke-static {p1, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfr;

    check-cast v2, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzfr;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzfr;->zzb()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzfr;->zzd(Lcom/google/android/gms/internal/auth/zzfr;)V

    :cond_2
    invoke-static {v8, v9, p1, v1}, Lpnb;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c;->i:Ljfb;

    invoke-virtual {v1, v8, v9, p1, p2}, Ljfb;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->u(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object v1, Lpnb;->c:Ldta;

    iget-object v6, v1, Ldta;->a:Lsun/misc/Unsafe;

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_8
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lpnb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_a
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_b
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_d
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lpnb;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_e
    move-object v7, p1

    invoke-virtual {p0, v0, v7, p2}, Lcom/google/android/gms/internal/auth/c;->u(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_f
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lpnb;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_10
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lpnb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_11
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_12
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lpnb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_13
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lpnb;->f(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_14
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lpnb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_15
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, v8, v9}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lpnb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_16
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lpnb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->j(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_17
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v6, Lpnb;->c:Ldta;

    invoke-virtual {v6, p2, v8, v9}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ldta;->h(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v7

    goto/16 :goto_0

    :cond_4
    move-object v7, p1

    sget-object p1, Lljb;->a:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    invoke-virtual {p0, v7}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p1

    invoke-virtual {p0, p2}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltlb;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Ltlb;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mutating immutable message: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/auth/c;->g:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/c;->f:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v1, :cond_0

    int-to-long v3, v10

    sget-object v11, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    invoke-virtual {v11, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v1, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v0

    :goto_1
    if-eqz v10, :cond_d

    :cond_4
    invoke-static {v9}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_8

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_7

    const/16 v6, 0x44

    if-eq v10, v6, :cond_7

    const/16 v6, 0x31

    if-eq v10, v6, :cond_8

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_5

    :cond_5
    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_5

    :cond_6
    div-int/lit8 v5, v5, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->b:[Ljava/lang/Object;

    add-int/2addr v5, v5

    aget-object p0, p0, v5

    check-cast p0, Lcom/google/android/gms/internal/auth/zzfq;

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v5

    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcjb;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_4

    :cond_8
    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v5

    move v7, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcjb;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v1, :cond_b

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_b
    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    move v6, v0

    :goto_3
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v5

    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcjb;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    :goto_4
    return v0

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final e(Ljava/lang/Object;[BIILh7b;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/c;->j(Ljava/lang/Object;[BIIILh7b;)I

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result p0

    and-int p1, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result p0

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_0
    invoke-static {p2, v0, v1}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v0, v1}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v0, v1}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-static {p2, v0, v1}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v1}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, v0, v1}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/auth/zzef;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_a
    sget-object p0, Lpnb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p2, v0, v1}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p2, v0, v1}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p2, v0, v1}, Lpnb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lpnb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->c(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lpnb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p2, v2, v3}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v6

    :cond_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/Object;[BIIILh7b;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    move/from16 v1, p3

    const/4 v5, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/google/android/gms/internal/auth/c;->b:[Ljava/lang/Object;

    const v16, 0xfffff

    iget-object v12, v0, Lcom/google/android/gms/internal/auth/c;->a:[I

    sget-object v13, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    const/16 v18, 0x0

    if-ge v1, v4, :cond_92

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_0

    invoke-static {v1, v3, v14, v6}, Ln7b;->g(I[BILh7b;)I

    move-result v14

    iget v1, v6, Lh7b;->a:I

    :cond_0
    move v6, v14

    move v14, v1

    ushr-int/lit8 v1, v14, 0x3

    const/16 p3, 0x3

    iget v11, v0, Lcom/google/android/gms/internal/auth/c;->d:I

    iget v3, v0, Lcom/google/android/gms/internal/auth/c;->c:I

    if-le v1, v5, :cond_2

    div-int/lit8 v7, v7, 0x3

    if-lt v1, v3, :cond_1

    if-gt v1, v11, :cond_1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/c;->m(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v11, v3

    :goto_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_2
    if-lt v1, v3, :cond_3

    if-gt v1, v11, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/c;->m(II)I

    move-result v5

    move v11, v5

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    const/4 v11, -0x1

    :goto_3
    if-ne v11, v3, :cond_4

    move/from16 v11, p5

    move/from16 v17, v3

    move/from16 v22, v9

    move-object/from16 v21, v12

    move v10, v14

    move-object/from16 v28, v15

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v9, p6

    move v15, v1

    move-object v14, v2

    move v1, v6

    goto/16 :goto_5b

    :cond_4
    and-int/lit8 v5, v14, 0x7

    add-int/lit8 v7, v11, 0x1

    aget v7, v12, v7

    invoke-static {v7}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v3

    move/from16 v20, v1

    and-int v1, v7, v16

    move/from16 v21, v6

    move/from16 v22, v7

    int-to-long v6, v1

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    const/high16 v24, 0x20000000

    const-wide/16 v25, 0x0

    const-string v4, ""

    move-wide/from16 v27, v6

    const/16 v6, 0x11

    const/16 v29, 0x1

    if-gt v3, v6, :cond_27

    add-int/lit8 v6, v11, 0x2

    aget v6, v12, v6

    ushr-int/lit8 v23, v6, 0x14

    shl-int v23, v29, v23

    and-int v6, v6, v16

    if-eq v6, v8, :cond_7

    move/from16 v7, v16

    if-eq v8, v7, :cond_5

    int-to-long v7, v8

    invoke-virtual {v13, v2, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v7, 0xfffff

    :cond_5
    if-ne v6, v7, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    int-to-long v7, v6

    invoke-virtual {v13, v2, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :goto_4
    move/from16 v30, v6

    move/from16 v31, v7

    goto :goto_5

    :cond_7
    move/from16 v30, v8

    move/from16 v31, v9

    :goto_5
    packed-switch v3, :pswitch_data_0

    move/from16 v3, p3

    if-ne v5, v3, :cond_8

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/auth/c;->r(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v20, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v21

    const/16 v17, -0x1

    invoke-static/range {v3 .. v9}, Ln7b;->j(Ljava/lang/Object;Lcjb;[BIIILh7b;)I

    move-result v4

    move-object v7, v5

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v5

    const v16, 0xfffff

    and-int v5, v5, v16

    int-to-long v5, v5

    invoke-virtual {v1, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    or-int v1, v31, v23

    move-object v3, v7

    move-object v6, v9

    move v7, v11

    move/from16 v5, v20

    move/from16 v8, v30

    move v9, v1

    move v1, v4

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_8
    const/16 v17, -0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v1, v2

    move/from16 v7, v21

    move-object/from16 v21, v12

    goto/16 :goto_17

    :pswitch_0
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v4, v21

    const/16 v17, -0x1

    if-nez v5, :cond_9

    invoke-static {v7, v4, v9}, Ln7b;->i([BILh7b;)I

    move-result v8

    iget-wide v3, v9, Lh7b;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v5

    move-object v1, v13

    move/from16 v13, v20

    move-wide/from16 v3, v27

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v1, v31, v23

    move/from16 v4, p4

    move-object v3, v7

    move-object v6, v9

    move v7, v11

    move v5, v13

    move v9, v1

    move v1, v8

    :goto_6
    move/from16 v8, v30

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    move-object v8, v7

    move-object/from16 v21, v12

    :goto_7
    move v7, v4

    goto/16 :goto_17

    :pswitch_1
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v3, v13

    move/from16 v4, v21

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-nez v5, :cond_a

    invoke-static {v7, v4, v9}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v4, v9, Lh7b;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v4

    invoke-virtual {v3, v2, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v3, v31, v23

    move/from16 v4, p4

    move-object v6, v9

    move/from16 v5, v20

    move/from16 v8, v30

    move v9, v3

    move-object v3, v7

    :goto_9
    move v7, v11

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    move-object v13, v3

    move-object v8, v7

    goto :goto_7

    :pswitch_2
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v3, v13

    move/from16 v4, v21

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-nez v5, :cond_a

    invoke-static {v7, v4, v9}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v4, v9, Lh7b;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->p(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v5

    const/high16 v6, -0x80000000

    and-int v6, v22, v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v5, v3, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v6

    if-ne v5, v6, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_c
    int-to-long v3, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v14, v3}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    move/from16 v4, p4

    move-object v3, v7

    move-object v6, v9

    move v7, v11

    move/from16 v5, v20

    move/from16 v8, v30

    move/from16 v9, v31

    goto/16 :goto_0

    :cond_d
    :goto_a
    invoke-virtual {v3, v2, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v3, v13

    move/from16 v4, v21

    const/4 v6, 0x2

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-ne v5, v6, :cond_a

    invoke-static {v7, v4, v9}, Ln7b;->a([BILh7b;)I

    move-result v1

    iget-object v4, v9, Lh7b;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v3, v13

    move/from16 v4, v21

    const/4 v6, 0x2

    const/16 v17, -0x1

    move-object/from16 v21, v12

    if-ne v5, v6, :cond_e

    move-object v5, v1

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/auth/c;->r(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v2

    move-object v12, v5

    move-object v3, v7

    move-object v6, v9

    move-object/from16 v7, p1

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Ln7b;->k(Ljava/lang/Object;Lcjb;[BIILh7b;)I

    move-result v2

    move-object v8, v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v3

    const v16, 0xfffff

    and-int v3, v3, v16

    int-to-long v3, v3

    invoke-virtual {v12, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v7}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    or-int v1, v31, v23

    move/from16 v4, p4

    move-object v3, v8

    move/from16 v5, v20

    move/from16 v8, v30

    move v9, v1

    move v1, v2

    :goto_b
    move-object v2, v7

    goto/16 :goto_9

    :cond_e
    move-object v8, v7

    move-object v1, v2

    move-object v13, v3

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v7, v2

    move-object v3, v13

    move/from16 v1, v21

    const/4 v6, 0x2

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-ne v5, v6, :cond_22

    and-int v2, v22, v24

    if-eqz v2, :cond_1f

    invoke-static {v8, v1, v9}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v2, v9, Lh7b;->a:I

    if-ltz v2, :cond_1e

    if-nez v2, :cond_f

    iput-object v4, v9, Lh7b;->c:Ljava/lang/Object;

    goto/16 :goto_10

    :cond_f
    sget-object v4, Ldob;->a:Lznb;

    array-length v4, v8

    sub-int v5, v4, v1

    or-int v6, v1, v2

    sub-int/2addr v5, v2

    or-int/2addr v5, v6

    if-ltz v5, :cond_1d

    add-int v4, v1, v2

    new-array v2, v2, [C

    const/4 v5, 0x0

    :goto_c
    if-ge v1, v4, :cond_10

    aget-byte v6, v8, v1

    if-ltz v6, :cond_10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v15, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v15

    goto :goto_c

    :cond_10
    :goto_d
    if-ge v1, v4, :cond_1c

    add-int/lit8 v6, v1, 0x1

    aget-byte v15, v8, v1

    if-ltz v15, :cond_11

    add-int/lit8 v1, v5, 0x1

    int-to-char v15, v15

    aput-char v15, v2, v5

    move v5, v1

    move v1, v6

    :goto_e
    if-ge v1, v4, :cond_10

    aget-byte v6, v8, v1

    if-ltz v6, :cond_10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v15, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v15

    goto :goto_e

    :cond_11
    move/from16 v18, v1

    const/16 v1, -0x20

    if-ge v15, v1, :cond_14

    if-ge v6, v4, :cond_13

    add-int/lit8 v1, v18, 0x2

    aget-byte v6, v8, v6

    add-int/lit8 v18, v5, 0x1

    move/from16 p3, v1

    const/16 v1, -0x3e

    if-lt v15, v1, :cond_12

    invoke-static {v6}, Lj0b;->a(B)Z

    move-result v1

    if-nez v1, :cond_12

    and-int/lit8 v1, v15, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v2, v5

    move/from16 v1, p3

    move/from16 v5, v18

    goto :goto_d

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_14
    const/16 v1, -0x10

    if-ge v15, v1, :cond_19

    add-int/lit8 v1, v4, -0x1

    if-ge v6, v1, :cond_18

    add-int/lit8 v1, v18, 0x2

    aget-byte v6, v8, v6

    add-int/lit8 v18, v18, 0x3

    aget-byte v1, v8, v1

    add-int/lit8 v21, v5, 0x1

    invoke-static {v6}, Lj0b;->a(B)Z

    move-result v22

    if-nez v22, :cond_17

    move/from16 v22, v1

    const/16 v1, -0x60

    move/from16 v24, v4

    const/16 v4, -0x20

    if-ne v15, v4, :cond_15

    if-lt v6, v1, :cond_17

    move v15, v4

    :cond_15
    const/16 v4, -0x13

    if-ne v15, v4, :cond_16

    if-ge v6, v1, :cond_17

    move v15, v4

    :cond_16
    invoke-static/range {v22 .. v22}, Lj0b;->a(B)Z

    move-result v1

    if-nez v1, :cond_17

    and-int/lit8 v1, v15, 0xf

    and-int/lit8 v4, v6, 0x3f

    and-int/lit8 v6, v22, 0x3f

    shl-int/lit8 v1, v1, 0xc

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    or-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v2, v5

    move/from16 v1, v18

    move/from16 v5, v21

    :goto_f
    move/from16 v4, v24

    goto/16 :goto_d

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_19
    move/from16 v24, v4

    add-int/lit8 v4, v24, -0x2

    if-ge v6, v4, :cond_1b

    add-int/lit8 v1, v18, 0x2

    aget-byte v4, v8, v6

    add-int/lit8 v6, v18, 0x3

    aget-byte v1, v8, v1

    add-int/lit8 v18, v18, 0x4

    aget-byte v6, v8, v6

    invoke-static {v4}, Lj0b;->a(B)Z

    move-result v21

    if-nez v21, :cond_1a

    shl-int/lit8 v21, v15, 0x1c

    add-int/lit8 v22, v4, 0x70

    add-int v22, v22, v21

    shr-int/lit8 v21, v22, 0x1e

    if-nez v21, :cond_1a

    invoke-static {v1}, Lj0b;->a(B)Z

    move-result v21

    if-nez v21, :cond_1a

    invoke-static {v6}, Lj0b;->a(B)Z

    move-result v21

    if-nez v21, :cond_1a

    and-int/lit8 v15, v15, 0x7

    and-int/lit8 v4, v4, 0x3f

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v15, v15, 0x12

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v4, v15

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    or-int/2addr v1, v6

    ushr-int/lit8 v4, v1, 0xa

    const v6, 0xd7c0

    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v5

    add-int/lit8 v4, v5, 0x1

    and-int/lit16 v1, v1, 0x3ff

    const v6, 0xdc00

    add-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v2, v4

    add-int/lit8 v5, v5, 0x2

    move/from16 v1, v18

    goto :goto_f

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_1c
    move/from16 v24, v4

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, v9, Lh7b;->c:Ljava/lang/Object;

    move/from16 v1, v24

    goto :goto_10

    :cond_1d
    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v0}, Li8;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {v8, v1, v9}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v2, v9, Lh7b;->a:I

    if-ltz v2, :cond_21

    if-nez v2, :cond_20

    iput-object v4, v9, Lh7b;->c:Ljava/lang/Object;

    goto :goto_10

    :cond_20
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v8, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v9, Lh7b;->c:Ljava/lang/Object;

    add-int/2addr v1, v2

    :goto_10
    invoke-virtual {v3, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_11
    or-int v2, v31, v23

    move/from16 v4, p4

    move-object v3, v8

    move-object v6, v9

    move/from16 v5, v20

    move/from16 v8, v30

    move v9, v2

    goto/16 :goto_b

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_22
    move-object v13, v7

    move v7, v1

    move-object v1, v13

    :goto_12
    move-object v13, v3

    goto/16 :goto_17

    :pswitch_6
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v7, v2

    move-object v3, v13

    move/from16 v1, v21

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-nez v5, :cond_22

    invoke-static {v8, v1, v9}, Ln7b;->i([BILh7b;)I

    move-result v1

    iget-wide v2, v9, Lh7b;->b:J

    cmp-long v2, v2, v25

    if-eqz v2, :cond_23

    move/from16 v3, v29

    goto :goto_13

    :cond_23
    const/4 v3, 0x0

    :goto_13
    sget-object v2, Lpnb;->c:Ldta;

    invoke-virtual {v2, v7, v12, v13, v3}, Ldta;->e(Ljava/lang/Object;JZ)V

    goto :goto_11

    :pswitch_7
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v7, v2

    move-object v3, v13

    move/from16 v1, v21

    const/4 v2, 0x5

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-ne v5, v2, :cond_22

    invoke-static {v1, v8}, Ln7b;->b(I[B)I

    move-result v2

    invoke-virtual {v3, v7, v12, v13, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_11

    :pswitch_8
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v7, v2

    move-object v3, v13

    move/from16 v1, v21

    move/from16 v2, v29

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-wide/from16 v12, v27

    if-ne v5, v2, :cond_24

    invoke-static {v1, v8}, Ln7b;->l(I[B)J

    move-result-wide v5

    move-object v2, v7

    move v7, v1

    move-object v1, v3

    move-wide v3, v12

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v7, 0x8

    :goto_14
    or-int v3, v31, v23

    :goto_15
    move/from16 v4, p4

    move-object v6, v9

    move v7, v11

    move/from16 v5, v20

    move v9, v3

    move-object v3, v8

    goto/16 :goto_6

    :cond_24
    move-object v2, v7

    move v7, v1

    move-object v1, v2

    goto :goto_12

    :pswitch_9
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v1, v13

    move/from16 v7, v21

    move-wide/from16 v3, v27

    const/16 v17, -0x1

    move-object/from16 v21, v12

    if-nez v5, :cond_25

    invoke-static {v8, v7, v9}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v6, v9, Lh7b;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v1, v31, v23

    move/from16 v4, p4

    move-object v3, v8

    move-object v6, v9

    move v7, v11

    move/from16 v8, v30

    move v9, v1

    move v1, v5

    :goto_16
    move/from16 v5, v20

    goto/16 :goto_0

    :cond_25
    move-object v13, v1

    :cond_26
    move-object v1, v2

    goto/16 :goto_17

    :pswitch_a
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v1, v13

    move/from16 v7, v21

    move-wide/from16 v3, v27

    const/16 v17, -0x1

    move-object/from16 v21, v12

    if-nez v5, :cond_25

    invoke-static {v8, v7, v9}, Ln7b;->i([BILh7b;)I

    move-result v7

    iget-wide v5, v9, Lh7b;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v1, v31, v23

    move/from16 v4, p4

    move-object v3, v8

    move-object v6, v9

    move/from16 v5, v20

    move/from16 v8, v30

    move v9, v1

    move v1, v7

    goto/16 :goto_9

    :pswitch_b
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v7, v21

    move-wide/from16 v3, v27

    const/4 v1, 0x5

    const/16 v17, -0x1

    move-object/from16 v21, v12

    if-ne v5, v1, :cond_26

    invoke-static {v7, v8}, Ln7b;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v5, Lpnb;->c:Ldta;

    invoke-virtual {v5, v2, v3, v4, v1}, Ldta;->j(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v7, 0x4

    goto :goto_14

    :pswitch_c
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v7, v21

    move-wide/from16 v3, v27

    move/from16 v1, v29

    const/16 v17, -0x1

    move-object/from16 v21, v12

    if-ne v5, v1, :cond_26

    invoke-static {v7, v8}, Ln7b;->l(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sget-object v1, Lpnb;->c:Ldta;

    invoke-virtual/range {v1 .. v6}, Ldta;->h(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v2, v7, 0x8

    or-int v3, v31, v23

    move v4, v2

    move-object v2, v1

    move v1, v4

    goto/16 :goto_15

    :goto_17
    move-object v3, v8

    move v10, v14

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v8, v30

    move/from16 v22, v31

    move-object v14, v1

    move v1, v7

    move v7, v11

    :goto_18
    move/from16 v11, p5

    goto/16 :goto_5b

    :cond_27
    move/from16 v23, v21

    move-wide/from16 v6, v27

    const/16 v17, -0x1

    move-object/from16 v21, v12

    move-object v12, v1

    move-object v1, v2

    const/16 v2, 0x1b

    const/16 v27, 0xa

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x2

    if-ne v5, v2, :cond_2a

    invoke-virtual {v13, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/auth/zzez;

    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_28

    :goto_19
    move/from16 v3, v27

    goto :goto_1a

    :cond_28
    add-int v27, v3, v3

    goto :goto_19

    :goto_1a
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v2

    invoke-virtual {v13, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29
    move-object v6, v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v14

    move/from16 v4, v23

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v7}, Ln7b;->d(Lcjb;I[BIILcom/google/android/gms/internal/auth/zzez;Lh7b;)I

    move-result v1

    move-object v3, v14

    move v14, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v11

    goto/16 :goto_16

    :cond_2a
    move v2, v14

    move-object v14, v1

    move/from16 v10, p4

    move/from16 v27, v8

    move/from16 v22, v9

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move-object/from16 v11, p6

    move v9, v2

    move-object/from16 v2, p2

    goto/16 :goto_4c

    :cond_2b
    move v2, v14

    move-object v14, v1

    const/16 v1, 0x31

    if-gt v3, v1, :cond_79

    move/from16 v1, v22

    move/from16 v22, v2

    int-to-long v1, v1

    invoke-virtual {v13, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/auth/zzez;

    invoke-interface {v12}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v24

    if-nez v24, :cond_2d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_2c

    :goto_1b
    move-wide/from16 v30, v1

    move/from16 v1, v27

    goto :goto_1c

    :cond_2c
    add-int v27, v24, v24

    goto :goto_1b

    :goto_1c
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v12

    invoke-virtual {v13, v14, v6, v7, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1d

    :cond_2d
    move-wide/from16 v30, v1

    :goto_1d
    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x3

    if-ne v5, v3, :cond_30

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v1

    and-int/lit8 v2, v22, -0x8

    or-int/lit8 v5, v2, 0x4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, v22

    move/from16 v3, v23

    invoke-static/range {v1 .. v6}, Ln7b;->c(Lcjb;[BIIILh7b;)I

    move-result v22

    move-object v2, v1

    iget-object v1, v6, Lh7b;->c:Ljava/lang/Object;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v22

    :goto_1e
    if-ge v1, v4, :cond_2f

    move-object/from16 v22, v2

    move-object/from16 v2, p2

    invoke-static {v2, v1, v6}, Ln7b;->f([BILh7b;)I

    move-result v3

    move/from16 v24, v1

    iget v1, v6, Lh7b;->a:I

    move/from16 v27, v8

    if-ne v7, v1, :cond_2e

    move-object/from16 v1, v22

    move/from16 v8, v23

    invoke-static/range {v1 .. v6}, Ln7b;->c(Lcjb;[BIIILh7b;)I

    move-result v3

    iget-object v1, v6, Lh7b;->c:Ljava/lang/Object;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    move-object/from16 v2, v22

    move/from16 v8, v27

    goto :goto_1e

    :cond_2e
    :goto_1f
    move/from16 v8, v23

    goto :goto_20

    :cond_2f
    move-object/from16 v2, p2

    move/from16 v24, v1

    move/from16 v27, v8

    goto :goto_1f

    :goto_20
    move v10, v4

    move v1, v8

    move/from16 v22, v9

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v4, v24

    move-object v11, v6

    move v9, v7

    goto/16 :goto_49

    :cond_30
    move/from16 v27, v8

    move/from16 v1, v22

    move/from16 v22, v9

    move v9, v1

    move-object/from16 v2, p2

    move/from16 v10, p4

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v23

    move-object/from16 v11, p6

    goto/16 :goto_48

    :pswitch_d
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move/from16 v7, v22

    move/from16 v8, v23

    const/4 v1, 0x2

    if-ne v5, v1, :cond_34

    check-cast v12, Lnfb;

    invoke-static {v2, v8, v6}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v3, v6, Lh7b;->a:I

    add-int/2addr v3, v1

    :goto_21
    if-ge v1, v3, :cond_31

    invoke-static {v2, v1, v6}, Ln7b;->i([BILh7b;)I

    move-result v1

    move/from16 v22, v9

    iget-wide v9, v6, Lh7b;->b:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v9

    invoke-virtual {v12, v9, v10}, Lnfb;->b(J)V

    move/from16 v9, v22

    goto :goto_21

    :cond_31
    move/from16 v22, v9

    if-ne v1, v3, :cond_33

    :cond_32
    :goto_22
    move v10, v4

    move v9, v7

    move-object/from16 v28, v15

    move/from16 v15, v20

    move v4, v1

    move v1, v8

    move v8, v11

    :goto_23
    move-object v11, v6

    goto/16 :goto_49

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_34
    move/from16 v22, v9

    if-nez v5, :cond_35

    check-cast v12, Lnfb;

    invoke-static {v2, v8, v6}, Ln7b;->i([BILh7b;)I

    move-result v1

    iget-wide v9, v6, Lh7b;->b:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v9

    invoke-virtual {v12, v9, v10}, Lnfb;->b(J)V

    :goto_24
    if-ge v1, v4, :cond_32

    invoke-static {v2, v1, v6}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v5, v6, Lh7b;->a:I

    if-ne v7, v5, :cond_32

    invoke-static {v2, v3, v6}, Ln7b;->i([BILh7b;)I

    move-result v1

    iget-wide v9, v6, Lh7b;->b:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v9

    invoke-virtual {v12, v9, v10}, Lnfb;->b(J)V

    goto :goto_24

    :cond_35
    move v10, v4

    move v9, v7

    move v1, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    :goto_25
    move-object v11, v6

    goto/16 :goto_48

    :pswitch_e
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move/from16 v7, v22

    move/from16 v8, v23

    const/4 v1, 0x2

    move/from16 v22, v9

    if-ne v5, v1, :cond_38

    check-cast v12, Lqcb;

    invoke-static {v2, v8, v6}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v3, v6, Lh7b;->a:I

    add-int/2addr v3, v1

    :goto_26
    if-ge v1, v3, :cond_36

    invoke-static {v2, v1, v6}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v5, v6, Lh7b;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v5

    invoke-virtual {v12, v5}, Lqcb;->b(I)V

    goto :goto_26

    :cond_36
    if-ne v1, v3, :cond_37

    goto :goto_22

    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_38
    if-nez v5, :cond_35

    check-cast v12, Lqcb;

    invoke-static {v2, v8, v6}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v3, v6, Lh7b;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lqcb;->b(I)V

    :goto_27
    if-ge v1, v4, :cond_32

    invoke-static {v2, v1, v6}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v5, v6, Lh7b;->a:I

    if-ne v7, v5, :cond_32

    invoke-static {v2, v3, v6}, Ln7b;->f([BILh7b;)I

    move-result v1

    iget v3, v6, Lh7b;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lqcb;->b(I)V

    goto :goto_27

    :pswitch_f
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move/from16 v7, v22

    move/from16 v8, v23

    const/4 v1, 0x2

    move/from16 v22, v9

    if-ne v5, v1, :cond_3b

    move-object v1, v12

    check-cast v1, Lqcb;

    invoke-static {v2, v8, v6}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v5, v6, Lh7b;->a:I

    add-int/2addr v5, v3

    :goto_28
    if-ge v3, v5, :cond_39

    invoke-static {v2, v3, v6}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v9, v6, Lh7b;->a:I

    invoke-virtual {v1, v9}, Lqcb;->b(I)V

    goto :goto_28

    :cond_39
    if-ne v3, v5, :cond_3a

    move v1, v7

    move v7, v3

    move v3, v8

    goto :goto_29

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_3b
    if-nez v5, :cond_45

    move v1, v7

    move v3, v8

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Ln7b;->h(I[BIILcom/google/android/gms/internal/auth/zzez;Lh7b;)I

    move-result v7

    :goto_29
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/auth/c;->p(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v5

    sget-object v8, Lljb;->a:Ljava/lang/Class;

    if-eqz v5, :cond_43

    iget-object v8, v0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    if-eqz v12, :cond_40

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v23, v5

    move-object/from16 v24, v18

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v9, :cond_3f

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v7

    move-object/from16 v7, v25

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v28, v15

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface/range {v23 .. v23}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v25

    if-eqz v25, :cond_3d

    if-eq v10, v5, :cond_3c

    invoke-interface {v12, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    move/from16 v32, v11

    move/from16 v15, v20

    move-object/from16 v7, v24

    move/from16 v24, v10

    goto :goto_2c

    :cond_3d
    if-nez v24, :cond_3e

    invoke-virtual {v8, v14}, Ltlb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v7

    move/from16 v24, v10

    move/from16 v32, v11

    goto :goto_2b

    :cond_3e
    move-object/from16 v7, v24

    move/from16 v32, v11

    move/from16 v24, v10

    :goto_2b
    int-to-long v10, v15

    move/from16 v15, v20

    invoke-virtual {v8, v15, v10, v11, v7}, Ltlb;->d(IJLjava/lang/Object;)V

    :goto_2c
    add-int/lit8 v10, v24, 0x1

    move-object/from16 v24, v7

    move/from16 v20, v15

    move/from16 v7, v26

    move-object/from16 v15, v28

    move/from16 v11, v32

    goto :goto_2a

    :cond_3f
    move/from16 v26, v7

    move/from16 v32, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    if-eq v5, v9, :cond_44

    invoke-interface {v12, v5, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_2e

    :cond_40
    move-object/from16 v23, v5

    move/from16 v26, v7

    move/from16 v32, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v7, v18

    :cond_41
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface/range {v23 .. v23}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v10

    if-nez v10, :cond_41

    if-nez v7, :cond_42

    invoke-virtual {v8, v14}, Ltlb;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v7

    :cond_42
    int-to-long v9, v9

    invoke-virtual {v8, v15, v9, v10, v7}, Ltlb;->d(IJLjava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    :cond_43
    move/from16 v26, v7

    move/from16 v32, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    :cond_44
    :goto_2e
    move v9, v1

    move v1, v3

    move v10, v4

    move-object v11, v6

    move/from16 v4, v26

    :goto_2f
    move/from16 v8, v32

    goto/16 :goto_49

    :cond_45
    move-object/from16 v28, v15

    move/from16 v15, v20

    move v10, v4

    move v9, v7

    move v1, v8

    move v8, v11

    goto/16 :goto_25

    :pswitch_10
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move/from16 v32, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    move/from16 v3, v23

    const/4 v7, 0x2

    move/from16 v22, v9

    if-ne v5, v7, :cond_4d

    invoke-static {v2, v3, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_4c

    array-length v8, v2

    sub-int/2addr v8, v5

    if-gt v7, v8, :cond_4b

    if-nez v7, :cond_46

    sget-object v7, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_46
    invoke-static {v2, v5, v7}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/2addr v5, v7

    :goto_31
    if-ge v5, v4, :cond_4a

    invoke-static {v2, v5, v6}, Ln7b;->f([BILh7b;)I

    move-result v7

    iget v8, v6, Lh7b;->a:I

    if-ne v1, v8, :cond_4a

    invoke-static {v2, v7, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_49

    array-length v8, v2

    sub-int/2addr v8, v5

    if-gt v7, v8, :cond_48

    if-nez v7, :cond_47

    sget-object v7, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_47
    invoke-static {v2, v5, v7}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_4a
    move v9, v1

    move v1, v3

    move v10, v4

    move v4, v5

    move-object v11, v6

    goto :goto_2f

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_4d
    move v9, v1

    move v1, v3

    move v10, v4

    move-object v11, v6

    move/from16 v8, v32

    goto/16 :goto_48

    :pswitch_11
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move/from16 v32, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    move/from16 v3, v23

    const/4 v7, 0x2

    move/from16 v22, v9

    if-ne v5, v7, :cond_4e

    move v7, v1

    move/from16 v8, v32

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v1

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v7

    move-object v7, v6

    move-object v6, v12

    invoke-static/range {v1 .. v7}, Ln7b;->d(Lcjb;I[BIILcom/google/android/gms/internal/auth/zzez;Lh7b;)I

    move-result v1

    move v9, v4

    move v4, v1

    move v1, v2

    move-object v2, v3

    move v10, v9

    move v9, v1

    move v1, v10

    move v10, v5

    move-object v11, v7

    goto/16 :goto_49

    :cond_4e
    move/from16 v8, v32

    move v9, v1

    move v1, v3

    move v10, v4

    goto/16 :goto_25

    :pswitch_12
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    const/4 v7, 0x2

    move/from16 v22, v9

    move/from16 v9, v23

    if-ne v5, v7, :cond_5b

    const-wide/32 v10, 0x20000000

    and-long v10, v30, v10

    cmp-long v5, v10, v25

    if-nez v5, :cond_54

    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_53

    if-nez v7, :cond_4f

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4f
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v5, v7, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32
    add-int/2addr v5, v7

    :goto_33
    if-ge v5, v3, :cond_52

    invoke-static {v2, v5, v6}, Ln7b;->f([BILh7b;)I

    move-result v7

    iget v10, v6, Lh7b;->a:I

    if-ne v1, v10, :cond_52

    invoke-static {v2, v7, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_51

    if-nez v7, :cond_50

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_50
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v2, v5, v7, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_52
    move v4, v9

    move v9, v1

    move v1, v4

    move v10, v3

    move v4, v5

    goto/16 :goto_23

    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_54
    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_5a

    if-nez v7, :cond_55

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_55
    add-int v10, v5, v7

    sget-object v11, Ldob;->a:Lznb;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v10}, Lunb;->a([BII)Z

    move-result v11

    if-eqz v11, :cond_59

    new-instance v11, Ljava/lang/String;

    move/from16 v20, v10

    sget-object v10, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v2, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_34
    move/from16 v5, v20

    :goto_35
    if-ge v5, v3, :cond_52

    invoke-static {v2, v5, v6}, Ln7b;->f([BILh7b;)I

    move-result v7

    iget v10, v6, Lh7b;->a:I

    if-ne v1, v10, :cond_52

    invoke-static {v2, v7, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ltz v7, :cond_58

    if-nez v7, :cond_56

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_56
    add-int v10, v5, v7

    sget-object v11, Ldob;->a:Lznb;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v10}, Lunb;->a([BII)Z

    move-result v11

    if-eqz v11, :cond_57

    new-instance v11, Ljava/lang/String;

    move/from16 v20, v10

    sget-object v10, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v2, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_57
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_5b
    move v10, v9

    move v9, v1

    move v1, v10

    move v10, v3

    goto/16 :goto_25

    :pswitch_13
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    const/4 v7, 0x2

    move/from16 v22, v9

    move/from16 v9, v23

    if-ne v5, v7, :cond_60

    check-cast v12, Lt7b;

    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v6, Lh7b;->a:I

    add-int/2addr v5, v4

    :goto_36
    if-ge v4, v5, :cond_5d

    invoke-static {v2, v4, v6}, Ln7b;->i([BILh7b;)I

    move-result v4

    iget-wide v10, v6, Lh7b;->b:J

    cmp-long v7, v10, v25

    if-eqz v7, :cond_5c

    const/4 v7, 0x1

    goto :goto_37

    :cond_5c
    const/4 v7, 0x0

    :goto_37
    invoke-virtual {v12, v7}, Lt7b;->b(Z)V

    goto :goto_36

    :cond_5d
    if-ne v4, v5, :cond_5f

    :cond_5e
    :goto_38
    move v10, v9

    move v9, v1

    move v1, v10

    move v10, v3

    goto/16 :goto_23

    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_60
    if-nez v5, :cond_5b

    check-cast v12, Lt7b;

    invoke-static {v2, v9, v6}, Ln7b;->i([BILh7b;)I

    move-result v4

    iget-wide v10, v6, Lh7b;->b:J

    cmp-long v5, v10, v25

    if-eqz v5, :cond_61

    const/4 v5, 0x1

    goto :goto_39

    :cond_61
    const/4 v5, 0x0

    :goto_39
    invoke-virtual {v12, v5}, Lt7b;->b(Z)V

    :goto_3a
    if-ge v4, v3, :cond_5e

    invoke-static {v2, v4, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ne v1, v7, :cond_5e

    invoke-static {v2, v5, v6}, Ln7b;->i([BILh7b;)I

    move-result v4

    iget-wide v10, v6, Lh7b;->b:J

    cmp-long v5, v10, v25

    if-eqz v5, :cond_62

    const/4 v5, 0x1

    goto :goto_3b

    :cond_62
    const/4 v5, 0x0

    :goto_3b
    invoke-virtual {v12, v5}, Lt7b;->b(Z)V

    goto :goto_3a

    :pswitch_14
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    const/4 v7, 0x2

    move/from16 v22, v9

    move/from16 v9, v23

    if-ne v5, v7, :cond_65

    check-cast v12, Lqcb;

    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v6, Lh7b;->a:I

    add-int/2addr v5, v4

    :goto_3c
    if-ge v4, v5, :cond_63

    invoke-static {v4, v2}, Ln7b;->b(I[B)I

    move-result v7

    invoke-virtual {v12, v7}, Lqcb;->b(I)V

    add-int/lit8 v4, v4, 0x4

    goto :goto_3c

    :cond_63
    if-ne v4, v5, :cond_64

    goto :goto_38

    :cond_64
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_65
    const/4 v4, 0x5

    if-ne v5, v4, :cond_5b

    check-cast v12, Lqcb;

    invoke-static {v9, v2}, Ln7b;->b(I[B)I

    move-result v4

    invoke-virtual {v12, v4}, Lqcb;->b(I)V

    add-int/lit8 v4, v9, 0x4

    :goto_3d
    if-ge v4, v3, :cond_5e

    invoke-static {v2, v4, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ne v1, v7, :cond_5e

    invoke-static {v5, v2}, Ln7b;->b(I[B)I

    move-result v4

    invoke-virtual {v12, v4}, Lqcb;->b(I)V

    add-int/lit8 v4, v5, 0x4

    goto :goto_3d

    :pswitch_15
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    const/4 v7, 0x2

    move/from16 v22, v9

    move/from16 v9, v23

    if-ne v5, v7, :cond_68

    check-cast v12, Lnfb;

    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v6, Lh7b;->a:I

    add-int/2addr v5, v4

    :goto_3e
    if-ge v4, v5, :cond_66

    invoke-static {v4, v2}, Ln7b;->l(I[B)J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Lnfb;->b(J)V

    add-int/lit8 v4, v4, 0x8

    goto :goto_3e

    :cond_66
    if-ne v4, v5, :cond_67

    goto/16 :goto_38

    :cond_67
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_68
    const/4 v4, 0x1

    if-ne v5, v4, :cond_5b

    check-cast v12, Lnfb;

    invoke-static {v9, v2}, Ln7b;->l(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lnfb;->b(J)V

    add-int/lit8 v4, v9, 0x8

    :goto_3f
    if-ge v4, v3, :cond_5e

    invoke-static {v2, v4, v6}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v7, v6, Lh7b;->a:I

    if-ne v1, v7, :cond_5e

    invoke-static {v5, v2}, Ln7b;->l(I[B)J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Lnfb;->b(J)V

    add-int/lit8 v4, v5, 0x8

    goto :goto_3f

    :pswitch_16
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v22

    const/4 v7, 0x2

    move/from16 v22, v9

    move/from16 v9, v23

    if-ne v5, v7, :cond_6b

    check-cast v12, Lqcb;

    invoke-static {v2, v9, v6}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v6, Lh7b;->a:I

    add-int/2addr v5, v4

    :goto_40
    if-ge v4, v5, :cond_69

    invoke-static {v2, v4, v6}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v7, v6, Lh7b;->a:I

    invoke-virtual {v12, v7}, Lqcb;->b(I)V

    goto :goto_40

    :cond_69
    if-ne v4, v5, :cond_6a

    goto/16 :goto_38

    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_6b
    if-nez v5, :cond_5b

    move v4, v3

    move v3, v9

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Ln7b;->h(I[BIILcom/google/android/gms/internal/auth/zzez;Lh7b;)I

    move-result v5

    move v9, v1

    move v1, v3

    move v10, v4

    move-object v11, v6

    move v4, v5

    goto/16 :goto_49

    :pswitch_17
    move/from16 v1, v22

    move/from16 v22, v9

    move v9, v1

    move-object/from16 v2, p2

    move/from16 v10, p4

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v23

    const/4 v7, 0x2

    move-object/from16 v11, p6

    if-ne v5, v7, :cond_6f

    check-cast v12, Lnfb;

    invoke-static {v2, v1, v11}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v4, v11, Lh7b;->a:I

    add-int/2addr v4, v3

    :goto_41
    if-ge v3, v4, :cond_6c

    invoke-static {v2, v3, v11}, Ln7b;->i([BILh7b;)I

    move-result v3

    iget-wide v5, v11, Lh7b;->b:J

    invoke-virtual {v12, v5, v6}, Lnfb;->b(J)V

    goto :goto_41

    :cond_6c
    if-ne v3, v4, :cond_6e

    :cond_6d
    :goto_42
    move v4, v3

    goto/16 :goto_49

    :cond_6e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_6f
    if-nez v5, :cond_77

    check-cast v12, Lnfb;

    invoke-static {v2, v1, v11}, Ln7b;->i([BILh7b;)I

    move-result v3

    iget-wide v4, v11, Lh7b;->b:J

    invoke-virtual {v12, v4, v5}, Lnfb;->b(J)V

    :goto_43
    if-ge v3, v10, :cond_6d

    invoke-static {v2, v3, v11}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v11, Lh7b;->a:I

    if-ne v9, v5, :cond_6d

    invoke-static {v2, v4, v11}, Ln7b;->i([BILh7b;)I

    move-result v3

    iget-wide v4, v11, Lh7b;->b:J

    invoke-virtual {v12, v4, v5}, Lnfb;->b(J)V

    goto :goto_43

    :pswitch_18
    move/from16 v1, v22

    move/from16 v22, v9

    move v9, v1

    move-object/from16 v2, p2

    move/from16 v10, p4

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v23

    const/4 v7, 0x2

    move-object/from16 v11, p6

    if-ne v5, v7, :cond_72

    check-cast v12, Ltbb;

    invoke-static {v2, v1, v11}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v4, v11, Lh7b;->a:I

    add-int/2addr v4, v3

    :goto_44
    if-ge v3, v4, :cond_70

    invoke-static {v3, v2}, Ln7b;->b(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v12, v5}, Ltbb;->b(F)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_44

    :cond_70
    if-ne v3, v4, :cond_71

    goto :goto_42

    :cond_71
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_72
    const/4 v4, 0x5

    if-ne v5, v4, :cond_77

    check-cast v12, Ltbb;

    invoke-static {v1, v2}, Ln7b;->b(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v12, v3}, Ltbb;->b(F)V

    add-int/lit8 v6, v1, 0x4

    :goto_45
    if-ge v6, v10, :cond_73

    invoke-static {v2, v6, v11}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v4, v11, Lh7b;->a:I

    if-ne v9, v4, :cond_73

    invoke-static {v3, v2}, Ln7b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v12, v4}, Ltbb;->b(F)V

    add-int/lit8 v6, v3, 0x4

    goto :goto_45

    :cond_73
    move v4, v6

    goto/16 :goto_49

    :pswitch_19
    move/from16 v1, v22

    move/from16 v22, v9

    move v9, v1

    move-object/from16 v2, p2

    move/from16 v10, p4

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v1, v23

    const/4 v7, 0x2

    move-object/from16 v11, p6

    if-ne v5, v7, :cond_76

    check-cast v12, Lqab;

    invoke-static {v2, v1, v11}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v4, v11, Lh7b;->a:I

    add-int/2addr v4, v3

    :goto_46
    if-ge v3, v4, :cond_74

    invoke-static {v3, v2}, Ln7b;->l(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lqab;->b(D)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_46

    :cond_74
    if-ne v3, v4, :cond_75

    goto/16 :goto_42

    :cond_75
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_76
    const/4 v4, 0x1

    if-ne v5, v4, :cond_77

    check-cast v12, Lqab;

    invoke-static {v1, v2}, Ln7b;->l(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lqab;->b(D)V

    add-int/lit8 v6, v1, 0x8

    :goto_47
    if-ge v6, v10, :cond_73

    invoke-static {v2, v6, v11}, Ln7b;->f([BILh7b;)I

    move-result v3

    iget v4, v11, Lh7b;->a:I

    if-ne v9, v4, :cond_73

    invoke-static {v3, v2}, Ln7b;->l(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lqab;->b(D)V

    add-int/lit8 v6, v3, 0x8

    goto :goto_47

    :cond_77
    :goto_48
    move v4, v1

    :goto_49
    move-object v3, v2

    if-eq v4, v1, :cond_78

    move v1, v4

    move v7, v8

    move v4, v10

    move-object v6, v11

    move-object v2, v14

    move v5, v15

    move/from16 v8, v27

    move v14, v9

    move/from16 v9, v22

    goto/16 :goto_0

    :cond_78
    move v1, v4

    move v7, v8

    move v10, v9

    move-object v9, v11

    :goto_4a
    move/from16 v8, v27

    goto/16 :goto_18

    :cond_79
    move/from16 v10, p4

    move/from16 v27, v8

    move v8, v11

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v20, v22

    move-object/from16 v11, p6

    move/from16 v22, v9

    move v9, v2

    move-object/from16 v2, p2

    const/16 v1, 0x32

    if-ne v3, v1, :cond_7e

    const/4 v1, 0x2

    if-ne v5, v1, :cond_7d

    const/4 v3, 0x3

    div-int/lit8 v11, v8, 0x3

    add-int/2addr v11, v11

    aget-object v0, v28, v11

    invoke-virtual {v13, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzfr;->zze()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfr;->zza()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzfr;->zzb()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzfr;->zze()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzfr;->zzb()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v3

    goto :goto_4b

    :cond_7a
    move-object v3, v2

    :goto_4b
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/auth/zzfr;->zzd(Lcom/google/android/gms/internal/auth/zzfr;)V

    :cond_7b
    invoke-virtual {v13, v14, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_7c
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfq;

    throw v18

    :cond_7d
    :goto_4c
    move-object v3, v2

    move v7, v8

    move v10, v9

    move-object v9, v11

    move/from16 v1, v23

    goto :goto_4a

    :cond_7e
    add-int/lit8 v30, v8, 0x2

    aget v1, v21, v30

    const v16, 0xfffff

    and-int v1, v1, v16

    int-to-long v1, v1

    packed-switch v3, :pswitch_data_2

    :cond_7f
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    goto/16 :goto_59

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v5, v3, :cond_7f

    invoke-virtual {v0, v15, v8, v14}, Lcom/google/android/gms/internal/auth/c;->s(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v9, -0x8

    or-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v2

    move-object/from16 v3, p2

    move v5, v10

    move-object v7, v11

    move/from16 v4, v23

    invoke-static/range {v1 .. v7}, Ln7b;->j(Ljava/lang/Object;Lcjb;[BIIILh7b;)I

    move-result v2

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v5

    const v16, 0xfffff

    and-int v5, v5, v16

    int-to-long v5, v5

    invoke-virtual {v12, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v21, v30

    and-int v1, v1, v16

    int-to-long v5, v1

    invoke-static {v15, v5, v6, v14}, Lpnb;->f(IJLjava/lang/Object;)V

    move v1, v2

    move/from16 v32, v8

    move v10, v9

    :goto_4d
    move-object v9, v11

    :goto_4e
    move v11, v4

    goto/16 :goto_5a

    :pswitch_1b
    move-object/from16 v3, p2

    move/from16 v4, v23

    if-nez v5, :cond_80

    invoke-static {v3, v4, v11}, Ln7b;->i([BILh7b;)I

    move-result v5

    move/from16 v23, v9

    iget-wide v9, v11, Lh7b;->b:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v14, v6, v7, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4f
    move v1, v5

    move/from16 v32, v8

    move-object v9, v11

    move/from16 v10, v23

    goto :goto_4e

    :cond_80
    move/from16 v32, v8

    move v10, v9

    :goto_50
    move-object v9, v11

    :goto_51
    move v11, v4

    goto/16 :goto_59

    :pswitch_1c
    move-object/from16 v3, p2

    move/from16 v4, v23

    move/from16 v23, v9

    if-nez v5, :cond_81

    invoke-static {v3, v4, v11}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v9, v11, Lh7b;->a:I

    invoke-static {v9}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v14, v6, v7, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :cond_81
    move/from16 v32, v8

    move-object v9, v11

    move/from16 v10, v23

    goto :goto_51

    :pswitch_1d
    move-object/from16 v3, p2

    move/from16 v4, v23

    move/from16 v23, v9

    if-nez v5, :cond_85

    invoke-static {v3, v4, v11}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v9, v11, Lh7b;->a:I

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->p(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v10

    if-eqz v10, :cond_82

    invoke-interface {v10}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v10

    if-eqz v10, :cond_83

    :cond_82
    move/from16 v10, v23

    goto :goto_52

    :cond_83
    move-object v1, v14

    check-cast v1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v6

    if-ne v2, v6, :cond_84

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_84
    int-to-long v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v10, v23

    invoke-virtual {v2, v10, v1}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    goto :goto_53

    :goto_52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v14, v6, v7, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_53
    move v1, v5

    move/from16 v32, v8

    goto/16 :goto_4d

    :cond_85
    move/from16 v10, v23

    :cond_86
    move/from16 v32, v8

    goto :goto_50

    :pswitch_1e
    move-object/from16 v3, p2

    move v10, v9

    move/from16 v4, v23

    const/4 v9, 0x2

    if-ne v5, v9, :cond_86

    invoke-static {v3, v4, v11}, Ln7b;->a([BILh7b;)I

    move-result v5

    iget-object v9, v11, Lh7b;->c:Ljava/lang/Object;

    invoke-virtual {v13, v14, v6, v7, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_53

    :pswitch_1f
    move-object/from16 v3, p2

    move v10, v9

    move/from16 v4, v23

    const/4 v9, 0x2

    if-ne v5, v9, :cond_87

    invoke-virtual {v0, v15, v8, v14}, Lcom/google/android/gms/internal/auth/c;->s(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v2

    move/from16 v5, p4

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ln7b;->k(Ljava/lang/Object;Lcjb;[BIILh7b;)I

    move-result v2

    move v11, v4

    move-object v9, v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v4

    const v16, 0xfffff

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-virtual {v12, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v21, v30

    and-int v1, v1, v16

    int-to-long v4, v1

    invoke-static {v15, v4, v5, v14}, Lpnb;->f(IJLjava/lang/Object;)V

    move v1, v2

    move/from16 v32, v8

    goto/16 :goto_5a

    :cond_87
    move-object v9, v11

    move v11, v4

    :cond_88
    move/from16 v32, v8

    goto/16 :goto_59

    :pswitch_20
    move-object/from16 v3, p2

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    const/4 v12, 0x2

    if-ne v5, v12, :cond_88

    invoke-static {v3, v11, v9}, Ln7b;->f([BILh7b;)I

    move-result v5

    iget v12, v9, Lh7b;->a:I

    if-nez v12, :cond_89

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v32, v8

    goto :goto_55

    :cond_89
    and-int v4, v20, v24

    if-eqz v4, :cond_8b

    add-int v4, v5, v12

    sget-object v20, Ldob;->a:Lznb;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v4}, Lunb;->a([BII)Z

    move-result v4

    if-eqz v4, :cond_8a

    goto :goto_54

    :cond_8a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_8b
    :goto_54
    new-instance v4, Ljava/lang/String;

    move/from16 v32, v8

    sget-object v8, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5, v12, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v5, v12

    :goto_55
    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v5

    goto/16 :goto_5a

    :pswitch_21
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    if-nez v5, :cond_8d

    invoke-static {v3, v11, v9}, Ln7b;->i([BILh7b;)I

    move-result v4

    move v8, v4

    iget-wide v4, v9, Lh7b;->b:J

    cmp-long v4, v4, v25

    if-eqz v4, :cond_8c

    const/16 v29, 0x1

    goto :goto_56

    :cond_8c
    const/16 v29, 0x0

    :goto_56
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_57
    move v1, v8

    goto/16 :goto_5a

    :pswitch_22
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    const/4 v4, 0x5

    if-ne v5, v4, :cond_8d

    invoke-static {v11, v3}, Ln7b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v6, v11, 0x4

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_58
    move v1, v6

    goto/16 :goto_5a

    :pswitch_23
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    const/4 v4, 0x1

    if-ne v5, v4, :cond_8d

    invoke-static {v11, v3}, Ln7b;->l(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v6, v11, 0x8

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_24
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    if-nez v5, :cond_8d

    invoke-static {v3, v11, v9}, Ln7b;->f([BILh7b;)I

    move-result v4

    iget v5, v9, Lh7b;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v4

    goto/16 :goto_5a

    :pswitch_25
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    if-nez v5, :cond_8d

    invoke-static {v3, v11, v9}, Ln7b;->i([BILh7b;)I

    move-result v4

    move v8, v4

    iget-wide v4, v9, Lh7b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_57

    :pswitch_26
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    const/4 v4, 0x5

    if-ne v5, v4, :cond_8d

    invoke-static {v11, v3}, Ln7b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v6, v11, 0x4

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_27
    move-object/from16 v3, p2

    move/from16 v32, v8

    move v10, v9

    move-object v9, v11

    move/from16 v11, v23

    const/4 v4, 0x1

    if-ne v5, v4, :cond_8d

    invoke-static {v11, v3}, Ln7b;->l(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v13, v14, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v6, v11, 0x8

    invoke-virtual {v13, v14, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_58

    :cond_8d
    :goto_59
    move v1, v11

    :goto_5a
    if-eq v1, v11, :cond_8e

    move/from16 v4, p4

    move-object v6, v9

    move-object v2, v14

    move v5, v15

    move/from16 v9, v22

    move/from16 v8, v27

    move/from16 v7, v32

    move v14, v10

    goto/16 :goto_0

    :cond_8e
    move/from16 v11, p5

    move/from16 v8, v27

    move/from16 v7, v32

    :goto_5b
    if-ne v10, v11, :cond_90

    if-nez v11, :cond_8f

    goto :goto_5d

    :cond_8f
    move/from16 v4, p4

    move-object v2, v14

    move v14, v10

    move/from16 v9, v22

    :goto_5c
    const v7, 0xfffff

    goto :goto_5e

    :cond_90
    :goto_5d
    move-object v2, v14

    check-cast v2, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v4, v2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v5

    if-ne v4, v5, :cond_91

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_91
    move-object v2, v3

    move-object v5, v4

    move-object v6, v9

    move/from16 v4, p4

    move v3, v1

    move v1, v10

    invoke-static/range {v1 .. v6}, Ln7b;->e(I[BIILcom/google/android/gms/internal/auth/zzha;Lh7b;)I

    move-result v3

    move-object/from16 v6, p6

    move-object v2, v14

    move v5, v15

    move/from16 v9, v22

    move v14, v1

    move v1, v3

    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_92
    move/from16 v11, p5

    move/from16 v27, v8

    move/from16 v22, v9

    move-object/from16 v21, v12

    move-object/from16 v28, v15

    goto :goto_5c

    :goto_5e
    if-eq v8, v7, :cond_93

    int-to-long v5, v8

    invoke-virtual {v13, v2, v5, v6, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_93
    iget v3, v0, Lcom/google/android/gms/internal/auth/c;->g:I

    :goto_5f
    iget v5, v0, Lcom/google/android/gms/internal/auth/c;->h:I

    if-ge v3, v5, :cond_96

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/c;->f:[I

    aget v5, v5, v3

    aget v6, v21, v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v6

    const v16, 0xfffff

    and-int v6, v6, v16

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lpnb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_94

    goto :goto_60

    :cond_94
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/auth/c;->p(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v7

    if-nez v7, :cond_95

    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_95
    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    const/4 v3, 0x3

    div-int/2addr v5, v3

    add-int/2addr v5, v5

    aget-object v0, v28, v5

    check-cast v0, Lcom/google/android/gms/internal/auth/zzfq;

    throw v18

    :cond_96
    const-string v0, "Failed to parse the message."

    if-nez v11, :cond_98

    if-ne v1, v4, :cond_97

    goto :goto_61

    :cond_97
    new-instance v1, Lcom/google/android/gms/internal/auth/zzfb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    if-gt v1, v4, :cond_99

    if-ne v14, v11, :cond_99

    :goto_61
    return v1

    :cond_99
    new-instance v1, Lcom/google/android/gms/internal/auth/zzfb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final m(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final o(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/auth/zzey;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzey;

    return-object p0
.end method

.method public final q(I)Lcjb;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcjb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lqib;->c:Lqib;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lqib;->a(Ljava/lang/Class;)Lcjb;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final r(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final s(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final u(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/c;->w(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget p0, p0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final v(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    sget-object v2, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v6}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, p2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0, v6}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p1, p1, 0x2

    aget p0, v0, p1

    and-int/2addr p0, v3

    int-to-long p0, p0

    invoke-static {v1, p0, p1, p2}, Lpnb;->f(IJLjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcjb;->zzd()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v6}, Lcjb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final w(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {p2, v0, v1}, Lpnb;->a(Ljava/lang/Object;J)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lpnb;->f(IJLjava/lang/Object;)V

    return-void
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->e:Lcom/google/android/gms/internal/auth/zzfx;

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/c;->h(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzev;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->f()V

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzdq;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/c;->a:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/c;->o(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/c;->n(I)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x9

    sget-object v7, Lcom/google/android/gms/internal/auth/c;->l:Lsun/misc/Unsafe;

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/zzfr;->zzc()V

    invoke-virtual {v7, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/gms/internal/auth/c;->i:Ljfb;

    invoke-virtual {v3, p1, v4, v5}, Ljfb;->a(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    aget v3, v0, v1

    invoke-virtual {p0, v3, v1, p1}, Lcom/google/android/gms/internal/auth/c;->i(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcjb;->zze(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/auth/c;->g(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/c;->q(I)Lcjb;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcjb;->zze(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/c;->j:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->e(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
