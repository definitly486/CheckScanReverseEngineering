.class public final Lio/appmetrica/analytics/impl/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ve;

.field public final b:Lio/appmetrica/analytics/impl/w7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 27
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/impl/o7;-><init>(Lio/appmetrica/analytics/impl/ve;Lio/appmetrica/analytics/impl/w7;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ve;Lio/appmetrica/analytics/impl/w7;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/appmetrica/analytics/impl/o7;->a:Lio/appmetrica/analytics/impl/ve;

    .line 26
    iput-object p2, p0, Lio/appmetrica/analytics/impl/o7;->b:Lio/appmetrica/analytics/impl/w7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ve;Lio/appmetrica/analytics/impl/w7;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/ve;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ve;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lio/appmetrica/analytics/impl/w7;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lio/appmetrica/analytics/impl/w7;-><init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/o7;-><init>(Lio/appmetrica/analytics/impl/ve;Lio/appmetrica/analytics/impl/w7;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/z7;)Lio/appmetrica/analytics/impl/q7;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lio/appmetrica/analytics/impl/z7;->a:I

    if-eq v3, v5, :cond_0

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/z7;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v11, v2, Lio/appmetrica/analytics/impl/z7;->d:J

    cmp-long v3, v3, v11

    if-eqz v3, :cond_3

    move-object v11, v5

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    iget-object v3, v0, Lio/appmetrica/analytics/impl/o7;->b:Lio/appmetrica/analytics/impl/w7;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/w7;->a(Lio/appmetrica/analytics/impl/A7;)Lio/appmetrica/analytics/impl/v7;

    move-result-object v12

    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v13, v3

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v14, v3

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/z7;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v2, Lio/appmetrica/analytics/impl/z7;->h:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v2, Lio/appmetrica/analytics/impl/z7;->i:I

    if-eq v3, v6, :cond_7

    move-object/from16 v16, v4

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v2, Lio/appmetrica/analytics/impl/z7;->j:I

    if-eq v3, v6, :cond_8

    move-object/from16 v17, v4

    goto :goto_8

    :cond_8
    const/16 v17, 0x0

    :goto_8
    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v18, v3

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    :goto_9
    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v2, Lio/appmetrica/analytics/impl/z7;->l:I

    if-eq v3, v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/impl/U8;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/U8;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_b

    :cond_b
    const/16 v19, 0x0

    :goto_b
    iget-object v3, v1, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v20, v3

    goto :goto_c

    :cond_c
    const/16 v20, 0x0

    :goto_c
    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v2, Lio/appmetrica/analytics/impl/z7;->n:I

    if-eq v3, v6, :cond_d

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/impl/sa;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/sa;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_e

    :cond_e
    const/16 v21, 0x0

    :goto_e
    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v2, Lio/appmetrica/analytics/impl/z7;->o:I

    if-eq v3, v6, :cond_f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {}, Lio/appmetrica/analytics/impl/y9;->values()[Lio/appmetrica/analytics/impl/y9;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_11

    aget-object v15, v4, v7

    move-object/from16 v23, v4

    iget v4, v15, Lio/appmetrica/analytics/impl/y9;->a:I

    if-ne v4, v3, :cond_10

    goto :goto_11

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v23

    goto :goto_10

    :cond_11
    sget-object v15, Lio/appmetrica/analytics/impl/y9;->b:Lio/appmetrica/analytics/impl/y9;

    goto :goto_11

    :cond_12
    const/4 v15, 0x0

    :goto_11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o7;->a:Lio/appmetrica/analytics/impl/ve;

    iget v3, v1, Lio/appmetrica/analytics/impl/z7;->p:I

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/ve;->a(I)Ljava/lang/Boolean;

    move-result-object v23

    iget v0, v1, Lio/appmetrica/analytics/impl/z7;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Lio/appmetrica/analytics/impl/z7;->q:I

    if-eq v0, v4, :cond_13

    move-object/from16 v24, v3

    goto :goto_12

    :cond_13
    const/16 v24, 0x0

    :goto_12
    iget-object v0, v1, Lio/appmetrica/analytics/impl/z7;->r:[B

    iget-object v3, v2, Lio/appmetrica/analytics/impl/z7;->r:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v25, v0

    goto :goto_13

    :cond_14
    const/16 v25, 0x0

    :goto_13
    iget v0, v1, Lio/appmetrica/analytics/impl/z7;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v2, Lio/appmetrica/analytics/impl/z7;->s:I

    if-eq v0, v2, :cond_15

    move-object/from16 v26, v1

    goto :goto_14

    :cond_15
    const/16 v26, 0x0

    :goto_14
    new-instance v7, Lio/appmetrica/analytics/impl/q7;

    move-object/from16 v22, v15

    move-object v15, v5

    invoke-direct/range {v7 .. v26}, Lio/appmetrica/analytics/impl/q7;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/appmetrica/analytics/impl/v7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/impl/U8;Ljava/lang/String;Lio/appmetrica/analytics/impl/sa;Lio/appmetrica/analytics/impl/y9;Ljava/lang/Boolean;Ljava/lang/Integer;[BLjava/lang/Integer;)V

    return-object v7
.end method

.method public final a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/z7;
    .locals 3

    .line 339
    new-instance v0, Lio/appmetrica/analytics/impl/z7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z7;-><init>()V

    .line 340
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 342
    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->a:I

    .line 343
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 344
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/String;

    .line 345
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 346
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/String;

    .line 347
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 348
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 349
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/z7;->d:J

    .line 350
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->e:Lio/appmetrica/analytics/impl/v7;

    if-eqz v1, :cond_4

    .line 351
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o7;->b:Lio/appmetrica/analytics/impl/w7;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/w7;->a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/A7;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->e:Lio/appmetrica/analytics/impl/A7;

    .line 352
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 353
    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->f:Ljava/lang/String;

    .line 354
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 355
    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->g:Ljava/lang/String;

    .line 356
    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 357
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 358
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/z7;->h:J

    .line 359
    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 360
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 361
    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->i:I

    .line 362
    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 363
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 364
    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->j:I

    .line 365
    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 366
    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->k:Ljava/lang/String;

    .line 367
    :cond_a
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->l:Lio/appmetrica/analytics/impl/U8;

    if-eqz v1, :cond_b

    .line 368
    iget v1, v1, Lio/appmetrica/analytics/impl/U8;->a:I

    .line 369
    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->l:I

    .line 370
    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 371
    iput-object v1, v0, Lio/appmetrica/analytics/impl/z7;->m:Ljava/lang/String;

    .line 372
    :cond_c
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->n:Lio/appmetrica/analytics/impl/sa;

    if-eqz v1, :cond_d

    .line 373
    iget v1, v1, Lio/appmetrica/analytics/impl/sa;->a:I

    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->n:I

    .line 374
    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->o:Lio/appmetrica/analytics/impl/y9;

    if-eqz v1, :cond_e

    .line 375
    iget v1, v1, Lio/appmetrica/analytics/impl/y9;->a:I

    iput v1, v0, Lio/appmetrica/analytics/impl/z7;->o:I

    .line 376
    :cond_e
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 377
    iget-object p0, p0, Lio/appmetrica/analytics/impl/o7;->a:Lio/appmetrica/analytics/impl/ve;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/ve;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/z7;->p:I

    .line 378
    :cond_f
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->q:Ljava/lang/Integer;

    if-eqz p0, :cond_10

    .line 379
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 380
    iput p0, v0, Lio/appmetrica/analytics/impl/z7;->q:I

    .line 381
    :cond_10
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->r:[B

    if-eqz p0, :cond_11

    .line 382
    iput-object p0, v0, Lio/appmetrica/analytics/impl/z7;->r:[B

    .line 383
    :cond_11
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->s:Ljava/lang/Integer;

    if-eqz p0, :cond_12

    .line 384
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 385
    iput p0, v0, Lio/appmetrica/analytics/impl/z7;->s:I

    :cond_12
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/q7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/z7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/z7;)Lio/appmetrica/analytics/impl/q7;

    move-result-object p0

    return-object p0
.end method
