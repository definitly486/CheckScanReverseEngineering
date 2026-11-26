.class public final Lyads/kq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/os4;

.field public b:Lyads/zs2;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lyads/ta4;

.field public h:Lyads/wk0;

.field public i:Lyads/lq5;

.field public j:Lyads/wa4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/os4;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/kq3;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lyads/kq3;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_1c

    if-eq v3, v8, :cond_1b

    if-eq v3, v5, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lud;->g()V

    return v9

    :cond_1
    iget-object v3, v0, Lyads/kq3;->i:Lyads/lq5;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lyads/kq3;->h:Lyads/wk0;

    if-eq v1, v3, :cond_3

    :cond_2
    check-cast v1, Lyads/wk0;

    iput-object v1, v0, Lyads/kq3;->h:Lyads/wk0;

    new-instance v3, Lyads/lq5;

    iget-wide v4, v0, Lyads/kq3;->f:J

    invoke-direct {v3, v1, v4, v5}, Lyads/lq5;-><init>(Lyads/wk0;J)V

    iput-object v3, v0, Lyads/kq3;->i:Lyads/lq5;

    :cond_3
    iget-object v1, v0, Lyads/kq3;->j:Lyads/wa4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lyads/kq3;->i:Lyads/lq5;

    invoke-virtual {v1, v3, v2}, Lyads/wa4;->a(Lyads/xs2;Lyads/qx4;)I

    move-result v1

    if-ne v1, v8, :cond_4

    iget-wide v3, v2, Lyads/qx4;->a:J

    iget-wide v5, v0, Lyads/kq3;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lyads/qx4;->a:J

    :cond_4
    return v1

    :cond_5
    check-cast v1, Lyads/wk0;

    iget-wide v6, v1, Lyads/wk0;->d:J

    iget-wide v10, v0, Lyads/kq3;->f:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_6

    iput-wide v10, v2, Lyads/qx4;->a:J

    return v8

    :cond_6
    iget-object v2, v0, Lyads/kq3;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    invoke-virtual {v1, v2, v9, v8, v8}, Lyads/wk0;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lyads/kq3;->a()V

    goto :goto_0

    :cond_7
    iput v9, v1, Lyads/wk0;->f:I

    iget-object v2, v0, Lyads/kq3;->j:Lyads/wa4;

    if-nez v2, :cond_8

    new-instance v2, Lyads/wa4;

    invoke-direct {v2}, Lyads/wa4;-><init>()V

    iput-object v2, v0, Lyads/kq3;->j:Lyads/wa4;

    :cond_8
    new-instance v2, Lyads/lq5;

    iget-wide v6, v0, Lyads/kq3;->f:J

    invoke-direct {v2, v1, v6, v7}, Lyads/lq5;-><init>(Lyads/wk0;J)V

    iput-object v2, v0, Lyads/kq3;->i:Lyads/lq5;

    iget-object v1, v0, Lyads/kq3;->j:Lyads/wa4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9, v9}, Lyads/fo5;->a(Lyads/xs2;ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lyads/kq3;->j:Lyads/wa4;

    new-instance v2, Lyads/nq5;

    iget-wide v6, v0, Lyads/kq3;->f:J

    iget-object v3, v0, Lyads/kq3;->b:Lyads/zs2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v6, v7, v3}, Lyads/nq5;-><init>(JLyads/zs2;)V

    iput-object v2, v1, Lyads/wa4;->q:Lyads/zs2;

    iget-object v1, v0, Lyads/kq3;->g:Lyads/ta4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v8, [Lyads/g84;

    aput-object v1, v2, v9

    iget-object v1, v0, Lyads/kq3;->b:Lyads/zs2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v1, v3, v4}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v1

    new-instance v3, Lyads/uz2;

    invoke-direct {v3}, Lyads/uz2;-><init>()V

    const-string v4, "image/jpeg"

    iput-object v4, v3, Lyads/uz2;->j:Ljava/lang/String;

    new-instance v4, Lyads/h84;

    invoke-direct {v4, v2}, Lyads/h84;-><init>([Lyads/g84;)V

    iput-object v4, v3, Lyads/uz2;->i:Lyads/h84;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v3}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v1, v2}, Lyads/k06;->a(Lyads/vz2;)V

    iput v5, v0, Lyads/kq3;->c:I

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lyads/kq3;->a()V

    :goto_0
    return v9

    :cond_a
    iget v2, v0, Lyads/kq3;->d:I

    iget v3, v0, Lyads/kq3;->e:I

    const v4, 0xffe1

    if-ne v2, v4, :cond_19

    new-array v2, v3, [B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v2, v9, v3, v9}, Lyads/wk0;->a([BIIZ)Z

    iget-object v4, v0, Lyads/kq3;->g:Lyads/ta4;

    if-nez v4, :cond_1a

    move v10, v9

    if-nez v3, :cond_b

    const/4 v11, 0x0

    goto :goto_2

    :cond_b
    :goto_1
    if-ge v10, v3, :cond_c

    aget-byte v11, v2, v10

    if-eqz v11, :cond_c

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_c
    invoke-static {v2, v9, v10}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v11

    if-ge v10, v3, :cond_d

    add-int/lit8 v10, v10, 0x1

    :cond_d
    :goto_2
    const-string v12, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    sub-int v11, v3, v10

    if-nez v11, :cond_e

    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    move v11, v10

    :goto_3
    if-ge v11, v3, :cond_f

    aget-byte v12, v2, v11

    if-eqz v12, :cond_f

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_f
    sub-int/2addr v11, v10

    invoke-static {v2, v10, v11}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_1a

    iget-wide v10, v1, Lyads/wk0;->c:J

    cmp-long v1, v10, v6

    if-nez v1, :cond_10

    goto/16 :goto_9

    :cond_10
    :try_start_0
    invoke-static {v2}, Lyads/bm6;->a(Ljava/lang/String;)Lyads/ra4;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_11

    goto/16 :goto_9

    :cond_11
    iget-object v2, v1, Lyads/ra4;->b:Lyads/k55;

    iget v2, v2, Lyads/k55;->e:I

    if-ge v2, v5, :cond_12

    goto/16 :goto_9

    :cond_12
    sub-int/2addr v2, v8

    move-wide v13, v6

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    move v3, v9

    :goto_6
    if-ltz v2, :cond_16

    iget-object v5, v1, Lyads/ra4;->b:Lyads/k55;

    invoke-virtual {v5, v2}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/qa4;

    iget-object v8, v5, Lyads/qa4;->a:Ljava/lang/String;

    const-string v12, "video/mp4"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    if-nez v2, :cond_13

    iget-wide v4, v5, Lyads/qa4;->c:J

    sub-long/2addr v10, v4

    const-wide/16 v4, 0x0

    :goto_7
    move-wide/from16 v23, v10

    move-wide v10, v4

    move-wide/from16 v4, v23

    goto :goto_8

    :cond_13
    iget-wide v4, v5, Lyads/qa4;->b:J

    sub-long v4, v10, v4

    goto :goto_7

    :goto_8
    if-eqz v3, :cond_14

    cmp-long v8, v10, v4

    if-eqz v8, :cond_14

    sub-long v21, v4, v10

    move v3, v9

    move-wide/from16 v19, v10

    :cond_14
    if-nez v2, :cond_15

    move-wide v15, v4

    move-wide v13, v10

    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_16
    cmp-long v2, v19, v6

    if-eqz v2, :cond_18

    cmp-long v2, v21, v6

    if-eqz v2, :cond_18

    cmp-long v2, v13, v6

    if-eqz v2, :cond_18

    cmp-long v2, v15, v6

    if-nez v2, :cond_17

    goto :goto_9

    :cond_17
    new-instance v12, Lyads/ta4;

    iget-wide v1, v1, Lyads/ra4;->a:J

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Lyads/ta4;-><init>(JJJJJ)V

    move-object v4, v12

    goto :goto_a

    :cond_18
    :goto_9
    const/4 v4, 0x0

    :goto_a
    iput-object v4, v0, Lyads/kq3;->g:Lyads/ta4;

    if-eqz v4, :cond_1a

    iget-wide v1, v4, Lyads/ta4;->e:J

    iput-wide v1, v0, Lyads/kq3;->f:J

    goto :goto_b

    :cond_19
    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v3}, Lyads/wk0;->a(I)V

    :cond_1a
    :goto_b
    iput v9, v0, Lyads/kq3;->c:I

    return v9

    :cond_1b
    iget-object v2, v0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v2, v5}, Lyads/os4;->c(I)V

    iget-object v2, v0, Lyads/kq3;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v2, v9, v5, v9}, Lyads/wk0;->a([BIIZ)Z

    iget-object v1, v0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->p()I

    move-result v1

    sub-int/2addr v1, v5

    iput v1, v0, Lyads/kq3;->e:I

    iput v5, v0, Lyads/kq3;->c:I

    return v9

    :cond_1c
    iget-object v2, v0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v2, v5}, Lyads/os4;->c(I)V

    iget-object v2, v0, Lyads/kq3;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v2, v9, v5, v9}, Lyads/wk0;->a([BIIZ)Z

    iget-object v1, v0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->p()I

    move-result v1

    iput v1, v0, Lyads/kq3;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1e

    iget-wide v1, v0, Lyads/kq3;->f:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1d

    iput v4, v0, Lyads/kq3;->c:I

    goto :goto_c

    :cond_1d
    invoke-virtual {v0}, Lyads/kq3;->a()V

    goto :goto_c

    :cond_1e
    const v2, 0xffd0

    if-lt v1, v2, :cond_1f

    const v2, 0xffd9

    if-le v1, v2, :cond_20

    :cond_1f
    const v2, 0xff01

    if-eq v1, v2, :cond_20

    iput v8, v0, Lyads/kq3;->c:I

    :cond_20
    :goto_c
    return v9
.end method

.method public final a()V
    .locals 6

    const/4 v0, 0x0

    .line 539
    new-array v0, v0, [Lyads/g84;

    .line 540
    iget-object v1, p0, Lyads/kq3;->b:Lyads/zs2;

    .line 541
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x400

    const/4 v3, 0x4

    .line 542
    invoke-interface {v1, v2, v3}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v1

    .line 543
    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    const-string v3, "image/jpeg"

    .line 544
    iput-object v3, v2, Lyads/uz2;->j:Ljava/lang/String;

    .line 545
    new-instance v3, Lyads/h84;

    invoke-direct {v3, v0}, Lyads/h84;-><init>([Lyads/g84;)V

    .line 546
    iput-object v3, v2, Lyads/uz2;->i:Lyads/h84;

    .line 547
    new-instance v0, Lyads/vz2;

    invoke-direct {v0, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 548
    invoke-interface {v1, v0}, Lyads/k06;->a(Lyads/vz2;)V

    .line 549
    iget-object v0, p0, Lyads/kq3;->b:Lyads/zs2;

    .line 550
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    invoke-interface {v0}, Lyads/zs2;->a()V

    .line 552
    iget-object v0, p0, Lyads/kq3;->b:Lyads/zs2;

    new-instance v1, Lyads/rh5;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 553
    invoke-direct {v1, v2, v3, v4, v5}, Lyads/rh5;-><init>(JJ)V

    .line 554
    invoke-interface {v0, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    const/4 v0, 0x6

    .line 555
    iput v0, p0, Lyads/kq3;->c:I

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 533
    iput p1, p0, Lyads/kq3;->c:I

    const/4 p1, 0x0

    .line 534
    iput-object p1, p0, Lyads/kq3;->j:Lyads/wa4;

    return-void

    .line 535
    :cond_0
    iget v0, p0, Lyads/kq3;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 536
    iget-object p0, p0, Lyads/kq3;->j:Lyads/wa4;

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/wa4;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lyads/kq3;->b:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 5

    .line 503
    check-cast p1, Lyads/wk0;

    .line 504
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lyads/os4;->c(I)V

    .line 505
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    .line 506
    iget-object v0, v0, Lyads/os4;->a:[B

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 508
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    const v3, 0xffd8

    if-eq v0, v3, :cond_0

    return v2

    .line 509
    :cond_0
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->c(I)V

    .line 510
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    .line 511
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 512
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 513
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    .line 514
    iput v0, p0, Lyads/kq3;->d:I

    const v3, 0xffe0

    if-ne v0, v3, :cond_1

    .line 515
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->c(I)V

    .line 516
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    .line 517
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 518
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 519
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    sub-int/2addr v0, v1

    .line 520
    invoke-virtual {p1, v0, v2}, Lyads/wk0;->a(IZ)Z

    .line 521
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->c(I)V

    .line 522
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    .line 523
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 524
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 525
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    .line 526
    iput v0, p0, Lyads/kq3;->d:I

    :cond_1
    const v3, 0xffe1

    if-eq v0, v3, :cond_2

    return v2

    .line 527
    :cond_2
    invoke-virtual {p1, v1, v2}, Lyads/wk0;->a(IZ)Z

    .line 528
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lyads/os4;->c(I)V

    .line 529
    iget-object v0, p0, Lyads/kq3;->a:Lyads/os4;

    .line 530
    iget-object v0, v0, Lyads/os4;->a:[B

    .line 531
    invoke-virtual {p1, v0, v2, v1, v2}, Lyads/wk0;->b([BIIZ)Z

    .line 532
    iget-object p1, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {p1}, Lyads/os4;->l()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    iget-object p0, p0, Lyads/kq3;->a:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public final release()V
    .locals 0

    return-void
.end method
