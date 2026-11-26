.class public final Lyt2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt2$a;
    }
.end annotation


# direct methods
.method public static final a(JJ)J
    .locals 7

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p0, v0

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz v2, :cond_3

    cmp-long v2, p0, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-long v1, p0, p2

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lkx6;->h(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide p2

    :cond_3
    :goto_1
    cmp-long v2, v3, p2

    if-gez v2, :cond_4

    cmp-long v0, p2, v0

    if-gez v0, :cond_4

    return-wide p0

    :cond_4
    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_5

    return-wide p0

    :cond_5
    const-wide p0, 0x7fffffffffffc0deL

    return-wide p0
.end method

.method public static final b(J)J
    .locals 3

    sget-object v0, Lwt2;->c:Lwt2$a;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lxt2;->a:I

    return-wide p0
.end method

.method public static final c(J)J
    .locals 1

    sget-object v0, Lwt2;->c:Lwt2$a;

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    sget v0, Lxt2;->a:I

    return-wide p0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_0

    move v4, v1

    :goto_0
    move v8, v4

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v8, v1

    move v4, v5

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    const-string v11, ""

    if-ne v9, v10, :cond_26

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_25

    move v10, v1

    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_3

    if-nez v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v4, v2, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_3
    sget-object v3, Lyv4;->c:Lyv4;

    move/from16 v18, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_4

    move v5, v4

    :goto_3
    move/from16 v9, v18

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v4, 0x1

    const/16 v19, -0x1

    move/from16 v9, v19

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v4, 0x1

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x30

    if-ge v5, v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x2b

    goto :goto_4

    :cond_6
    move-wide/from16 v20, v16

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3a

    if-ge v5, v6, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v23, v4

    const/16 v4, 0x30

    if-gt v4, v6, :cond_d

    if-ge v6, v7, :cond_d

    add-int/lit8 v6, v6, -0x30

    move v4, v8

    iget-wide v7, v3, Lyv4;->a:J

    cmp-long v7, v20, v7

    if-gtz v7, :cond_7

    if-nez v7, :cond_8

    int-to-long v7, v6

    move-wide/from16 v24, v7

    iget-wide v7, v3, Lyv4;->b:J

    cmp-long v7, v24, v7

    if-lez v7, :cond_8

    :cond_7
    move/from16 v25, v4

    goto :goto_6

    :cond_8
    const/4 v7, 0x3

    shl-long v7, v20, v7

    shl-long v20, v20, v18

    add-long v7, v7, v20

    move-object/from16 v24, v3

    move/from16 v25, v4

    int-to-long v3, v6

    add-long v20, v7, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v23

    move-object/from16 v3, v24

    move/from16 v8, v25

    const/16 v7, 0x30

    goto :goto_5

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_9

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_b

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    move/from16 v2, v18

    :goto_7
    add-int v4, v23, v2

    if-eq v5, v4, :cond_b

    const-wide v20, 0x3fffffffffffffffL    # 1.9999999999999998

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    :goto_8
    move-wide/from16 v6, v20

    goto :goto_a

    :cond_b
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_c
    move/from16 v23, v4

    :cond_d
    move/from16 v25, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_21

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    if-eq v2, v3, :cond_e

    if-eq v2, v4, :cond_e

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    move/from16 v2, v18

    :goto_9
    add-int v2, v23, v2

    if-eq v5, v2, :cond_21

    goto :goto_8

    :goto_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v8, 0x2e

    if-ne v2, v8, :cond_15

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v2

    const/4 v14, 0x0

    :goto_b
    if-ge v8, v5, :cond_f

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x30

    if-gt v4, v15, :cond_f

    const/16 v4, 0x3a

    if-ge v15, v4, :cond_f

    shl-int/lit8 v4, v14, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v4, v14

    add-int/lit8 v15, v15, -0x30

    add-int v14, v15, v4

    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x2d

    goto :goto_b

    :cond_f
    sub-int v4, v8, v2

    rsub-int/lit8 v4, v4, 0x6

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_10

    shl-int/lit8 v15, v14, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v8, 0x9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v8

    const/4 v15, 0x0

    :goto_d
    if-ge v5, v4, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v21, v4

    const/16 v4, 0x30

    if-gt v4, v3, :cond_11

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_11

    shl-int/lit8 v4, v15, 0x3

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v4, v15

    add-int/lit8 v3, v3, -0x30

    add-int v15, v3, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v21

    goto :goto_d

    :cond_11
    sub-int v3, v5, v8

    rsub-int/lit8 v3, v3, 0x9

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_12

    shl-int/lit8 v8, v15, 0x3

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_13

    const/16 v8, 0x3a

    if-ge v3, v8, :cond_13

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    if-eq v5, v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v5, v2, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_14

    int-to-long v2, v14

    const-wide/32 v21, 0x3b9aca00

    mul-long v2, v2, v21

    int-to-long v14, v15

    add-long/2addr v2, v14

    int-to-long v14, v9

    sget-object v4, Lau2;->SECONDS:Lau2;

    long-to-double v2, v2

    sget-object v8, Lyt2$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aget v8, v8, v21

    packed-switch v8, :pswitch_data_0

    const-string v2, "Unknown unit: "

    invoke-static {v4, v2}, Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v2, v16

    goto :goto_11

    :pswitch_0
    const-wide v21, 0x3fb61e4f765fd8aeL    # 0.0864

    goto :goto_10

    :pswitch_1
    const-wide v21, 0x3f6d7dbf487fcb92L    # 0.0036

    goto :goto_10

    :pswitch_2
    const-wide v21, 0x3f0f75104d551d69L    # 6.0E-5

    goto :goto_10

    :pswitch_3
    const-wide v21, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    goto :goto_10

    :pswitch_4
    const-wide v21, 0x3e112e0be826d695L    # 1.0E-9

    goto :goto_10

    :pswitch_5
    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    goto :goto_10

    :pswitch_6
    const-wide v21, 0x3d719799812dea11L    # 1.0E-12

    :goto_10
    mul-double v2, v2, v21

    invoke-static {v2, v3}, Lw65;->c(D)J

    move-result-wide v2

    :goto_11
    mul-long/2addr v2, v14

    move-wide v14, v2

    goto :goto_12

    :cond_14
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_15
    :goto_12
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_19

    const/16 v3, 0x48

    if-eq v2, v3, :cond_18

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_17

    const/16 v3, 0x53

    if-eq v2, v3, :cond_16

    const/4 v2, 0x0

    goto :goto_13

    :cond_16
    sget-object v2, Lau2;->SECONDS:Lau2;

    goto :goto_13

    :cond_17
    sget-object v2, Lau2;->MINUTES:Lau2;

    goto :goto_13

    :cond_18
    sget-object v2, Lau2;->HOURS:Lau2;

    goto :goto_13

    :cond_19
    sget-object v2, Lau2;->DAYS:Lau2;

    :goto_13
    if-eqz v2, :cond_20

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1a

    goto :goto_14

    :cond_1a
    const-string v0, "Unexpected order of duration components"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_1b
    :goto_14
    sget-object v1, Lau2;->DAYS:Lau2;

    if-ne v2, v1, :cond_1d

    if-nez v10, :cond_1c

    int-to-long v3, v9

    invoke-static {v6, v7, v2}, Lcu2;->a(JLau2;)J

    move-result-wide v6

    mul-long/2addr v6, v3

    move-wide v12, v6

    goto :goto_15

    :cond_1c
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_1d
    if-eqz v10, :cond_1f

    int-to-long v3, v9

    invoke-static {v6, v7, v2}, Lcu2;->a(JLau2;)J

    move-result-wide v6

    mul-long/2addr v6, v3

    invoke-static {v12, v13, v6, v7}, Lyt2;->a(JJ)J

    move-result-wide v3

    const-wide v6, 0x7fffffffffffc0deL

    cmp-long v1, v3, v6

    if-eqz v1, :cond_1e

    move-wide v12, v3

    :goto_15
    add-int/lit8 v4, v5, 0x1

    move-object v1, v2

    move/from16 v5, v18

    move/from16 v8, v25

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    goto/16 :goto_2

    :cond_1e
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_1f
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_20
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown duration unit short name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_22
    move/from16 v25, v8

    sget-object v0, Lau2;->MILLISECONDS:Lau2;

    invoke-static {v12, v13, v0}, Lyt2;->f(JLau2;)J

    move-result-wide v0

    sget-object v2, Lau2;->NANOSECONDS:Lau2;

    invoke-static {v14, v15, v2}, Lyt2;->f(JLau2;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lwt2;->j(JJ)J

    move-result-wide v0

    if-eqz v25, :cond_24

    sget-wide v2, Lwt2;->f:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_23

    return-wide v0

    :cond_23
    invoke-static {v0, v1}, Lwt2;->n(J)J

    move-result-wide v0

    :cond_24
    return-wide v0

    :cond_25
    const-wide/16 v16, 0x0

    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_26
    const-wide/16 v16, 0x0

    invoke-static {v11}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_27
    const-wide/16 v16, 0x0

    const-string v0, "No components"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :cond_28
    const-wide/16 v16, 0x0

    const-string v0, "The string is empty"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-wide v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(ILau2;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lau2;->SECONDS:Lau2;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    sget-object p0, Lau2;->NANOSECONDS:Lau2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p1}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lyt2;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Lyt2;->f(JLau2;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final f(JLau2;)J
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lau2;->NANOSECONDS:Lau2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-virtual {v0}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lyt2;->c(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object v0, Lau2;->MILLISECONDS:Lau2;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    move-wide p0, v2

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcu2;->a(JLau2;)J

    move-result-wide p0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lkx6;->h(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lyt2;->b(J)J

    move-result-wide p0

    return-wide p0
.end method
