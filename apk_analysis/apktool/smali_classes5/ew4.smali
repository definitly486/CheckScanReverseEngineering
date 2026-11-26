.class public final Lew4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    sget-object p0, Lwt2;->c:Lwt2$a;

    sget-wide p0, Lwt2;->e:J

    return-wide p0

    :cond_0
    sget-object p0, Lwt2;->c:Lwt2$a;

    sget-wide p0, Lwt2;->d:J

    return-wide p0
.end method

.method public static final b(JJLau2;)J
    .locals 34

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p4}, Lwt2;->k(JLau2;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long v9, v0, v7

    or-long/2addr v9, v7

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v9, v9, v11

    const-wide/16 v13, 0x0

    if-nez v9, :cond_2

    invoke-static {v2, v3}, Lwt2;->h(J)Z

    move-result v2

    if-eqz v2, :cond_1

    xor-long v2, v0, v5

    cmp-long v2, v2, v13

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Summing infinities of different signs"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-wide v13

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    sub-long v9, v5, v7

    or-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-nez v9, :cond_12

    sget-wide v5, Lwt2;->e:J

    sget-wide v9, Lwt2;->d:J

    long-to-int v15, v2

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    const-wide/16 v17, 0x2

    if-nez v15, :cond_3

    shr-long v5, v2, v16

    div-long v5, v5, v17

    invoke-static {v5, v6}, Lyt2;->c(J)J

    move-result-wide v13

    move-wide/from16 v22, v7

    :goto_1
    move-wide/from16 v24, v11

    goto/16 :goto_4

    :cond_3
    invoke-static {v2, v3}, Lwt2;->h(J)Z

    move-result v19

    const-wide/32 v20, 0xf4240

    if-eqz v19, :cond_f

    const/16 v17, 0x2

    move-wide/from16 v22, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-static {v2, v3}, Lwt2;->h(J)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    if-lez v7, :cond_4

    move-wide v13, v2

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Lwt2;->n(J)J

    move-result-wide v13

    goto :goto_1

    :cond_5
    const-string v0, "Multiplying infinite duration by zero yields an undefined result."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-wide v13

    :cond_6
    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    shr-long v16, v2, v16

    move-wide/from16 v24, v11

    int-to-long v11, v7

    move-wide/from16 v26, v13

    mul-long v13, v16, v11

    move-wide/from16 v28, v5

    if-nez v15, :cond_c

    const-wide/32 v30, -0x7fffffff

    cmp-long v8, v30, v16

    if-gtz v8, :cond_8

    const-wide v30, 0x80000000L

    cmp-long v8, v16, v30

    if-gez v8, :cond_8

    invoke-static {v13, v14}, Lyt2;->c(J)J

    move-result-wide v13

    goto/16 :goto_4

    :cond_8
    div-long v30, v13, v11

    cmp-long v8, v30, v16

    if-nez v8, :cond_a

    const-wide v5, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v5, v5, v13

    if-gtz v5, :cond_9

    const-wide v5, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v5, v13, v5

    if-gez v5, :cond_9

    invoke-static {v13, v14}, Lyt2;->c(J)J

    move-result-wide v5

    :goto_2
    move-wide v13, v5

    goto/16 :goto_4

    :cond_9
    div-long v13, v13, v20

    invoke-static {v13, v14}, Lyt2;->b(J)J

    move-result-wide v5

    goto :goto_2

    :cond_a
    div-long v13, v16, v20

    mul-long v30, v13, v20

    sub-long v30, v16, v30

    mul-long v32, v13, v11

    mul-long v30, v30, v11

    div-long v30, v30, v20

    add-long v5, v30, v32

    div-long v11, v32, v11

    cmp-long v8, v11, v13

    if-nez v8, :cond_b

    xor-long v11, v5, v32

    cmp-long v8, v11, v26

    if-ltz v8, :cond_b

    new-instance v7, Ldw4;

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v10, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-direct {v7, v10, v11, v8, v9}, Ldw4;-><init>(JJ)V

    invoke-static {v5, v6, v7}, Lkx6;->i(JLdw4;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lyt2;->b(J)J

    move-result-wide v13

    goto :goto_4

    :cond_b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->signum(J)I

    move-result v5

    invoke-static {v7}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    mul-int/2addr v6, v5

    if-lez v6, :cond_e

    goto :goto_3

    :cond_c
    div-long v5, v13, v11

    cmp-long v5, v5, v16

    if-nez v5, :cond_d

    new-instance v5, Ldw4;

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v10, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-direct {v5, v10, v11, v8, v9}, Ldw4;-><init>(JJ)V

    invoke-static {v13, v14, v5}, Lkx6;->i(JLdw4;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lyt2;->b(J)J

    move-result-wide v13

    goto :goto_4

    :cond_d
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->signum(J)I

    move-result v5

    invoke-static {v7}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    mul-int/2addr v6, v5

    if-lez v6, :cond_e

    :goto_3
    move-wide v13, v9

    goto :goto_4

    :cond_e
    move-wide/from16 v13, v28

    goto :goto_4

    :cond_f
    move-wide/from16 v22, v7

    move-wide/from16 v24, v11

    shr-long v5, v2, v16

    div-long v7, v5, v17

    const-wide v9, -0x431bde82d7aL

    cmp-long v9, v9, v7

    if-gtz v9, :cond_10

    const-wide v9, 0x431bde82d7bL

    cmp-long v9, v7, v9

    if-gez v9, :cond_10

    mul-long v9, v7, v17

    sub-long/2addr v5, v9

    mul-long v5, v5, v20

    div-long v5, v5, v17

    mul-long v7, v7, v20

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Lyt2;->c(J)J

    move-result-wide v13

    goto :goto_4

    :cond_10
    invoke-static {v7, v8}, Lyt2;->b(J)J

    move-result-wide v13

    :goto_4
    invoke-static {v13, v14, v4}, Lwt2;->k(JLau2;)J

    move-result-wide v5

    sub-long v7, v5, v22

    or-long v7, v7, v22

    cmp-long v7, v7, v24

    if-nez v7, :cond_11

    return-wide v5

    :cond_11
    invoke-static {v0, v1, v13, v14, v4}, Lew4;->b(JJLau2;)J

    move-result-wide v0

    invoke-static {v13, v14}, Lwt2;->n(J)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lwt2;->j(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v4}, Lew4;->b(JJLau2;)J

    move-result-wide v0

    return-wide v0

    :cond_12
    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    add-long v2, v0, v5

    xor-long v7, v0, v2

    xor-long v4, v5, v2

    and-long/2addr v4, v7

    cmp-long v4, v4, v26

    if-gez v4, :cond_14

    cmp-long v0, v0, v26

    if-gez v0, :cond_13

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_13
    return-wide v24

    :cond_14
    return-wide v2
.end method

.method public static final c(JJLau2;)J
    .locals 7

    sub-long v0, p0, p2

    xor-long v2, v0, p0

    xor-long v4, v0, p2

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    sget-object v2, Lau2;->MILLISECONDS:Lau2;

    invoke-virtual {p4, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {v2}, Lau2;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    div-long v3, p0, v0

    div-long v5, p2, v0

    sub-long/2addr v3, v5

    rem-long/2addr p0, v0

    rem-long/2addr p2, v0

    sub-long/2addr p0, p2

    sget-object p2, Lwt2;->c:Lwt2$a;

    invoke-static {v3, v4, v2}, Lyt2;->f(JLau2;)J

    move-result-wide p2

    invoke-static {p0, p1, p4}, Lyt2;->f(JLau2;)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lwt2;->j(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {v0, v1}, Lew4;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lwt2;->n(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v0, v1, p4}, Lyt2;->f(JLau2;)J

    move-result-wide p0

    return-wide p0
.end method
