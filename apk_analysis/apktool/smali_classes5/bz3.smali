.class public final Lbz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbz3$a;,
        Lbz3$b;
    }
.end annotation


# instance fields
.field public final a:Lbz3$b;

.field public volatile b:Lox2;

.field public volatile c:Lbz3$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    sget-object p1, Lbz3$b;->a:Lcz3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz3;->a:Lbz3$b;

    sget-object p1, Lox2;->b:Lox2;

    iput-object p1, p0, Lbz3;->b:Lox2;

    sget-object p1, Lbz3$a;->NONE:Lbz3$a;

    iput-object p1, p0, Lbz3;->c:Lbz3$a;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lbz3;->c:Lbz3$a;

    iget-object v3, v0, Lez6;->e:Lb37;

    sget-object v4, Lbz3$a;->NONE:Lbz3$a;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v3}, Lez6;->b(Lb37;)Lz47;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lbz3$a;->BODY:Lbz3$a;

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    sget-object v7, Lbz3$a;->HEADERS:Lbz3$a;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_1
    iget-object v2, v3, Lb37;->d:Lg37;

    iget-object v7, v0, Lez6;->d:Ln13;

    if-eqz v7, :cond_4

    iget-object v7, v7, Ln13;->f:Lly6;

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lb37;->a:Lfz3;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    const-string v12, ""

    if-eqz v7, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lly6;->f:Lts6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v12

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "-byte body)"

    const-string v13, " ("

    if-nez v6, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v7, v13}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lg37;->a()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v14, v1, Lbz3;->a:Lbz3$b;

    invoke-interface {v14, v7}, Lbz3$b;->a(Ljava/lang/String;)V

    const-string v7, "identity"

    const-string v14, "gzip"

    const-string v15, "Content-Encoding"

    const-string v5, "-byte body omitted)"

    const-wide/16 v16, -0x1

    if-eqz v6, :cond_12

    iget-object v8, v3, Lb37;->c:Ljv3;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lg37;->b()Lj95;

    move-result-object v10

    move/from16 v18, v4

    if-eqz v10, :cond_7

    const-string v4, "Content-Type"

    invoke-virtual {v8, v4}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, v1, Lbz3;->a:Lbz3$b;

    move/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v20, v11

    const-string v11, "Content-Type: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lbz3$b;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move/from16 v19, v6

    move-object/from16 v20, v11

    :goto_4
    invoke-virtual {v2}, Lg37;->a()J

    move-result-wide v10

    cmp-long v4, v10, v16

    if-eqz v4, :cond_9

    const-string v4, "Content-Length"

    invoke-virtual {v8, v4}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, v1, Lbz3;->a:Lbz3$b;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Content-Length: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lg37;->a()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lbz3$b;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v11

    :cond_9
    :goto_5
    invoke-virtual {v8}, Ljv3;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_a

    invoke-virtual {v1, v8, v6}, Lbz3;->b(Ljv3;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    const-string v4, "--> END "

    if-eqz v18, :cond_b

    if-nez v2, :cond_c

    :cond_b
    move-object v10, v14

    move-object/from16 v21, v15

    goto/16 :goto_9

    :cond_c
    iget-object v6, v3, Lb37;->c:Ljv3;

    invoke-virtual {v6, v15}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v2, v1, Lbz3;->a:Lbz3$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (encoded body omitted)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lbz3$b;->a(Ljava/lang/String;)V

    :goto_7
    move-object v10, v14

    move-object/from16 v21, v15

    goto/16 :goto_a

    :cond_e
    :goto_8
    new-instance v6, Lbu0;

    invoke-direct {v6}, Lbu0;-><init>()V

    invoke-virtual {v2, v6}, Lg37;->c(Lvu0;)V

    invoke-virtual {v2}, Lg37;->b()Lj95;

    move-result-object v8

    if-eqz v8, :cond_f

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10}, Lj95;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v8

    if-nez v8, :cond_10

    :cond_f
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    iget-object v10, v1, Lbz3;->a:Lbz3$b;

    invoke-interface {v10, v12}, Lbz3$b;->a(Ljava/lang/String;)V

    invoke-static {v6}, Lsm1;->a(Lbu0;)Z

    move-result v10

    iget-object v11, v1, Lbz3;->a:Lbz3$b;

    if-eqz v10, :cond_11

    move-object v10, v14

    move-object/from16 v21, v15

    iget-wide v14, v6, Lbu0;->c:J

    invoke-virtual {v6, v14, v15, v8}, Lbu0;->n0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Lbz3$b;->a(Ljava/lang/String;)V

    iget-object v6, v1, Lbz3;->a:Lbz3$b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lg37;->a()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    move-object v10, v14

    move-object/from16 v21, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (binary "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lg37;->a()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    iget-object v2, v1, Lbz3;->a:Lbz3$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lbz3$b;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v11

    goto/16 :goto_7

    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :try_start_0
    invoke-virtual {v0, v3}, Lez6;->b(Lb37;)Lz47;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v2, v14

    iget-object v4, v0, Lz47;->h:Lb57;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lb57;->o()J

    move-result-wide v14

    cmp-long v6, v14, v16

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_13
    const-string v6, "unknown-length"

    :goto_b
    iget-object v8, v1, Lbz3;->a:Lbz3$b;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    const-string v4, "<-- "

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lz47;->e:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lz47;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v17, v10

    move-object v4, v12

    goto :goto_c

    :cond_14
    iget-object v4, v0, Lz47;->d:Ljava/lang/String;

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    invoke-static {v10, v4}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_c
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lz47;->b:Lb37;

    iget-object v4, v4, Lb37;->a:Lfz3;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v19, :cond_15

    const-string v2, ", "

    const-string v3, " body"

    invoke-static {v2, v6, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_15
    move-object v2, v12

    :goto_d
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    if-eqz v19, :cond_22

    iget-object v2, v0, Lz47;->g:Ljv3;

    invoke-virtual {v2}, Ljv3;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_16

    invoke-virtual {v1, v2, v4}, Lbz3;->b(Ljv3;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_16
    if-eqz v18, :cond_21

    invoke-static {v0}, Laz3;->a(Lz47;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_11

    :cond_17
    iget-object v3, v0, Lz47;->g:Ljv3;

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    :cond_18
    move-object/from16 v10, v17

    goto :goto_f

    :cond_19
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    move-object/from16 v10, v17

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v1, v1, Lbz3;->a:Lbz3$b;

    const-string v2, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1a
    :goto_f
    invoke-virtual/range {v16 .. v16}, Lb57;->L()Lwu0;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v3, v6, v7}, Lwu0;->request(J)Z

    invoke-interface {v3}, Lwu0;->getBuffer()Lbu0;

    move-result-object v3

    invoke-virtual {v2, v4}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v6, v3, Lbu0;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v2, Lxt3;

    invoke-virtual {v3}, Lbu0;->y()Lbu0;

    move-result-object v3

    invoke-direct {v2, v3}, Lxt3;-><init>(Lv48;)V

    :try_start_1
    new-instance v3, Lbu0;

    invoke-direct {v3}, Lbu0;-><init>()V

    invoke-virtual {v3, v2}, Lbu0;->j0(Lv48;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lxt3;->close()V

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1b
    const/4 v8, 0x0

    :goto_10
    invoke-virtual/range {v16 .. v16}, Lb57;->p()Lj95;

    move-result-object v2

    if-eqz v2, :cond_1c

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Lj95;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_1d

    :cond_1c
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1d
    invoke-static {v3}, Lsm1;->a(Lbu0;)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v2, v1, Lbz3;->a:Lbz3$b;

    invoke-interface {v2, v12}, Lbz3$b;->a(Ljava/lang/String;)V

    iget-object v1, v1, Lbz3;->a:Lbz3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<-- END HTTP (binary "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v3, Lbu0;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1e
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lbz3;->a:Lbz3$b;

    invoke-interface {v4, v12}, Lbz3$b;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lbz3;->a:Lbz3$b;

    invoke-virtual {v3}, Lbu0;->y()Lbu0;

    move-result-object v5

    iget-wide v6, v5, Lbu0;->c:J

    invoke-virtual {v5, v6, v7, v2}, Lbu0;->n0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    :cond_1f
    iget-object v1, v1, Lbz3;->a:Lbz3$b;

    iget-wide v2, v3, Lbu0;->c:J

    const-string v4, "<-- END HTTP ("

    if-eqz v8, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte, "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-gzipped-byte body)"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_21
    :goto_11
    iget-object v1, v1, Lbz3;->a:Lbz3$b;

    const-string v2, "<-- END HTTP"

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    :cond_22
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, v1, Lbz3;->a:Lbz3$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<-- HTTP FAILED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbz3$b;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljv3;I)V
    .locals 2

    iget-object v0, p0, Lbz3;->b:Lox2;

    invoke-virtual {p1, p2}, Ljv3;->b(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lbz3;->a:Lbz3$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lbz3$b;->a(Ljava/lang/String;)V

    return-void
.end method
