.class public final Lyads/d83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# static fields
.field public static final q:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lyads/k06;

.field public final c:Lyads/s56;

.field public final d:Lyads/os4;

.field public final e:Lyads/md4;

.field public final f:[Z

.field public final g:Lyads/c83;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lyads/d83;->q:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lyads/s56;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/d83;->c:Lyads/s56;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lyads/d83;->f:[Z

    new-instance v0, Lyads/c83;

    invoke-direct {v0}, Lyads/c83;-><init>()V

    iput-object v0, p0, Lyads/d83;->g:Lyads/c83;

    if-eqz p1, :cond_0

    new-instance p1, Lyads/md4;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/d83;->e:Lyads/md4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/d83;->d:Lyads/os4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/d83;->e:Lyads/md4;

    iput-object p1, p0, Lyads/d83;->d:Lyads/os4;

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/d83;->l:J

    iput-wide v0, p0, Lyads/d83;->n:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 561
    iget-object v0, p0, Lyads/d83;->f:[Z

    invoke-static {v0}, Lyads/qd4;->a([Z)V

    .line 562
    iget-object v0, p0, Lyads/d83;->g:Lyads/c83;

    const/4 v1, 0x0

    .line 563
    iput-boolean v1, v0, Lyads/c83;->a:Z

    .line 564
    iput v1, v0, Lyads/c83;->b:I

    .line 565
    iput v1, v0, Lyads/c83;->c:I

    .line 566
    iget-object v0, p0, Lyads/d83;->e:Lyads/md4;

    if-eqz v0, :cond_0

    .line 567
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 568
    iput-boolean v1, v0, Lyads/md4;->c:Z

    :cond_0
    const-wide/16 v2, 0x0

    .line 569
    iput-wide v2, p0, Lyads/d83;->h:J

    .line 570
    iput-boolean v1, p0, Lyads/d83;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 571
    iput-wide v0, p0, Lyads/d83;->l:J

    .line 572
    iput-wide v0, p0, Lyads/d83;->n:J

    return-void
.end method

.method public final a(IJ)V
    .locals 0

    .line 560
    iput-wide p2, p0, Lyads/d83;->l:J

    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/d83;->b:Lyads/k06;

    if-eqz v2, :cond_1b

    iget v3, v1, Lyads/os4;->b:I

    iget v4, v1, Lyads/os4;->c:I

    iget-object v5, v1, Lyads/os4;->a:[B

    iget-wide v6, v0, Lyads/d83;->h:J

    sub-int v8, v4, v3

    int-to-long v9, v8

    add-long/2addr v6, v9

    iput-wide v6, v0, Lyads/d83;->h:J

    invoke-interface {v2, v8, v1}, Lyads/k06;->a(ILyads/os4;)V

    :goto_0
    iget-object v2, v0, Lyads/d83;->f:[Z

    invoke-static {v5, v3, v4, v2}, Lyads/qd4;->a([BII[Z)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-boolean v1, v0, Lyads/d83;->j:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lyads/d83;->g:Lyads/c83;

    invoke-virtual {v1, v5, v3, v4}, Lyads/c83;->a([BII)V

    :cond_0
    iget-object v0, v0, Lyads/d83;->e:Lyads/md4;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5, v3, v4}, Lyads/md4;->a([BII)V

    :cond_1
    return-void

    :cond_2
    iget-object v6, v1, Lyads/os4;->a:[B

    add-int/lit8 v7, v2, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v2, v3

    iget-boolean v9, v0, Lyads/d83;->j:Z

    const/4 v13, 0x0

    if-nez v9, :cond_d

    if-lez v8, :cond_3

    iget-object v9, v0, Lyads/d83;->g:Lyads/c83;

    invoke-virtual {v9, v5, v3, v2}, Lyads/c83;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    move v9, v13

    :goto_1
    iget-object v15, v0, Lyads/d83;->g:Lyads/c83;

    const/16 v16, 0x9

    iget-boolean v11, v15, Lyads/c83;->a:Z

    if-eqz v11, :cond_b

    iget v11, v15, Lyads/c83;->b:I

    sub-int/2addr v11, v9

    iput v11, v15, Lyads/c83;->b:I

    iget v9, v15, Lyads/c83;->c:I

    if-nez v9, :cond_5

    const/16 v9, 0xb5

    if-ne v6, v9, :cond_5

    iput v11, v15, Lyads/c83;->c:I

    goto/16 :goto_5

    :cond_5
    iput-boolean v13, v15, Lyads/c83;->a:Z

    iget-object v9, v0, Lyads/d83;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v15, Lyads/c83;->d:[B

    iget v13, v15, Lyads/c83;->b:I

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const/4 v13, 0x4

    aget-byte v10, v11, v13

    and-int/lit16 v10, v10, 0xff

    const/16 v18, 0x5

    const/16 v19, 0x1

    aget-byte v14, v11, v18

    move/from16 v20, v13

    and-int/lit16 v13, v14, 0xff

    const/16 v21, 0x6

    aget-byte v12, v11, v21

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v10, v10, 0x4

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v10, v13

    and-int/lit8 v13, v14, 0xf

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    const/16 v21, 0x7

    aget-byte v13, v11, v21

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    const/4 v14, 0x3

    if-eq v13, v14, :cond_7

    move/from16 v14, v20

    if-eq v13, v14, :cond_6

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    mul-int/lit8 v13, v12, 0x79

    int-to-float v13, v13

    mul-int/lit8 v14, v10, 0x64

    :goto_2
    int-to-float v14, v14

    div-float/2addr v13, v14

    goto :goto_3

    :cond_7
    mul-int/lit8 v13, v12, 0x10

    int-to-float v13, v13

    mul-int/lit8 v14, v10, 0x9

    goto :goto_2

    :cond_8
    mul-int/lit8 v13, v12, 0x4

    int-to-float v13, v13

    mul-int/lit8 v14, v10, 0x3

    goto :goto_2

    :goto_3
    new-instance v14, Lyads/uz2;

    invoke-direct {v14}, Lyads/uz2;-><init>()V

    iput-object v9, v14, Lyads/uz2;->a:Ljava/lang/String;

    const-string v9, "video/mpeg2"

    iput-object v9, v14, Lyads/uz2;->k:Ljava/lang/String;

    iput v10, v14, Lyads/uz2;->p:I

    iput v12, v14, Lyads/uz2;->q:I

    iput v13, v14, Lyads/uz2;->t:F

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v14, Lyads/uz2;->m:Ljava/util/List;

    new-instance v9, Lyads/vz2;

    invoke-direct {v9, v14}, Lyads/vz2;-><init>(Lyads/uz2;)V

    aget-byte v10, v11, v21

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_a

    sget-object v12, Lyads/d83;->q:[D

    const/16 v13, 0x8

    if-ge v10, v13, :cond_a

    aget-wide v13, v12, v10

    iget v10, v15, Lyads/c83;->c:I

    add-int/lit8 v10, v10, 0x9

    aget-byte v10, v11, v10

    and-int/lit8 v11, v10, 0x60

    shr-int/lit8 v11, v11, 0x5

    and-int/lit8 v10, v10, 0x1f

    if-eq v11, v10, :cond_9

    int-to-double v11, v11

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v20

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v20, v11

    int-to-double v10, v10

    div-double v11, v20, v10

    mul-double/2addr v13, v11

    :cond_9
    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v13

    double-to-long v10, v10

    goto :goto_4

    :cond_a
    const-wide/16 v10, 0x0

    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    iget-object v10, v0, Lyads/d83;->b:Lyads/k06;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lyads/vz2;

    invoke-interface {v10, v11}, Lyads/k06;->a(Lyads/vz2;)V

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lyads/d83;->k:J

    move/from16 v9, v19

    iput-boolean v9, v0, Lyads/d83;->j:Z

    goto :goto_6

    :cond_b
    const/4 v9, 0x1

    const/16 v10, 0xb3

    if-ne v6, v10, :cond_c

    iput-boolean v9, v15, Lyads/c83;->a:Z

    :cond_c
    :goto_5
    sget-object v9, Lyads/c83;->e:[B

    const/4 v10, 0x0

    const/4 v14, 0x3

    invoke-virtual {v15, v9, v10, v14}, Lyads/c83;->a([BII)V

    goto :goto_6

    :cond_d
    const/16 v16, 0x9

    :goto_6
    iget-object v9, v0, Lyads/d83;->e:Lyads/md4;

    if-eqz v9, :cond_11

    if-lez v8, :cond_e

    invoke-virtual {v9, v5, v3, v2}, Lyads/md4;->a([BII)V

    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    neg-int v3, v8

    :goto_7
    iget-object v8, v0, Lyads/d83;->e:Lyads/md4;

    invoke-virtual {v8, v3}, Lyads/md4;->a(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lyads/d83;->e:Lyads/md4;

    iget-object v8, v3, Lyads/md4;->d:[B

    iget v3, v3, Lyads/md4;->e:I

    invoke-static {v8, v3}, Lyads/qd4;->a([BI)I

    move-result v3

    iget-object v8, v0, Lyads/d83;->d:Lyads/os4;

    sget v9, Lyads/u56;->a:I

    iget-object v9, v0, Lyads/d83;->e:Lyads/md4;

    iget-object v9, v9, Lyads/md4;->d:[B

    iput-object v9, v8, Lyads/os4;->a:[B

    iput v3, v8, Lyads/os4;->c:I

    const/4 v10, 0x0

    iput v10, v8, Lyads/os4;->b:I

    iget-object v3, v0, Lyads/d83;->c:Lyads/s56;

    iget-wide v9, v0, Lyads/d83;->n:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v8, Lyads/os4;->c:I

    iget v12, v8, Lyads/os4;->b:I

    sub-int/2addr v11, v12

    move/from16 v12, v16

    if-ge v11, v12, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v11

    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v12

    invoke-virtual {v8}, Lyads/os4;->k()I

    move-result v13

    const/16 v14, 0x1b2

    if-ne v11, v14, :cond_10

    const v11, 0x47413934

    if-ne v12, v11, :cond_10

    const/4 v14, 0x3

    if-ne v13, v14, :cond_10

    iget-object v3, v3, Lyads/s56;->b:[Lyads/k06;

    invoke-static {v9, v10, v8, v3}, Lyads/ry;->b(JLyads/os4;[Lyads/k06;)V

    :cond_10
    :goto_8
    const/16 v3, 0xb2

    if-ne v6, v3, :cond_11

    iget-object v3, v1, Lyads/os4;->a:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v3, v3, v8

    const/4 v9, 0x1

    if-ne v3, v9, :cond_11

    iget-object v3, v0, Lyads/d83;->e:Lyads/md4;

    invoke-virtual {v3, v6}, Lyads/md4;->b(I)V

    :cond_11
    if-eqz v6, :cond_13

    const/16 v10, 0xb3

    if-ne v6, v10, :cond_12

    goto :goto_9

    :cond_12
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_1a

    const/4 v9, 0x1

    iput-boolean v9, v0, Lyads/d83;->o:Z

    goto/16 :goto_f

    :cond_13
    :goto_9
    sub-int v15, v4, v2

    iget-boolean v2, v0, Lyads/d83;->p:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lyads/d83;->j:Z

    if-eqz v2, :cond_14

    iget-wide v11, v0, Lyads/d83;->n:J

    cmp-long v2, v11, v8

    if-eqz v2, :cond_14

    iget-boolean v13, v0, Lyads/d83;->o:Z

    iget-wide v2, v0, Lyads/d83;->h:J

    move-wide/from16 v17, v8

    iget-wide v8, v0, Lyads/d83;->m:J

    sub-long/2addr v2, v8

    long-to-int v2, v2

    sub-int v14, v2, v15

    iget-object v10, v0, Lyads/d83;->b:Lyads/k06;

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lyads/k06;->a(JIIILyads/j06;)V

    goto :goto_a

    :cond_14
    move-wide/from16 v17, v8

    :goto_a
    iget-boolean v2, v0, Lyads/d83;->i:Z

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lyads/d83;->p:Z

    if-eqz v2, :cond_15

    goto :goto_b

    :cond_15
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_d

    :cond_16
    :goto_b
    iget-wide v2, v0, Lyads/d83;->h:J

    int-to-long v8, v15

    sub-long/2addr v2, v8

    iput-wide v2, v0, Lyads/d83;->m:J

    iget-wide v2, v0, Lyads/d83;->l:J

    cmp-long v8, v2, v17

    if-eqz v8, :cond_17

    goto :goto_c

    :cond_17
    iget-wide v2, v0, Lyads/d83;->n:J

    cmp-long v8, v2, v17

    if-eqz v8, :cond_18

    iget-wide v8, v0, Lyads/d83;->k:J

    add-long/2addr v2, v8

    goto :goto_c

    :cond_18
    move-wide/from16 v2, v17

    :goto_c
    iput-wide v2, v0, Lyads/d83;->n:J

    const/4 v10, 0x0

    iput-boolean v10, v0, Lyads/d83;->o:Z

    move-wide/from16 v2, v17

    iput-wide v2, v0, Lyads/d83;->l:J

    const/4 v9, 0x1

    iput-boolean v9, v0, Lyads/d83;->i:Z

    :goto_d
    if-nez v6, :cond_19

    move v13, v9

    goto :goto_e

    :cond_19
    move v13, v10

    :goto_e
    iput-boolean v13, v0, Lyads/d83;->p:Z

    :cond_1a
    :goto_f
    move v3, v7

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 551
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 552
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 553
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 554
    iput-object v0, p0, Lyads/d83;->a:Ljava/lang/String;

    .line 555
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 556
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x2

    .line 557
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/d83;->b:Lyads/k06;

    .line 558
    iget-object p0, p0, Lyads/d83;->c:Lyads/s56;

    if-eqz p0, :cond_0

    .line 559
    invoke-virtual {p0, p1, p2}, Lyads/s56;->a(Lyads/zs2;Lyads/t26;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
