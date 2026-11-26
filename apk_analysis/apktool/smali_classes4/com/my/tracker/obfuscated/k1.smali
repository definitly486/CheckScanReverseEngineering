.class public Lcom/my/tracker/obfuscated/k1;
.super Lcom/my/tracker/obfuscated/u1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/my/tracker/obfuscated/u1;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 0

    .line 484
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/16 p0, 0x29

    return p0

    :pswitch_2
    const/16 p0, 0x28

    return p0

    :pswitch_3
    const/16 p0, 0x27

    return p0

    :pswitch_4
    const/16 p0, 0x25

    return p0

    :pswitch_5
    const/16 p0, 0x24

    return p0

    :pswitch_6
    const/16 p0, 0x23

    return p0

    :pswitch_7
    const/16 p0, 0x22

    return p0

    :pswitch_8
    const/16 p0, 0x21

    return p0

    :pswitch_9
    const/16 p0, 0x20

    return p0

    :pswitch_a
    const/16 p0, 0x1f

    return p0

    :pswitch_b
    const/16 p0, 0x1e

    return p0

    :pswitch_c
    const/16 p0, 0x1d

    return p0

    :pswitch_d
    const/16 p0, 0x1c

    return p0

    :pswitch_e
    const/16 p0, 0x1b

    return p0

    :pswitch_f
    const/16 p0, 0x1a

    return p0

    :pswitch_10
    const/16 p0, 0x19

    return p0

    :pswitch_11
    const/16 p0, 0x10

    return p0

    :pswitch_12
    const/16 p0, 0xe

    return p0

    :pswitch_13
    const/16 p0, 0x15

    return p0

    :pswitch_14
    const/16 p0, 0x17

    return p0

    :pswitch_15
    const/16 p0, 0x14

    return p0

    :pswitch_16
    const/16 p0, 0x13

    return p0

    :pswitch_17
    const/16 p0, 0x12

    return p0

    :pswitch_18
    const/16 p0, 0x16

    return p0

    :pswitch_19
    const/16 p0, 0x11

    return p0

    :pswitch_1a
    const/16 p0, 0xb

    return p0

    :pswitch_1b
    const/16 p0, 0xd

    return p0

    :pswitch_1c
    const/16 p0, 0xc

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/my/tracker/obfuscated/q;II)I
    .locals 1

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/my/tracker/obfuscated/q;IJ)I
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/b2;Lcom/my/tracker/obfuscated/q;)I
    .locals 9

    const/4 v0, 0x0

    .line 434
    :try_start_0
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2;->a()Lcom/my/tracker/obfuscated/b2$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v1, v0

    .line 435
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2$a;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 436
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2$a;->g()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    long-to-int v2, v2

    .line 437
    :try_start_2
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 438
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2$a;->d()Lcom/my/tracker/obfuscated/b2$b;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 439
    :goto_1
    :try_start_3
    invoke-interface {v3}, Lcom/my/tracker/obfuscated/b2$b;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    invoke-interface {v3}, Lcom/my/tracker/obfuscated/b2$b;->e()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x2

    invoke-virtual {p2, v5, v4}, Lcom/my/tracker/obfuscated/v1;->a(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    .line 441
    :cond_0
    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 442
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v4, ", event ignored"

    if-nez v3, :cond_1

    .line 443
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: no timestamps for event "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    goto :goto_4

    :cond_1
    const/4 v3, 0x1

    .line 444
    invoke-virtual {p2, v3, v2}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 445
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2$a;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    long-to-int v3, v5

    const/4 v5, 0x3

    .line 446
    invoke-virtual {p2, v5, v3}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 447
    :cond_2
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/b2$a;->l()[B

    move-result-object v3

    .line 448
    array-length v5, v3

    if-lez v5, :cond_4

    .line 449
    invoke-static {v2}, Lcom/my/tracker/obfuscated/k1;->a(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unrecognized eventType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_3
    invoke-virtual {p2, v5, v3}, Lcom/my/tracker/obfuscated/v1;->a(I[B)I

    :cond_4
    const/16 v3, 0x29

    .line 452
    invoke-virtual {p0, v3, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_2
    if-eqz v3, :cond_5

    .line 453
    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 454
    :goto_4
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: failed to pack event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    goto :goto_5

    .line 455
    :cond_6
    :try_start_9
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_7

    :goto_5
    if-eqz p1, :cond_7

    .line 456
    :try_start_a
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_6
    move-exception p0

    move v1, v0

    .line 457
    :goto_7
    const-string p1, "Error: failed to get stored events"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Written: events="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytes="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return v1
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/d2;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)I
    .locals 9

    const/4 v0, 0x0

    .line 459
    :try_start_0
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2;->a()Lcom/my/tracker/obfuscated/d2$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v1, v0

    .line 460
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2$a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 461
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2$a;->k()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x2

    .line 463
    :try_start_2
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2$a;->d()Lcom/my/tracker/obfuscated/d2$b;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    :goto_1
    :try_start_3
    invoke-interface {v4}, Lcom/my/tracker/obfuscated/d2$b;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-virtual {p3}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 466
    invoke-interface {v4}, Lcom/my/tracker/obfuscated/d2$b;->h()J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x1

    invoke-virtual {p3, v6, v5}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 467
    invoke-interface {v4}, Lcom/my/tracker/obfuscated/d2$b;->f()Z

    move-result v5

    if-nez v5, :cond_0

    .line 468
    invoke-interface {v4}, Lcom/my/tracker/obfuscated/d2$b;->j()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {p3, v3, v5}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_3

    .line 469
    :cond_0
    :goto_2
    invoke-virtual {p2, v6, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 470
    :cond_1
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v4

    goto :goto_5

    :goto_3
    if-eqz v4, :cond_2

    .line 471
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 472
    :goto_5
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: failed to read session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    :goto_6
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result v4

    if-nez v4, :cond_3

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No periods for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2$a;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", session ignored"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    goto :goto_7

    .line 475
    :cond_3
    invoke-interface {p1}, Lcom/my/tracker/obfuscated/d2$a;->c()J

    move-result-wide v4

    long-to-int v2, v4

    if-lez v2, :cond_4

    .line 476
    invoke-virtual {p2, v3, v2}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    :cond_4
    const/16 v2, 0x2a

    .line 477
    invoke-virtual {p0, v2, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 478
    :cond_5
    :try_start_8
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p0

    goto :goto_9

    :goto_7
    if-eqz p1, :cond_6

    .line 479
    :try_start_9
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_8
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_6
    move-exception p0

    move v1, v0

    .line 480
    :goto_9
    const-string p1, "Error: failed to get stored sessions"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Written: sessions="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytes="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return v0
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/MyTrackerParams$a;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 281
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 282
    iget-object v0, p1, Lcom/my/tracker/MyTrackerParams$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 283
    iget-object v0, p1, Lcom/my/tracker/MyTrackerParams$a;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 284
    iget-object p1, p1, Lcom/my/tracker/MyTrackerParams$a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 285
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result p1

    if-lez p1, :cond_0

    const/16 p1, 0x18

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    :cond_0
    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/c3$a;Lcom/my/tracker/obfuscated/q;)V
    .locals 3

    .line 287
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 288
    iget v0, p1, Lcom/my/tracker/obfuscated/c3$a;->b:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 289
    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 290
    :cond_0
    iget v0, p1, Lcom/my/tracker/obfuscated/c3$a;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 291
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 292
    :cond_1
    iget-boolean v0, p1, Lcom/my/tracker/obfuscated/c3$a;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 293
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 294
    :cond_2
    iget-boolean v0, p1, Lcom/my/tracker/obfuscated/c3$a;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 295
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 296
    :cond_3
    iget v0, p1, Lcom/my/tracker/obfuscated/c3$a;->c:I

    const/16 v2, 0x384

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    .line 297
    invoke-virtual {p2, v2, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 298
    :cond_4
    iget v0, p1, Lcom/my/tracker/obfuscated/c3$a;->d:I

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    .line 299
    invoke-virtual {p2, v2, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 300
    :cond_5
    iget-boolean v0, p1, Lcom/my/tracker/obfuscated/c3$a;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 301
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 302
    :cond_6
    iget-boolean v0, p1, Lcom/my/tracker/obfuscated/c3$a;->i:Z

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 303
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 304
    :cond_7
    iget-boolean v0, p1, Lcom/my/tracker/obfuscated/c3$a;->j:Z

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 305
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 306
    :cond_8
    iget-object p1, p1, Lcom/my/tracker/obfuscated/c3$a;->l:Lcom/my/tracker/config/AntiFraudConfig;

    .line 307
    iget-boolean v0, p1, Lcom/my/tracker/config/AntiFraudConfig;->useLightSensor:Z

    if-nez v0, :cond_9

    const/16 v0, 0xb

    .line 308
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 309
    :cond_9
    iget-boolean v0, p1, Lcom/my/tracker/config/AntiFraudConfig;->useMagneticFieldSensor:Z

    if-nez v0, :cond_a

    const/16 v0, 0xc

    .line 310
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 311
    :cond_a
    iget-boolean v0, p1, Lcom/my/tracker/config/AntiFraudConfig;->useGyroscope:Z

    if-nez v0, :cond_b

    const/16 v0, 0xd

    .line 312
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 313
    :cond_b
    iget-boolean v0, p1, Lcom/my/tracker/config/AntiFraudConfig;->usePressureSensor:Z

    if-nez v0, :cond_c

    const/16 v0, 0xe

    .line 314
    invoke-virtual {p2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 315
    :cond_c
    iget-boolean p1, p1, Lcom/my/tracker/config/AntiFraudConfig;->useProximitySensor:Z

    if-nez p1, :cond_d

    const/16 p1, 0xf

    .line 316
    invoke-virtual {p2, p1, v1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 317
    :cond_d
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result p1

    if-lez p1, :cond_e

    const/16 p1, 0x1b

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    :cond_e
    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$c;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 343
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 344
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->a:I

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 345
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->b:I

    const/4 v1, 0x2

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 346
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 347
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 348
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 349
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 350
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 351
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 352
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->i:I

    const/16 v1, 0x9

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 353
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->j:I

    const/16 v1, 0xa

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 354
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$c;->k:I

    const/16 v1, 0xb

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 355
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$c;->l:I

    const/16 v0, 0xc

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x20

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$d;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 357
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 358
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 359
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$d;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 360
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 361
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 362
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 363
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 364
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 365
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 366
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$d;->i:I

    const/16 v1, 0x9

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 367
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$d;->j:I

    const/16 v0, 0xa

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x21

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$e;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 369
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 370
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 371
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$e;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 372
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 373
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 374
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 375
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 376
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 377
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 378
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$e;->i:I

    const/16 v1, 0x9

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 379
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$e;->j:I

    const/16 v0, 0xa

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x22

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$f;Lcom/my/tracker/obfuscated/q;)V
    .locals 3

    .line 403
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 404
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 405
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$f;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 406
    iget-wide v0, p1, Lcom/my/tracker/obfuscated/g0$f;->c:J

    const/4 v2, 0x3

    invoke-static {p2, v2, v0, v1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;IJ)I

    .line 407
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$f;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 408
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$f;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 409
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$f;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 410
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$f;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 411
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$f;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 412
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$f;->i:I

    const/16 v0, 0x9

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x25

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$g;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 392
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 393
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 394
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$g;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 395
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 396
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 397
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 398
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 399
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 400
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$g;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 401
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$g;->i:I

    const/16 v0, 0x9

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x24

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$h;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 414
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 415
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$h;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 416
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$h;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 417
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$h;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 418
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$h;->d:I

    const/4 v0, 0x4

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x21

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method private static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$i;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 381
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 382
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 383
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$i;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 384
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->c:I

    const/4 v1, 0x3

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 385
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->d:I

    const/4 v1, 0x4

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 386
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->e:I

    const/4 v1, 0x5

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 387
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->f:I

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 388
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->g:I

    const/4 v1, 0x7

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 389
    iget v0, p1, Lcom/my/tracker/obfuscated/g0$i;->h:I

    const/16 v1, 0x8

    invoke-static {p2, v1, v0}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    .line 390
    iget p1, p1, Lcom/my/tracker/obfuscated/g0$i;->i:I

    const/16 v0, 0x9

    invoke-static {p2, v0, p1}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/q;II)I

    const/16 p1, 0x23

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$k;Lcom/my/tracker/obfuscated/q;)V
    .locals 5

    .line 420
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 422
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/g0$j;->b:Ljava/lang/String;

    invoke-virtual {p2, v3, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 423
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/g0$j;->a:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 424
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    iget v0, v0, Lcom/my/tracker/obfuscated/g0$j;->c:I

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 425
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    iget v0, v0, Lcom/my/tracker/obfuscated/g0$j;->d:I

    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 426
    iget-object v0, p1, Lcom/my/tracker/obfuscated/g0$k;->a:Lcom/my/tracker/obfuscated/g0$j;

    iget v0, v0, Lcom/my/tracker/obfuscated/g0$j;->e:I

    const/4 v4, 0x6

    invoke-virtual {p2, v4, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    const/16 v0, 0x1c

    .line 427
    invoke-virtual {p0, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    .line 428
    :cond_0
    iget-object p1, p1, Lcom/my/tracker/obfuscated/g0$k;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/g0$a;

    .line 429
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 430
    iget-object v4, v0, Lcom/my/tracker/obfuscated/g0$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 431
    iget-object v4, v0, Lcom/my/tracker/obfuscated/g0$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 432
    iget v0, v0, Lcom/my/tracker/obfuscated/g0$a;->c:I

    invoke-virtual {p2, v1, v0}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    const/16 v0, 0x1d

    .line 433
    invoke-virtual {p0, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/j;Lcom/my/tracker/obfuscated/q;)V
    .locals 3

    .line 319
    iget-object v0, p1, Lcom/my/tracker/obfuscated/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    iget-object p1, p1, Lcom/my/tracker/obfuscated/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/j$a;

    .line 321
    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 322
    iget-object v1, v0, Lcom/my/tracker/obfuscated/j$a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 323
    iget-wide v0, v0, Lcom/my/tracker/obfuscated/j$a;->b:J

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0, v1}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    const/16 v0, 0x1f

    .line 324
    invoke-virtual {p0, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/v1;Ljava/util/List;Lcom/my/tracker/obfuscated/q;)V
    .locals 2

    .line 325
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/g0$b;

    .line 326
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$c;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lcom/my/tracker/obfuscated/g0$c;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$c;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 328
    :cond_0
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$d;

    if-eqz v1, :cond_1

    .line 329
    check-cast v0, Lcom/my/tracker/obfuscated/g0$d;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$d;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 330
    :cond_1
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$e;

    if-eqz v1, :cond_2

    .line 331
    check-cast v0, Lcom/my/tracker/obfuscated/g0$e;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$e;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 332
    :cond_2
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$i;

    if-eqz v1, :cond_3

    .line 333
    check-cast v0, Lcom/my/tracker/obfuscated/g0$i;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$i;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 334
    :cond_3
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$g;

    if-eqz v1, :cond_4

    .line 335
    check-cast v0, Lcom/my/tracker/obfuscated/g0$g;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$g;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 336
    :cond_4
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$f;

    if-eqz v1, :cond_5

    .line 337
    check-cast v0, Lcom/my/tracker/obfuscated/g0$f;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$f;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 338
    :cond_5
    instance-of v1, v0, Lcom/my/tracker/obfuscated/g0$h;

    if-eqz v1, :cond_6

    .line 339
    check-cast v0, Lcom/my/tracker/obfuscated/g0$h;

    invoke-static {p0, v0, p2}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$h;Lcom/my/tracker/obfuscated/q;)V

    goto :goto_0

    .line 340
    :cond_6
    const-string v0, "Unknown cell-info"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 596
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p5, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    if-nez p2, :cond_0

    .line 597
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p5, 0x2

    invoke-virtual {p2, p5, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 598
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 599
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 600
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Event serialization failed, type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Lcom/my/tracker/obfuscated/k1;
    .locals 1

    .line 69
    new-instance v0, Lcom/my/tracker/obfuscated/k1;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/k1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/c3$a;ZLcom/my/tracker/obfuscated/f3;Ljava/lang/String;Lcom/my/tracker/obfuscated/j0;JJLcom/my/tracker/obfuscated/b2;Lcom/my/tracker/obfuscated/d2;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    const-string v9, "Create packet error: "

    monitor-enter p0

    const/4 v10, 0x2

    :try_start_0
    iget-object v11, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    move-object/from16 v12, p11

    invoke-static {v0, v12, v11}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/b2;Lcom/my/tracker/obfuscated/q;)I

    move-result v11

    iget-object v12, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v13, v1, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    move-object/from16 v14, p12

    invoke-static {v0, v14, v12, v13}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/d2;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x3

    if-nez v11, :cond_0

    const-string v0, "No events to send"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v12

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    const-string v11, "3.6.0"

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v11}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    iget-object v11, v2, Lcom/my/tracker/obfuscated/c3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    const-wide/16 v14, -0x1

    cmp-long v11, v5, v14

    if-eqz v11, :cond_1

    invoke-virtual {v0, v12, v5, v6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-lez v5, :cond_2

    long-to-int v5, v7

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v5}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    :cond_2
    iget-object v5, v2, Lcom/my/tracker/obfuscated/c3$a;->k:Lcom/my/tracker/MyTrackerParams$a;

    iget-object v5, v5, Lcom/my/tracker/MyTrackerParams$a;->e:Ljava/util/Map;

    iget-object v6, v1, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/16 v7, 0x2b

    invoke-virtual {v0, v7, v5, v6}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    if-nez v3, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "mac"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object v5, v6

    :goto_0
    iget-object v7, v4, Lcom/my/tracker/obfuscated/j0;->a:Lcom/my/tracker/obfuscated/g;

    iget-object v8, v4, Lcom/my/tracker/obfuscated/j0;->c:Lcom/my/tracker/obfuscated/c0;

    iget-object v11, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v12, v1, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v7, v8, v11, v12}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g;Lcom/my/tracker/obfuscated/c0;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)V

    iget-object v7, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    move-object/from16 v8, p4

    invoke-static {v0, v3, v8, v7}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;ZLcom/my/tracker/obfuscated/f3;Lcom/my/tracker/obfuscated/q;)V

    iget-object v7, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v8, v1, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    move-object/from16 p7, v0

    move-object/from16 p10, v4

    move-object/from16 p9, v5

    move-object/from16 p8, v6

    move-object/from16 p11, v7

    move-object/from16 p12, v8

    invoke-static/range {p7 .. p12}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Ljava/lang/String;Ljava/lang/String;Lcom/my/tracker/obfuscated/j0;Lcom/my/tracker/obfuscated/q;Lcom/my/tracker/obfuscated/q;)V

    move-object/from16 v0, p7

    move-object/from16 v4, p10

    if-nez v3, :cond_4

    iget-object v5, v2, Lcom/my/tracker/obfuscated/c3$a;->k:Lcom/my/tracker/MyTrackerParams$a;

    iget-object v6, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v5, v6}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/MyTrackerParams$a;Lcom/my/tracker/obfuscated/q;)V

    :cond_4
    iget-object v5, v4, Lcom/my/tracker/obfuscated/j0;->f:Lcom/my/tracker/obfuscated/l1;

    iget-object v6, v4, Lcom/my/tracker/obfuscated/j0;->b:Lcom/my/tracker/obfuscated/b1;

    iget-object v7, v4, Lcom/my/tracker/obfuscated/j0;->c:Lcom/my/tracker/obfuscated/c0;

    iget-object v8, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v5, v6, v7, v8}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/l1;Lcom/my/tracker/obfuscated/b1;Lcom/my/tracker/obfuscated/c0;Lcom/my/tracker/obfuscated/q;)V

    iget-object v5, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v2, v5}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/c3$a;Lcom/my/tracker/obfuscated/q;)V

    if-nez v3, :cond_5

    iget-object v2, v4, Lcom/my/tracker/obfuscated/j0;->g:Lcom/my/tracker/obfuscated/d1;

    iget-object v5, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v2, v5}, Lcom/my/tracker/obfuscated/u1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/d1;Lcom/my/tracker/obfuscated/q;)V

    :cond_5
    iget-object v2, v4, Lcom/my/tracker/obfuscated/j0;->h:Lcom/my/tracker/obfuscated/j;

    iget-object v5, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v2, v5}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/j;Lcom/my/tracker/obfuscated/q;)V

    if-nez v3, :cond_6

    iget-object v2, v4, Lcom/my/tracker/obfuscated/j0;->i:Lcom/my/tracker/obfuscated/g0;

    iget-object v2, v2, Lcom/my/tracker/obfuscated/g0;->a:Ljava/util/List;

    iget-object v3, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v2, v3}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Ljava/util/List;Lcom/my/tracker/obfuscated/q;)V

    iget-object v2, v4, Lcom/my/tracker/obfuscated/j0;->i:Lcom/my/tracker/obfuscated/g0;

    iget-object v2, v2, Lcom/my/tracker/obfuscated/g0;->b:Lcom/my/tracker/obfuscated/g0$k;

    iget-object v3, v1, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-static {v0, v2, v3}, Lcom/my/tracker/obfuscated/k1;->a(Lcom/my/tracker/obfuscated/v1;Lcom/my/tracker/obfuscated/g0$k;Lcom/my/tracker/obfuscated/q;)V

    :cond_6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v4, p5

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_7
    move-object/from16 v4, p5

    :goto_1
    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    :cond_8
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/u1;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v13

    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/u1;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v10

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lcom/my/tracker/obfuscated/v1;J)Z
    .locals 3

    const-string v0, "Write timestamp send error: "

    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x4

    .line 482
    :try_start_0
    invoke-virtual {p1, v1, p2, p3}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 483
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 4

    const-string v0, "Event serialization failed, type: "

    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 577
    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p7, v2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 578
    iget-object p7, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {p7, v1, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 579
    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p7, 0x3

    invoke-virtual {p3, p7, p5}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 580
    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p5, 0x4

    invoke-virtual {p3, p5, p6}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 581
    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p5, 0x5

    invoke-virtual {p3, p5, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 582
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 583
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p2

    .line 584
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(ILjava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 496
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 497
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 498
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 499
    :try_start_1
    const-string p2, "Event serialization failed, type: 13"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(J)[B
    .locals 2

    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 586
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 587
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 588
    :try_start_1
    const-string p2, "Event serialization failed, type: 25"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(JJJ)[B
    .locals 2

    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 590
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 591
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 592
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p5, p6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 593
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 594
    :try_start_1
    const-string p2, "Event serialization failed, type: 27"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(JLjava/lang/String;Lcom/my/tracker/obfuscated/s1$a;)[B
    .locals 2

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 501
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 502
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 503
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1, v1, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x2

    if-eqz p4, :cond_1

    .line 505
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    iget p3, p4, Lcom/my/tracker/obfuscated/s1$a;->a:I

    invoke-virtual {p2, p1, p3}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    :cond_1
    if-eqz p4, :cond_2

    .line 506
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    iget-object p3, p4, Lcom/my/tracker/obfuscated/s1$a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_3

    .line 507
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    iget-object p3, p4, Lcom/my/tracker/obfuscated/s1$a;->c:Ljava/lang/String;

    const/4 p4, 0x4

    invoke-virtual {p2, p4, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 508
    :cond_3
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result p2

    if-lez p2, :cond_4

    .line 509
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p2, p1, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    .line 510
    :cond_4
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 511
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 1"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Lcom/my/tracker/ads/AdEvent;Ljava/lang/String;)[B
    .locals 4

    const-string v0, "Event serialization failed, type: "

    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 566
    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget v2, p1, Lcom/my/tracker/ads/AdEvent;->network:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 567
    iget v1, p1, Lcom/my/tracker/obfuscated/i1;->a:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 569
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p1, Lcom/my/tracker/ads/AdEvent;->currency:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 570
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p1, Lcom/my/tracker/ads/AdEvent;->source:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 571
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p1, Lcom/my/tracker/ads/AdEvent;->placementId:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 572
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p1, Lcom/my/tracker/ads/AdEvent;->adId:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 573
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p1, Lcom/my/tracker/ads/AdEvent;->adFormat:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p2, v2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 574
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p2}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 575
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/my/tracker/obfuscated/i1;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 521
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 522
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 523
    :try_start_1
    const-string v0, "Event serialization failed, type: 33"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 560
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 561
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 563
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 564
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 15"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;JJ)[B
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 513
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 514
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 516
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p5, p6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 517
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 518
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 519
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 14"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 549
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p8, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 550
    iget-object p8, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p8, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 551
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p8, 0x3

    invoke-virtual {p2, p8, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 552
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p8, 0x4

    invoke-virtual {p2, p8, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p6}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 554
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p7}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 555
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p5}, Lcom/my/tracker/obfuscated/v1;->a(II)I

    .line 557
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 558
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 32"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 525
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 526
    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 527
    iget-object p3, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 528
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 529
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 531
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1, v1, p5}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 532
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result p1

    if-lez p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 534
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 535
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 5"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 537
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p6, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 538
    iget-object p6, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p6}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 539
    iget-object p6, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p6, v2, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 540
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 p6, 0x2

    invoke-virtual {p2, p6, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 542
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->b()I

    move-result p1

    if-lez p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1, p6, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 544
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p4}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 545
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p5}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 546
    :cond_1
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 547
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 10"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 486
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 487
    iget-object p2, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 488
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 489
    :try_start_1
    const-string p2, "Event serialization failed, type: 6"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 492
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 493
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 494
    :try_start_1
    const-string v0, "Event serialization failed, type: 9"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 7

    monitor-enter p0

    const/4 v2, 0x7

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 490
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/my/tracker/obfuscated/k1;->a(IZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized b(J)[B
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 77
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 78
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    const-string p2, "Event serialization failed, type: 28"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(JJJ)[B
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 71
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 72
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 73
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p5, p6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    .line 74
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 75
    :try_start_1
    const-string p2, "Event serialization failed, type: 26"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 64
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 68
    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 2"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;JJ)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p5, p6}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    const-string p2, "Event serialization failed, type: 31"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/Map;)[B
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    .line 60
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/u1;->b:Lcom/my/tracker/obfuscated/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/my/tracker/obfuscated/v1;->a(ILjava/util/Map;Lcom/my/tracker/obfuscated/q;)I

    .line 61
    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    const-string v0, "Event serialization failed, type: 13"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 7

    monitor-enter p0

    const/16 v2, 0x8

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 58
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/my/tracker/obfuscated/k1;->a(IZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized c(J)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I

    iget-object p1, p0, Lcom/my/tracker/obfuscated/u1;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/q;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "Event serialization failed, type: 29"

    invoke-static {p2, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
