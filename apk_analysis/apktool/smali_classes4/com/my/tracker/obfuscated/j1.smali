.class public final Lcom/my/tracker/obfuscated/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/my/tracker/obfuscated/h1;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field f:J

.field g:J


# direct methods
.method private constructor <init>(Lcom/my/tracker/obfuscated/h1;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    iput p2, p0, Lcom/my/tracker/obfuscated/j1;->b:I

    iput p3, p0, Lcom/my/tracker/obfuscated/j1;->c:I

    iput p4, p0, Lcom/my/tracker/obfuscated/j1;->d:I

    iput p5, p0, Lcom/my/tracker/obfuscated/j1;->e:I

    const-string p2, "timestamp_base"

    invoke-virtual {p1, p2}, Lcom/my/tracker/obfuscated/h1;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/my/tracker/obfuscated/j1;->f:J

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/my/tracker/obfuscated/j1;->f:J

    :goto_0
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/h1;->l()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/my/tracker/obfuscated/j1;->g:J

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/h1;)Lcom/my/tracker/obfuscated/j1;
    .locals 3

    const/16 v0, 0x1f4

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    .line 314
    invoke-static {p0, v2, v0, v0, v1}, Lcom/my/tracker/obfuscated/j1;->a(Lcom/my/tracker/obfuscated/h1;IIII)Lcom/my/tracker/obfuscated/j1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/my/tracker/obfuscated/h1;IIII)Lcom/my/tracker/obfuscated/j1;
    .locals 6

    .line 260
    :try_start_0
    new-instance v0, Lcom/my/tracker/obfuscated/j1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/my/tracker/obfuscated/j1;-><init>(Lcom/my/tracker/obfuscated/h1;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 261
    const-string p1, "MyTrackerRepository error: failed to create MyTrackerRepository instance"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private c(I[BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MyTrackerRepository error: event serialization failed, type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 331
    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/h1;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 332
    const-string p1, "MyTrackerRepository error: "

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/my/tracker/obfuscated/f;)V
    .locals 11

    .line 302
    const-string v1, ", signature "

    const-string v0, "MyTrackerRepository: appgallery raw purchase was inserted; id: "

    const-string v2, "MyTrackerRepository: appgalleery raw purchase with data: "

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->f()Ljava/lang/String;

    move-result-object v7

    .line 305
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->g()I

    move-result v8

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v3}, Lcom/my/tracker/obfuscated/h1;->g()J

    move-result-wide v3

    .line 307
    iget v9, p0, Lcom/my/tracker/obfuscated/j1;->e:I

    int-to-long v9, v9

    cmp-long v3, v3, v9

    if-ltz v3, :cond_0

    .line 308
    const-string p0, "MyTrackerRepository: max count of raw purchases is reached"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t inserted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->h()J

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long p0, v2, v7

    if-ltz p0, :cond_1

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", signature: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 312
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/my/tracker/obfuscated/f;->a(Ljava/lang/Long;)Lcom/my/tracker/obfuscated/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 313
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MyTrackerRepository error: can\'t insert appgallery raw purchase with data: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/my/tracker/obfuscated/s0;)V
    .locals 9

    .line 292
    const-string v0, ", signature "

    const-string v1, "MyTrackerRepository: raw purchase was inserted; id: "

    const-string v2, "MyTrackerRepository: raw purchase with data: "

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/s0;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/s0;->a()Ljava/lang/String;

    move-result-object v4

    .line 294
    :try_start_0
    iget-object v5, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v5}, Lcom/my/tracker/obfuscated/h1;->j()J

    move-result-wide v5

    .line 295
    iget v7, p0, Lcom/my/tracker/obfuscated/j1;->e:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 296
    const-string p0, "MyTrackerRepository: max count of raw purchases is reached"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t inserted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/s0;->f()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-ltz p0, :cond_1

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signature: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 300
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/my/tracker/obfuscated/s0;->a(Ljava/lang/Long;)Lcom/my/tracker/obfuscated/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 301
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "MyTrackerRepository error: can\'t insert raw purchase with data: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a([B)V
    .locals 3

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/my/tracker/obfuscated/h1;->i(J)V

    .line 329
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/h1;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 330
    const-string p1, "MyTrackerRepository error: "

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/h1;->c()V

    .line 316
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/h1;->b()V

    .line 317
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/h1;->e()V

    .line 318
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/h1;->d()V

    .line 319
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/h1;->a()V

    .line 320
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v1, "custom_events_skipped_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v0, 0x0

    .line 321
    iput-wide v0, p0, Lcom/my/tracker/obfuscated/j1;->g:J

    .line 322
    iget-object v2, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v3, "default_session"

    invoke-virtual {v2, v3}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/h1$f;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    :try_start_1
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$f;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/my/tracker/obfuscated/j1;->c(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/my/tracker/obfuscated/j1;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p0, 0x1

    return p0

    :goto_1
    if-eqz v2, :cond_1

    .line 327
    :try_start_3
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const/4 p0, 0x0

    return p0
.end method

.method public a(I[BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p3

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public a(I[BZZJ)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    const-string v6, "MyTrackerRepository: maximum count of event timestamps is exceeded, remove oldest timestamps, count: "

    const-string v7, "MyTrackerRepository: event timestamps count: "

    const-string v8, "MyTrackerRepository error: event insertion failed, type: "

    const-string v9, "MyTrackerRepository: aggregate "

    const-string v10, "MyTrackerRepository: insert "

    :try_start_0
    sget-wide v12, Lcom/my/tracker/obfuscated/h1;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p4, :cond_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_1
    iget-object v11, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-wide/16 v18, 0x0

    int-to-long v14, v1

    invoke-virtual {v11, v14, v15, v2}, Lcom/my/tracker/obfuscated/h1;->b(J[B)Lcom/my/tracker/obfuscated/h1$c;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/my/tracker/obfuscated/h1$c;->a()J

    move-result-wide v12

    invoke-virtual/range {v16 .. v16}, Lcom/my/tracker/obfuscated/h1$c;->c()J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-wide/from16 v14, v18

    :goto_0
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :goto_1
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_1
    throw v0

    :cond_2
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-wide/from16 v14, v18

    :goto_2
    sget-wide v20, Lcom/my/tracker/obfuscated/h1;->y:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v11, v12, v20

    move/from16 p4, v11

    const-string v11, " event"

    if-nez p4, :cond_3

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v9, v1, v2, v3}, Lcom/my/tracker/obfuscated/h1;->a(I[BZ)J

    move-result-wide v12

    sget-wide v9, Lcom/my/tracker/obfuscated/h1;->y:J

    cmp-long v2, v12, v9

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-wide v2, v0, Lcom/my/tracker/obfuscated/j1;->g:J

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    iput-wide v2, v0, Lcom/my/tracker/obfuscated/j1;->g:J

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    :cond_4
    :goto_3
    sget-wide v2, Lcom/my/tracker/obfuscated/h1;->y:J

    cmp-long v2, v12, v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return v17

    :cond_5
    iget-wide v2, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_6

    invoke-virtual {v0, v4, v5}, Lcom/my/tracker/obfuscated/j1;->c(J)V

    :cond_6
    iget-object v2, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    iget-wide v9, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    sub-long v3, v4, v9

    invoke-virtual {v2, v12, v13, v3, v4}, Lcom/my/tracker/obfuscated/h1;->c(JJ)V

    iget-object v2, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v2, v12, v13}, Lcom/my/tracker/obfuscated/h1;->d(J)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget v4, v0, Lcom/my/tracker/obfuscated/j1;->b:I

    int-to-long v4, v4

    cmp-long v7, v2, v4

    if-lez v7, :cond_7

    iget-object v7, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    sub-long/2addr v2, v4

    invoke-virtual {v7, v12, v13, v2, v3}, Lcom/my/tracker/obfuscated/h1;->a(JJ)J

    move-result-wide v2

    iget-object v0, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    add-long/2addr v14, v2

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/my/tracker/obfuscated/h1;->d(JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    const/4 v0, 0x1

    return v0

    :catchall_2
    move-exception v0

    const/16 v17, 0x0

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v17
.end method

.method public a(JJ)Z
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "MyTrackerRepository error: session insertion failed "

    const-string v2, "default_session"

    const-string v3, "MyTrackerRepository: maximum count of session timestamps is exceeded, remove oldest timestamps, count: "

    const-string v4, "MyTrackerRepository: session timestamps count: "

    const/4 v6, 0x0

    .line 264
    :try_start_0
    iget-object v7, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v7, v2}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/h1$f;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 265
    :try_start_1
    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_3

    .line 266
    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$f;->a()J

    move-result-wide v11

    .line 267
    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$f;->m()J

    move-result-wide v13

    .line 268
    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$f;->c()J

    move-result-wide v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v6

    const/4 v7, 0x0

    .line 269
    :try_start_2
    iget-wide v5, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {v0, v13, v14}, Lcom/my/tracker/obfuscated/j1;->c(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, v20

    goto/16 :goto_4

    .line 271
    :cond_0
    :goto_0
    const-string v2, "MyTrackerRepository: finish previous session"

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v2, p3, v8

    .line 272
    iget-object v10, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    if-nez v2, :cond_1

    .line 273
    :try_start_3
    iget-wide v5, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    sub-long/2addr v13, v5

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/my/tracker/obfuscated/h1;->a(JJZJ)V

    goto :goto_1

    .line 274
    :cond_1
    iget-wide v5, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    sub-long/2addr v13, v5

    const/4 v15, 0x0

    sub-long v16, p3, v5

    invoke-virtual/range {v10 .. v17}, Lcom/my/tracker/obfuscated/h1;->a(JJZJ)V

    .line 275
    :goto_1
    iget-object v2, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v2, v11, v12}, Lcom/my/tracker/obfuscated/h1;->g(J)J

    move-result-wide v5

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 277
    iget v2, v0, Lcom/my/tracker/obfuscated/j1;->d:I

    int-to-long v13, v2

    cmp-long v2, v5, v13

    if-lez v2, :cond_2

    .line 278
    iget-object v2, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    sub-long/2addr v5, v13

    invoke-virtual {v2, v11, v12, v5, v6}, Lcom/my/tracker/obfuscated/h1;->b(JJ)J

    move-result-wide v8

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 280
    :cond_2
    const-string v2, "MyTrackerRepository: start new session"

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 281
    iget-object v10, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    add-long v15, v18, v8

    move-wide/from16 v13, p1

    invoke-virtual/range {v10 .. v16}, Lcom/my/tracker/obfuscated/h1;->a(JJJ)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v20, v6

    :goto_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v20, v6

    const/4 v7, 0x0

    .line 282
    const-string v3, "MyTrackerRepository: insert session"

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 283
    iget-object v3, v0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    move-wide/from16 v13, p1

    invoke-virtual {v3, v2, v13, v14}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;J)J

    move-result-wide v2

    sget-wide v4, Lcom/my/tracker/obfuscated/h1;->y:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 284
    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    invoke-virtual/range {v20 .. v20}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return v7

    .line 286
    :cond_4
    :try_start_4
    iget-wide v2, v0, Lcom/my/tracker/obfuscated/j1;->f:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_5

    .line 287
    invoke-virtual/range {p0 .. p2}, Lcom/my/tracker/obfuscated/j1;->c(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    :cond_5
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 289
    :goto_4
    :try_start_5
    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v6, :cond_6

    .line 290
    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_6
    return v7

    :catchall_3
    move-exception v0

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    .line 291
    :cond_7
    throw v0
.end method

.method public a([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xe

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 262
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public b()Lcom/my/tracker/obfuscated/b2;
    .locals 1

    .line 86
    new-instance v0, Lcom/my/tracker/obfuscated/c2;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-direct {v0, p0}, Lcom/my/tracker/obfuscated/c2;-><init>(Lcom/my/tracker/obfuscated/h1;)V

    return-object v0
.end method

.method public b(Lcom/my/tracker/obfuscated/f;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/f;->b()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/my/tracker/obfuscated/h1;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyTrackerRepository error: error while removing raw appgallery purchase with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/my/tracker/obfuscated/s0;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/s0;->b()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/my/tracker/obfuscated/h1;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyTrackerRepository error: error while removing raw purchase with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(I[BJ)Z
    .locals 10

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    move v5, v0

    :goto_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/my/tracker/obfuscated/h1;->f(J)J

    move-result-wide v6

    iget v0, p0, Lcom/my/tracker/obfuscated/j1;->c:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v0, v2, v3, p2}, Lcom/my/tracker/obfuscated/h1;->a(J[B)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const-string p0, "MyTrackerRepository: maximum count of mini-app custom events is exceeded, event has been skipped"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    move v3, p1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v7, p3

    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MyTrackerRepository error: event serialization failed, type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public b(J)Z
    .locals 2

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/my/tracker/obfuscated/j1;->c(I[BJ)Z

    move-result p0

    return p0
.end method

.method public b([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x21

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public c()Lcom/my/tracker/obfuscated/d2;
    .locals 2

    .line 36
    new-instance v0, Lcom/my/tracker/obfuscated/e2;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v1, "default_session"

    invoke-direct {v0, p0, v1}, Lcom/my/tracker/obfuscated/e2;-><init>(Lcom/my/tracker/obfuscated/h1;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(J)V
    .locals 3

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v1, "timestamp_base"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    iput-wide p1, p0, Lcom/my/tracker/obfuscated/j1;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 35
    const-string p1, "MyTrackerRepository error: "

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x20

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public d()Lcom/my/tracker/obfuscated/b;
    .locals 1

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1;->f()Lcom/my/tracker/obfuscated/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 99
    const-string v0, "MyTrackerRepository error: "

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d([BJ)Z
    .locals 9

    const-string v0, "custom_events_skipped_count"

    const-string v1, "MyTrackerRepository: skipped custom events count: "

    :try_start_0
    iget-object v2, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/my/tracker/obfuscated/h1;->f(J)J

    move-result-wide v5

    iget v2, p0, Lcom/my/tracker/obfuscated/j1;->c:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v2, v3, v4, p1}, Lcom/my/tracker/obfuscated/h1;->a(J[B)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "MyTrackerRepository: maximum count of custom events is exceeded, event has been skipped"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p1, v0}, Lcom/my/tracker/obfuscated/h1;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    const-wide/16 p1, 0x1

    add-long/2addr v4, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "MyTrackerRepository error: event serialization failed, type: 6"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1;->h()Lcom/my/tracker/obfuscated/h1$b;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->p()I

    move-result v6

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->e()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/my/tracker/obfuscated/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/my/tracker/obfuscated/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$b;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/tracker/obfuscated/f;->a(Ljava/lang/Long;)Lcom/my/tracker/obfuscated/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return-object v1

    :goto_1
    :try_start_1
    const-string v0, "MyTrackerRepository error: error while reading purchases"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_3
    throw p0
.end method

.method public e([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v1, 0xf

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public f()J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v2, "custom_events_skipped_count"

    invoke-virtual {p0, v2}, Lcom/my/tracker/obfuscated/h1;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    const-string v2, "Error: get custom events skipped count"

    invoke-static {v2, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public f([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public g()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1;->k()Lcom/my/tracker/obfuscated/h1$e;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$e;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$e;->e()J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/my/tracker/obfuscated/s0;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$e;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/my/tracker/obfuscated/s0;->a(Ljava/lang/Long;)Lcom/my/tracker/obfuscated/s0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return-object v0

    :goto_1
    :try_start_1
    const-string v2, "MyTrackerRepository error: error while reading purchases"

    invoke-static {v2, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    :cond_3
    throw p0
.end method

.method public g([BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x1b

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public h()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j1;->g:J

    return-wide v0
.end method

.method public h([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x1f

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public i()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/my/tracker/obfuscated/j1;->f:J

    return-wide v0
.end method

.method public i([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1;->i()Lcom/my/tracker/obfuscated/h1$c;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/j1;->a:Lcom/my/tracker/obfuscated/h1;

    const-string v1, "default_session"

    invoke-virtual {p0, v1}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/h1$f;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :try_start_4
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/h1$a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move v2, v0

    :catch_1
    :goto_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public j([BJ)Z
    .locals 1

    const/16 v0, 0x9

    .line 63
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/my/tracker/obfuscated/j1;->c(I[BJ)Z

    move-result p0

    return p0
.end method

.method public k([BJ)Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/my/tracker/obfuscated/j1;->c(I[BJ)Z

    move-result p0

    return p0
.end method

.method public l([BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x19

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public m([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public n([BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x1a

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public o([BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x1c

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public p([BJ)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x1d

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public q([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public r([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v1, 0x8

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method

.method public s([BJ)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/my/tracker/obfuscated/j1;->a(I[BZZJ)Z

    move-result p0

    return p0
.end method
