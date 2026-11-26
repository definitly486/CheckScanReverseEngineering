.class public final Lyads/t00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/y04;


# instance fields
.field public final b:Lyads/z04;

.field public c:Lyads/y04;

.field public d:[Lyads/s00;

.field public e:J

.field public f:J

.field public g:J

.field public h:Lyads/v00;


# direct methods
.method public constructor <init>(Lyads/z04;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/t00;->b:Lyads/z04;

    const/4 p1, 0x0

    new-array p1, p1, [Lyads/s00;

    iput-object p1, p0, Lyads/t00;->d:[Lyads/s00;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lyads/t00;->e:J

    iput-wide p3, p0, Lyads/t00;->f:J

    iput-wide p5, p0, Lyads/t00;->g:J

    return-void
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 10

    .line 395
    iget-wide v0, p0, Lyads/t00;->f:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 396
    :cond_0
    iget-wide v2, p3, Lyads/th5;->a:J

    sub-long v0, p1, v0

    .line 397
    sget v4, Lyads/u56;->a:I

    .line 398
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 399
    iget-wide v4, p3, Lyads/th5;->b:J

    .line 400
    iget-wide v6, p0, Lyads/t00;->g:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    sub-long/2addr v6, p1

    .line 401
    :goto_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 402
    iget-wide v4, p3, Lyads/th5;->a:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Lyads/th5;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 403
    :cond_2
    new-instance p3, Lyads/th5;

    invoke-direct {p3, v0, v1, v2, v3}, Lyads/th5;-><init>(JJ)V

    .line 404
    :goto_1
    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0, p1, p2, p3}, Lyads/z04;->a(JLyads/th5;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    array-length v1, v8

    new-array v1, v1, [Lyads/s00;

    iput-object v1, v0, Lyads/t00;->d:[Lyads/s00;

    array-length v1, v8

    new-array v4, v1, [Lyads/mc5;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lyads/t00;->d:[Lyads/s00;

    aget-object v3, v8, v1

    check-cast v3, Lyads/s00;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v10, v3, Lyads/s00;->b:Lyads/mc5;

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    aput-object v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lyads/t00;->b:Lyads/z04;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lyads/z04;->a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J

    move-result-wide v11

    iget-wide v5, v0, Lyads/t00;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v13

    const-wide/16 v15, 0x0

    if-eqz v1, :cond_18

    iget-wide v5, v0, Lyads/t00;->f:J

    cmp-long v1, p5, v5

    if-nez v1, :cond_18

    cmp-long v1, v5, v15

    if-eqz v1, :cond_18

    array-length v1, v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_18

    aget-object v5, v2, v3

    if-eqz v5, :cond_17

    invoke-interface {v5}, Lyads/er2;->d()Lyads/vz2;

    move-result-object v5

    iget-object v6, v5, Lyads/vz2;->m:Ljava/lang/String;

    iget-object v5, v5, Lyads/vz2;->j:Ljava/lang/String;

    sget-object v7, Lyads/z84;->a:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v17, 0xa

    const/4 v9, 0x5

    const/16 v18, 0x0

    const/4 v10, 0x2

    const/16 v19, -0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "audio/g711-mlaw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    move/from16 v19, v17

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "audio/g711-alaw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v19, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "audio/mpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v19, 0x8

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "audio/flac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    const/16 v19, 0x7

    goto :goto_3

    :sswitch_4
    const-string v7, "audio/eac3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/16 v19, 0x6

    goto :goto_3

    :sswitch_5
    const-string v7, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v19, v9

    goto :goto_3

    :sswitch_6
    const-string v7, "audio/ac3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const/16 v19, 0x4

    goto :goto_3

    :sswitch_7
    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    const/16 v19, 0x3

    goto :goto_3

    :sswitch_8
    const-string v7, "audio/mpeg-L2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    move/from16 v19, v10

    goto :goto_3

    :sswitch_9
    const-string v7, "audio/mpeg-L1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    const/16 v19, 0x1

    goto :goto_3

    :sswitch_a
    const-string v7, "audio/eac3-joc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    const/16 v19, 0x0

    :goto_3
    packed-switch v19, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v5, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {v5}, Lyads/z84;->b(Ljava/lang/String;)Lyads/y84;

    move-result-object v5

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    iget v5, v5, Lyads/y84;->b:I

    const/16 v6, 0x10

    if-eq v5, v10, :cond_11

    if-eq v5, v9, :cond_15

    const/16 v7, 0x1d

    if-eq v5, v7, :cond_14

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_13

    const/16 v7, 0x16

    if-eq v5, v7, :cond_12

    const/16 v7, 0x17

    if-eq v5, v7, :cond_10

    const/4 v5, 0x0

    goto :goto_5

    :cond_10
    const/16 v17, 0xf

    :cond_11
    :goto_4
    move/from16 v5, v17

    goto :goto_5

    :cond_12
    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_4

    :cond_13
    move v5, v6

    goto :goto_5

    :cond_14
    const/16 v17, 0xc

    goto :goto_4

    :cond_15
    const/16 v17, 0xb

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_16

    if-eq v5, v6, :cond_16

    goto :goto_7

    :cond_16
    :goto_6
    move-wide v13, v11

    goto :goto_8

    :cond_17
    const/16 v18, 0x0

    :goto_7
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_18
    const/16 v18, 0x0

    :goto_8
    iput-wide v13, v0, Lyads/t00;->e:J

    cmp-long v1, v11, p5

    if-eqz v1, :cond_1a

    iget-wide v1, v0, Lyads/t00;->f:J

    cmp-long v1, v11, v1

    if-ltz v1, :cond_19

    iget-wide v1, v0, Lyads/t00;->g:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1a

    cmp-long v1, v11, v1

    if-gtz v1, :cond_19

    goto :goto_9

    :cond_19
    invoke-static {}, Lud;->g()V

    return-wide v15

    :cond_1a
    :goto_9
    const/4 v9, 0x0

    :goto_a
    array-length v1, v8

    if-ge v9, v1, :cond_1e

    aget-object v1, v4, v9

    iget-object v2, v0, Lyads/t00;->d:[Lyads/s00;

    if-nez v1, :cond_1b

    aput-object v18, v2, v9

    goto :goto_b

    :cond_1b
    aget-object v3, v2, v9

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lyads/s00;->b:Lyads/mc5;

    if-eq v3, v1, :cond_1d

    :cond_1c
    new-instance v3, Lyads/s00;

    invoke-direct {v3, v0, v1}, Lyads/s00;-><init>(Lyads/t00;Lyads/mc5;)V

    aput-object v3, v2, v9

    :cond_1d
    :goto_b
    iget-object v1, v0, Lyads/t00;->d:[Lyads/s00;

    aget-object v1, v1, v9

    aput-object v1, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_1e
    return-wide v11

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_a
        -0x19cc928c -> :sswitch_9
        -0x19cc928b -> :sswitch_8
        -0x3313c2e -> :sswitch_7
        0xb269698 -> :sswitch_6
        0xb26d66f -> :sswitch_5
        0x59ae0c65 -> :sswitch_4
        0x59aeaa01 -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(J)V
    .locals 0

    .line 394
    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0, p1, p2}, Lyads/z04;->a(J)V

    return-void
.end method

.method public final a(Lyads/ui5;)V
    .locals 0

    .line 390
    check-cast p1, Lyads/z04;

    .line 391
    iget-object p1, p0, Lyads/t00;->c:Lyads/y04;

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 0

    .line 388
    iput-object p1, p0, Lyads/t00;->c:Lyads/y04;

    .line 389
    iget-object p1, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p1, p0, p2, p3}, Lyads/z04;->a(Lyads/y04;J)V

    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 0

    .line 405
    iget-object p1, p0, Lyads/t00;->h:Lyads/v00;

    if-eqz p1, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object p1, p0, Lyads/t00;->c:Lyads/y04;

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    invoke-interface {p1, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void
.end method

.method public final c(J)Z
    .locals 0

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0, p1, p2}, Lyads/ui5;->c(J)Z

    move-result p0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 6

    iget-object v0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/ui5;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lyads/t00;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getNextLoadPositionUs()J
    .locals 6

    iget-object v0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/ui5;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lyads/t00;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 0

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/ui5;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lyads/t00;->h:Lyads/v00;

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0}, Lyads/z04;->maybeThrowPrepareError()V

    return-void

    :cond_0
    throw v0
.end method

.method public final readDiscontinuity()J
    .locals 6

    iget-wide v0, p0, Lyads/t00;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iput-wide v2, p0, Lyads/t00;->e:J

    invoke-virtual {p0}, Lyads/t00;->readDiscontinuity()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    return-wide v4

    :cond_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {v0}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    iget-wide v2, p0, Lyads/t00;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lyads/t00;->g:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lud;->g()V

    :goto_0
    const-wide/16 v0, 0x0

    :cond_4
    :goto_1
    return-wide v0

    :cond_5
    invoke-static {}, Lud;->g()V

    goto :goto_0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {p0, p1, p2}, Lyads/ui5;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/t00;->e:J

    iget-object v0, p0, Lyads/t00;->d:[Lyads/s00;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean v2, v4, Lyads/s00;->c:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/t00;->b:Lyads/z04;

    invoke-interface {v0, p1, p2}, Lyads/z04;->seekToUs(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lyads/t00;->f:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_2

    iget-wide p0, p0, Lyads/t00;->g:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, p0, v2

    if-eqz p2, :cond_3

    cmp-long p0, v0, p0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lud;->g()V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_3
    :goto_1
    return-wide v0
.end method
