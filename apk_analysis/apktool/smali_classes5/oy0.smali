.class public final Loy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "Connection"

    const-string v2, "close"

    const-string v3, "HTTP "

    iget-object v4, v0, Lez6;->d:Ln13;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Ln13;->d:Lo13;

    iget-object v6, v4, Ln13;->f:Lly6;

    iget-object v7, v4, Ln13;->b:Lokhttp3/b;

    iget-object v8, v4, Ln13;->a:Ljy6;

    iget-object v9, v0, Lez6;->e:Lb37;

    iget-object v0, v9, Lb37;->d:Lg37;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v7, v8}, Lokhttp3/b;->requestHeadersStart(Lokhttp3/a;)V

    invoke-interface {v5, v9}, Lo13;->f(Lb37;)V

    invoke-virtual {v7, v8, v9}, Lokhttp3/b;->requestHeadersEnd(Lokhttp3/a;Lb37;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    :try_start_1
    iget-object v15, v9, Lb37;->b:Ljava/lang/String;

    invoke-static {v15}, Lzd3;->f(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v15, :cond_4

    if-eqz v0, :cond_4

    :try_start_2
    const-string v15, "100-continue"

    const-string v12, "Expect"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v14, v9, Lb37;->c:Ljv3;

    invoke-virtual {v14, v12}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v12, :cond_0

    :try_start_5
    invoke-interface {v5}, Lo13;->d()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v4, v13}, Ln13;->c(Z)Lz47$a;

    move-result-object v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-virtual {v7, v8}, Lokhttp3/b;->responseHeadersStart(Lokhttp3/a;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v14, v12

    const/4 v12, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v12

    :goto_0
    const/4 v12, 0x0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v17, v5

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v7, v8, v0}, Lokhttp3/b;->requestFailed(Lokhttp3/a;Ljava/io/IOException;)V

    invoke-virtual {v4, v0}, Ln13;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_0
    move v12, v13

    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_1

    :try_start_9
    iget-object v13, v9, Lb37;->d:Lg37;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move v15, v12

    :try_start_a
    invoke-virtual {v13}, Lg37;->a()J

    move-result-wide v12

    invoke-virtual {v7, v8}, Lokhttp3/b;->requestBodyStart(Lokhttp3/a;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v16, v14

    :try_start_b
    invoke-interface {v5, v9, v12, v13}, Lo13;->b(Lb37;J)Ls18;

    move-result-object v14
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v17, v5

    :try_start_c
    new-instance v5, Ln13$a;

    invoke-direct {v5, v4, v14, v12, v13}, Ln13$a;-><init>(Ln13;Ls18;J)V

    new-instance v12, Lhy6;

    invoke-direct {v12, v5}, Lhy6;-><init>(Ls18;)V

    invoke-virtual {v0, v12}, Lg37;->c(Lvu0;)V

    invoke-virtual {v12}, Lhy6;->close()V

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_3
    move v13, v15

    goto :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    move v15, v12

    :goto_4
    move-object/from16 v16, v14

    goto :goto_3

    :cond_1
    move-object/from16 v17, v5

    move v15, v12

    move-object/from16 v16, v14

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v4, v13, v5, v12}, Ljy6;->f(Ln13;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v0, v6, Lly6;->g:Lhy3;

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_3

    invoke-interface/range {v17 .. v17}, Lo13;->a()Lly6;

    move-result-object v0

    invoke-virtual {v0}, Lly6;->l()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    :cond_3
    :goto_6
    move v13, v15

    const/4 v12, 0x0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_1

    :cond_4
    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/4 v12, 0x0

    :try_start_d
    invoke-virtual {v8, v4, v13, v5, v12}, Ljy6;->f(Ln13;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v16, v12

    :goto_7
    :try_start_e
    invoke-interface/range {v17 .. v17}, Lo13;->e()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    move v5, v13

    move-object v13, v12

    goto :goto_a

    :catch_8
    move-exception v0

    :try_start_f
    invoke-virtual {v7, v8, v0}, Lokhttp3/b;->requestFailed(Lokhttp3/a;Ljava/io/IOException;)V

    invoke-virtual {v4, v0}, Ln13;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    :goto_8
    move-object/from16 v16, v12

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v17, v5

    const/4 v12, 0x0

    goto :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v17, v5

    const/4 v12, 0x0

    :try_start_10
    invoke-virtual {v7, v8, v0}, Lokhttp3/b;->requestFailed(Lokhttp3/a;Ljava/io/IOException;)V

    invoke-virtual {v4, v0}, Ln13;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    :goto_9
    instance-of v5, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v5, :cond_11

    iget-boolean v5, v4, Ln13;->e:Z

    if-eqz v5, :cond_10

    move v5, v13

    move-object v13, v0

    :goto_a
    if-nez v16, :cond_5

    const/4 v14, 0x0

    :try_start_11
    invoke-virtual {v4, v14}, Ln13;->c(Z)Lz47$a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-virtual {v7, v8}, Lokhttp3/b;->responseHeadersStart(Lokhttp3/a;)V

    move-object/from16 v0, v16

    const/4 v5, 0x0

    goto :goto_b

    :catch_d
    move-exception v0

    goto/16 :goto_10

    :cond_5
    move-object/from16 v0, v16

    :goto_b
    iput-object v9, v0, Lz47$a;->a:Lb37;

    iget-object v14, v6, Lly6;->e:Llu3;

    iput-object v14, v0, Lz47$a;->e:Llu3;

    iput-wide v10, v0, Lz47$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Lz47$a;->l:J

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object v0

    iget v14, v0, Lz47;->e:I

    const/16 v15, 0x64

    if-ne v14, v15, :cond_6

    :goto_c
    const/4 v14, 0x0

    goto :goto_d

    :cond_6
    const/16 v15, 0x66

    if-gt v15, v14, :cond_8

    const/16 v15, 0xc8

    if-ge v14, v15, :cond_8

    goto :goto_c

    :goto_d
    invoke-virtual {v4, v14}, Ln13;->c(Z)Lz47$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_7

    invoke-virtual {v7, v8}, Lokhttp3/b;->responseHeadersStart(Lokhttp3/a;)V

    :cond_7
    iput-object v9, v0, Lz47$a;->a:Lb37;

    iget-object v5, v6, Lly6;->e:Llu3;

    iput-object v5, v0, Lz47$a;->e:Llu3;

    iput-wide v10, v0, Lz47$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lz47$a;->l:J

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object v0

    iget v14, v0, Lz47;->e:I

    :cond_8
    invoke-virtual {v7, v8, v0}, Lokhttp3/b;->responseHeadersEnd(Lokhttp3/a;Lz47;)V

    invoke-virtual {v0}, Lz47;->p()Lz47$a;

    move-result-object v5

    invoke-virtual {v4, v0}, Ln13;->b(Lz47;)Lhz6;

    move-result-object v0

    iput-object v0, v5, Lz47$a;->g:Lb57;

    invoke-virtual {v5}, Lz47$a;->a()Lz47;

    move-result-object v0

    iget-object v4, v0, Lz47;->b:Lb37;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lb37;->c:Ljv3;

    invoke-virtual {v4, v1}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v0, v1}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-interface/range {v17 .. v17}, Lo13;->a()Lly6;

    move-result-object v1

    invoke-virtual {v1}, Lly6;->l()V

    :cond_a
    const/16 v1, 0xcc

    if-eq v14, v1, :cond_b

    const/16 v1, 0xcd

    if-ne v14, v1, :cond_e

    :cond_b
    iget-object v1, v0, Lz47;->h:Lb57;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lb57;->o()J

    move-result-wide v1

    goto :goto_e

    :cond_c
    const-wide/16 v1, -0x1

    :goto_e
    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_e

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lz47;->h:Lb57;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lb57;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_f

    :cond_d
    move-object v14, v12

    :goto_f
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :cond_e
    return-object v0

    :goto_10
    if-eqz v13, :cond_f

    invoke-static {v13, v0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v13

    :cond_f
    throw v0

    :cond_10
    throw v0

    :cond_11
    throw v0
.end method
