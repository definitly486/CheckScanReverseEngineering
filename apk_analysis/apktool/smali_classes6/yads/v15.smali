.class public final Lyads/v15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/zs2;
.implements Lyads/ku3;
.implements Lyads/ou3;


# static fields
.field public static final N:Ljava/util/Map;

.field public static final O:Lyads/vz2;


# instance fields
.field public A:J

.field public B:Z

.field public C:I

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public K:I

.field public L:Z

.field public M:Z

.field public final b:Landroid/net/Uri;

.field public final c:Lyads/wc0;

.field public final d:Lyads/xl2;

.field public final e:Lyads/ll0;

.field public final f:Lyads/k14;

.field public final g:Lyads/tl2;

.field public final h:Lyads/y15;

.field public final i:Lyads/aj0;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Lyads/ru3;

.field public final m:Lyads/ov;

.field public final n:Lyads/m50;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public final q:Landroid/os/Handler;

.field public r:Lyads/y04;

.field public s:Lyads/hb3;

.field public t:[Lyads/lc5;

.field public u:[Lyads/t15;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lyads/u15;

.field public z:Lyads/sh5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyads/v15;->N:Ljava/util/Map;

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    const-string v1, "icy"

    iput-object v1, v0, Lyads/uz2;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    iput-object v1, v0, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    sput-object v1, Lyads/v15;->O:Lyads/vz2;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lyads/wc0;Lyads/ov;Lyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;Lyads/y15;Lyads/aj0;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v15;->b:Landroid/net/Uri;

    iput-object p2, p0, Lyads/v15;->c:Lyads/wc0;

    iput-object p4, p0, Lyads/v15;->d:Lyads/xl2;

    iput-object p5, p0, Lyads/v15;->g:Lyads/tl2;

    iput-object p6, p0, Lyads/v15;->e:Lyads/ll0;

    iput-object p7, p0, Lyads/v15;->f:Lyads/k14;

    iput-object p8, p0, Lyads/v15;->h:Lyads/y15;

    iput-object p9, p0, Lyads/v15;->i:Lyads/aj0;

    iput-object p10, p0, Lyads/v15;->j:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Lyads/v15;->k:J

    new-instance p1, Lyads/ru3;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lyads/ru3;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/v15;->l:Lyads/ru3;

    iput-object p3, p0, Lyads/v15;->m:Lyads/ov;

    new-instance p1, Lyads/m50;

    invoke-direct {p1}, Lyads/m50;-><init>()V

    iput-object p1, p0, Lyads/v15;->n:Lyads/m50;

    new-instance p1, Lwea;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lwea;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lyads/v15;->o:Ljava/lang/Runnable;

    new-instance p1, Loh5;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Loh5;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lyads/v15;->p:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-static {p1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lyads/v15;->q:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lyads/t15;

    iput-object p2, p0, Lyads/v15;->u:[Lyads/t15;

    new-array p1, p1, [Lyads/lc5;

    iput-object p1, p0, Lyads/v15;->t:[Lyads/lc5;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/v15;->I:J

    iput-wide p1, p0, Lyads/v15;->A:J

    const/4 p1, 0x1

    iput p1, p0, Lyads/v15;->C:I

    return-void
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 8

    .line 344
    invoke-virtual {p0}, Lyads/v15;->c()V

    .line 345
    iget-object v0, p0, Lyads/v15;->z:Lyads/sh5;

    invoke-interface {v0}, Lyads/sh5;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 346
    :cond_0
    iget-object p0, p0, Lyads/v15;->z:Lyads/sh5;

    invoke-interface {p0, p1, p2}, Lyads/sh5;->b(J)Lyads/qh5;

    move-result-object p0

    .line 347
    iget-object v0, p0, Lyads/qh5;->a:Lyads/uh5;

    iget-wide v4, v0, Lyads/uh5;->a:J

    iget-object p0, p0, Lyads/qh5;->b:Lyads/uh5;

    iget-wide v6, p0, Lyads/uh5;->a:J

    move-wide v2, p1

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lyads/th5;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Z)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    .line 380
    :goto_0
    iget-object v3, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    .line 381
    iget-object v3, p0, Lyads/v15;->y:Lyads/u15;

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    iget-object v3, v3, Lyads/u15;->c:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 384
    :cond_0
    iget-object v3, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v3, v3, v2

    .line 385
    monitor-enter v3

    .line 386
    :try_start_0
    iget-wide v4, v3, Lyads/lc5;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 387
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 388
    monitor-exit v3

    throw p0

    :cond_2
    return-wide v0
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 13

    move-object/from16 v0, p3

    move-wide/from16 v1, p5

    invoke-virtual {p0}, Lyads/v15;->c()V

    iget-object v3, p0, Lyads/v15;->y:Lyads/u15;

    iget-object v4, v3, Lyads/u15;->a:Lyads/g06;

    iget-object v3, v3, Lyads/u15;->c:[Z

    iget v5, p0, Lyads/v15;->F:I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, p1

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-ge v7, v8, :cond_3

    aget-object v8, v0, v7

    if-eqz v8, :cond_2

    aget-object v12, p1, v7

    if-eqz v12, :cond_0

    aget-boolean v12, p2, v7

    if-nez v12, :cond_2

    :cond_0
    check-cast v8, Lyads/s15;

    iget v8, v8, Lyads/s15;->b:I

    aget-boolean v12, v3, v8

    if-eqz v12, :cond_1

    iget v9, p0, Lyads/v15;->F:I

    sub-int/2addr v9, v11

    iput v9, p0, Lyads/v15;->F:I

    aput-boolean v6, v3, v8

    const/4 v8, 0x0

    aput-object v8, v0, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lyads/v15;->D:Z

    if-eqz v7, :cond_4

    if-nez v5, :cond_5

    goto :goto_2

    :cond_4
    cmp-long v5, v1, v9

    if-eqz v5, :cond_5

    :goto_2
    move v5, v11

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    move v7, v6

    :goto_4
    array-length v8, p1

    if-ge v7, v8, :cond_c

    aget-object v8, v0, v7

    if-nez v8, :cond_b

    aget-object v8, p1, v7

    if-eqz v8, :cond_b

    invoke-interface {v8}, Lyads/er2;->length()I

    move-result v12

    if-ne v12, v11, :cond_a

    invoke-interface {v8, v6}, Lyads/er2;->b(I)I

    move-result v12

    if-nez v12, :cond_9

    invoke-interface {v8}, Lyads/er2;->c()Lyads/f06;

    move-result-object v8

    iget-object v12, v4, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v12, v8}, Lyads/oe3;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, -0x1

    :goto_5
    aget-boolean v12, v3, v8

    if-nez v12, :cond_8

    iget v12, p0, Lyads/v15;->F:I

    add-int/2addr v12, v11

    iput v12, p0, Lyads/v15;->F:I

    aput-boolean v11, v3, v8

    new-instance v12, Lyads/s15;

    invoke-direct {v12, p0, v8}, Lyads/s15;-><init>(Lyads/v15;I)V

    aput-object v12, v0, v7

    aput-boolean v11, p4, v7

    if-nez v5, :cond_b

    iget-object v5, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v5, v5, v8

    invoke-virtual {v5, v1, v2, v11}, Lyads/lc5;->c(JZ)Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, v5, Lyads/lc5;->q:I

    iget v5, v5, Lyads/lc5;->s:I

    add-int/2addr v8, v5

    if-eqz v8, :cond_7

    move v5, v11

    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_6

    :cond_8
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_9
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_a
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    iget p1, p0, Lyads/v15;->F:I

    if-nez p1, :cond_10

    iput-boolean v6, p0, Lyads/v15;->J:Z

    iput-boolean v6, p0, Lyads/v15;->E:Z

    iget-object p1, p0, Lyads/v15;->l:Lyads/ru3;

    invoke-virtual {p1}, Lyads/ru3;->b()Z

    move-result p1

    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    if-eqz p1, :cond_f

    array-length p1, v0

    move v3, v6

    :goto_7
    if-ge v3, p1, :cond_d

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lyads/lc5;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lyads/v15;->l:Lyads/ru3;

    iget-object p1, p1, Lyads/ru3;->b:Lyads/mu3;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v6}, Lyads/mu3;->a(Z)V

    goto :goto_a

    :cond_e
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_f
    array-length p1, v0

    move v3, v6

    :goto_8
    if-ge v3, p1, :cond_12

    aget-object v4, v0, v3

    invoke-virtual {v4, v6}, Lyads/lc5;->b(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_12

    invoke-virtual {p0, v1, v2}, Lyads/v15;->seekToUs(J)J

    move-result-wide v1

    :goto_9
    array-length p1, v0

    if-ge v6, p1, :cond_12

    aget-object p1, v0, v6

    if-eqz p1, :cond_11

    aput-boolean v11, p4, v6

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    iput-boolean v11, p0, Lyads/v15;->D:Z

    return-wide v1
.end method

.method public final a(II)Lyads/k06;
    .locals 1

    .line 362
    new-instance p2, Lyads/t15;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lyads/t15;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lyads/v15;->a(Lyads/t15;)Lyads/lc5;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/t15;)Lyads/lc5;
    .locals 5

    .line 366
    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    iget-object v2, p0, Lyads/v15;->u:[Lyads/t15;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lyads/t15;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object p0, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    iget-object v1, p0, Lyads/v15;->i:Lyads/aj0;

    iget-object v2, p0, Lyads/v15;->d:Lyads/xl2;

    iget-object v3, p0, Lyads/v15;->g:Lyads/tl2;

    .line 370
    new-instance v4, Lyads/lc5;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    invoke-direct {v4, v1, v2, v3}, Lyads/lc5;-><init>(Lyads/aj0;Lyads/xl2;Lyads/tl2;)V

    .line 373
    iput-object p0, v4, Lyads/lc5;->f:Lyads/v15;

    .line 374
    iget-object v1, p0, Lyads/v15;->u:[Lyads/t15;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyads/t15;

    .line 375
    aput-object p1, v1, v0

    .line 376
    iput-object v1, p0, Lyads/v15;->u:[Lyads/t15;

    .line 377
    iget-object p1, p0, Lyads/v15;->t:[Lyads/lc5;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/lc5;

    .line 378
    aput-object v4, p1, v0

    .line 379
    iput-object p1, p0, Lyads/v15;->t:[Lyads/lc5;

    return-object v4
.end method

.method public final a(Lyads/nu3;JJLjava/io/IOException;I)Lyads/lu3;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 278
    move-object/from16 v2, p1

    check-cast v2, Lyads/r15;

    .line 279
    iget-object v3, v2, Lyads/r15;->b:Lyads/rq5;

    .line 280
    new-instance v4, Lyads/cu3;

    .line 281
    iget-object v3, v3, Lyads/rq5;->c:Landroid/net/Uri;

    .line 282
    invoke-direct {v4}, Lyads/cu3;-><init>()V

    .line 283
    sget v3, Lyads/u56;->a:I

    .line 284
    iget-object v3, v0, Lyads/v15;->e:Lyads/ll0;

    .line 285
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    instance-of v3, v1, Lyads/xs4;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-nez v3, :cond_2

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_2

    instance-of v3, v1, Lyads/ia3;

    if-nez v3, :cond_2

    instance-of v3, v1, Lyads/qu3;

    if-nez v3, :cond_2

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 287
    instance-of v8, v3, Lyads/xc0;

    if-eqz v8, :cond_0

    .line 288
    move-object v8, v3

    check-cast v8, Lyads/xc0;

    iget v8, v8, Lyads/xc0;->b:I

    const/16 v9, 0x7d8

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v8, 0x1388

    .line 290
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v5

    :goto_2
    cmp-long v3, v8, v5

    const/4 v10, 0x0

    if-nez v3, :cond_3

    .line 291
    sget-object v3, Lyads/ru3;->e:Lyads/lu3;

    goto :goto_8

    .line 292
    :cond_3
    invoke-virtual {v0}, Lyads/v15;->d()I

    move-result v3

    .line 293
    iget v11, v0, Lyads/v15;->K:I

    if-le v3, v11, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    move v11, v10

    .line 294
    :goto_3
    iget-boolean v12, v0, Lyads/v15;->G:Z

    if-nez v12, :cond_9

    iget-object v12, v0, Lyads/v15;->z:Lyads/sh5;

    if-eqz v12, :cond_5

    invoke-interface {v12}, Lyads/sh5;->c()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    goto :goto_6

    .line 295
    :cond_5
    iget-boolean v3, v0, Lyads/v15;->w:Z

    if-eqz v3, :cond_7

    .line 296
    iget-boolean v12, v0, Lyads/v15;->E:Z

    if-nez v12, :cond_7

    .line 297
    iget-wide v12, v0, Lyads/v15;->I:J

    cmp-long v5, v12, v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 298
    :cond_6
    iput-boolean v7, v0, Lyads/v15;->J:Z

    .line 299
    sget-object v3, Lyads/ru3;->d:Lyads/lu3;

    goto :goto_8

    .line 300
    :cond_7
    :goto_4
    iput-boolean v3, v0, Lyads/v15;->E:Z

    const-wide/16 v5, 0x0

    .line 301
    iput-wide v5, v0, Lyads/v15;->H:J

    .line 302
    iput v10, v0, Lyads/v15;->K:I

    .line 303
    iget-object v3, v0, Lyads/v15;->t:[Lyads/lc5;

    array-length v12, v3

    move v13, v10

    :goto_5
    if-ge v13, v12, :cond_8

    aget-object v14, v3, v13

    .line 304
    invoke-virtual {v14, v10}, Lyads/lc5;->b(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 305
    :cond_8
    iget-object v3, v2, Lyads/r15;->f:Lyads/qx4;

    iput-wide v5, v3, Lyads/qx4;->a:J

    .line 306
    iput-wide v5, v2, Lyads/r15;->i:J

    .line 307
    iput-boolean v7, v2, Lyads/r15;->h:Z

    .line 308
    iput-boolean v10, v2, Lyads/r15;->l:Z

    goto :goto_7

    .line 309
    :cond_9
    :goto_6
    iput v3, v0, Lyads/v15;->K:I

    .line 310
    :goto_7
    new-instance v3, Lyads/lu3;

    .line 311
    invoke-direct {v3, v11, v8, v9}, Lyads/lu3;-><init>(IJ)V

    .line 312
    :goto_8
    iget v5, v3, Lyads/lu3;->a:I

    if-eqz v5, :cond_b

    if-ne v5, v7, :cond_a

    goto :goto_9

    :cond_a
    move v7, v10

    :cond_b
    :goto_9
    xor-int/lit8 v5, v7, 0x1

    .line 313
    iget-object v6, v0, Lyads/v15;->f:Lyads/k14;

    iget-wide v8, v2, Lyads/r15;->i:J

    iget-wide v10, v0, Lyads/v15;->A:J

    .line 314
    new-instance v12, Lyads/r04;

    .line 315
    invoke-virtual {v6, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v18

    .line 316
    invoke-virtual {v6, v10, v11}, Lyads/k14;->a(J)J

    move-result-wide v20

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v21}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 317
    invoke-virtual {v6, v4, v12, v1, v5}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    if-nez v7, :cond_c

    .line 318
    iget-object v0, v0, Lyads/v15;->e:Lyads/ll0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    return-object v3
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lyads/v15;->v:Z

    .line 364
    iget-object v0, p0, Lyads/v15;->q:Landroid/os/Handler;

    iget-object p0, p0, Lyads/v15;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 348
    invoke-virtual {p0}, Lyads/v15;->c()V

    .line 349
    iget-object v0, p0, Lyads/v15;->y:Lyads/u15;

    iget-object v0, v0, Lyads/u15;->b:[Z

    .line 350
    iget-boolean v1, p0, Lyads/v15;->J:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p1, v0}, Lyads/lc5;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 352
    iput-wide v1, p0, Lyads/v15;->I:J

    .line 353
    iput-boolean v0, p0, Lyads/v15;->J:Z

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lyads/v15;->E:Z

    .line 355
    iput-wide v1, p0, Lyads/v15;->H:J

    .line 356
    iput v0, p0, Lyads/v15;->K:I

    .line 357
    iget-object p1, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 358
    invoke-virtual {v3, v0}, Lyads/lc5;->b(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lyads/v15;->r:Lyads/y04;

    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(J)V
    .locals 5

    .line 339
    invoke-virtual {p0}, Lyads/v15;->c()V

    .line 340
    iget-wide v0, p0, Lyads/v15;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Lyads/v15;->y:Lyads/u15;

    iget-object v0, v0, Lyads/u15;->c:[Z

    .line 342
    iget-object v1, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 343
    iget-object v3, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, v4}, Lyads/lc5;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Lyads/nu3;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 248
    move-object/from16 v1, p1

    check-cast v1, Lyads/r15;

    .line 249
    iget-wide v2, v0, Lyads/v15;->A:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, v0, Lyads/v15;->z:Lyads/sh5;

    if-eqz v2, :cond_4

    .line 250
    invoke-interface {v2}, Lyads/sh5;->b()Z

    move-result v2

    .line 251
    invoke-virtual {v0, v3}, Lyads/v15;->a(Z)J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    .line 252
    :goto_0
    iput-wide v6, v0, Lyads/v15;->A:J

    .line 253
    iget-object v8, v0, Lyads/v15;->h:Lyads/y15;

    iget-boolean v9, v0, Lyads/v15;->B:Z

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    .line 254
    iget-wide v6, v8, Lyads/y15;->p:J

    .line 255
    :cond_1
    iget-boolean v4, v8, Lyads/y15;->o:Z

    if-nez v4, :cond_2

    iget-wide v4, v8, Lyads/y15;->p:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-boolean v4, v8, Lyads/y15;->q:Z

    if-ne v4, v2, :cond_2

    iget-boolean v4, v8, Lyads/y15;->r:Z

    if-ne v4, v9, :cond_2

    goto :goto_1

    .line 256
    :cond_2
    iput-wide v6, v8, Lyads/y15;->p:J

    .line 257
    iput-boolean v2, v8, Lyads/y15;->q:Z

    .line 258
    iput-boolean v9, v8, Lyads/y15;->r:Z

    const/4 v2, 0x0

    .line 259
    iput-boolean v2, v8, Lyads/y15;->o:Z

    .line 260
    new-instance v9, Lyads/jl5;

    iget-wide v10, v8, Lyads/y15;->p:J

    iget-boolean v12, v8, Lyads/y15;->q:Z

    iget-boolean v13, v8, Lyads/y15;->r:Z

    iget-object v14, v8, Lyads/y15;->h:Lyads/p04;

    invoke-direct/range {v9 .. v14}, Lyads/jl5;-><init>(JZZLyads/p04;)V

    .line 261
    iget-boolean v2, v8, Lyads/y15;->o:Z

    if-eqz v2, :cond_3

    .line 262
    new-instance v2, Lyads/w15;

    invoke-direct {v2, v9}, Lyads/w15;-><init>(Lyads/jl5;)V

    move-object v9, v2

    .line 263
    :cond_3
    invoke-virtual {v8, v9}, Lyads/cs;->a(Lyads/kx5;)V

    .line 264
    :cond_4
    :goto_1
    iget-object v2, v1, Lyads/r15;->b:Lyads/rq5;

    .line 265
    new-instance v4, Lyads/cu3;

    .line 266
    iget-object v2, v2, Lyads/rq5;->c:Landroid/net/Uri;

    .line 267
    invoke-direct {v4}, Lyads/cu3;-><init>()V

    .line 268
    iget-object v2, v0, Lyads/v15;->e:Lyads/ll0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    iget-object v2, v0, Lyads/v15;->f:Lyads/k14;

    iget-wide v5, v1, Lyads/r15;->i:J

    iget-wide v7, v0, Lyads/v15;->A:J

    .line 270
    new-instance v9, Lyads/r04;

    .line 271
    invoke-virtual {v2, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v15

    .line 272
    invoke-virtual {v2, v7, v8}, Lyads/k14;->a(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v18}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 273
    invoke-virtual {v2, v4, v9}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    .line 274
    iput-boolean v3, v0, Lyads/v15;->L:Z

    .line 275
    iget-object v1, v0, Lyads/v15;->r:Lyads/y04;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-interface {v1, v0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/nu3;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 322
    move-object/from16 v1, p1

    check-cast v1, Lyads/r15;

    .line 323
    iget-object v2, v1, Lyads/r15;->b:Lyads/rq5;

    .line 324
    new-instance v3, Lyads/cu3;

    .line 325
    iget-object v2, v2, Lyads/rq5;->c:Landroid/net/Uri;

    .line 326
    invoke-direct {v3}, Lyads/cu3;-><init>()V

    .line 327
    iget-object v2, v0, Lyads/v15;->e:Lyads/ll0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    iget-object v2, v0, Lyads/v15;->f:Lyads/k14;

    iget-wide v4, v1, Lyads/r15;->i:J

    iget-wide v6, v0, Lyads/v15;->A:J

    .line 329
    new-instance v8, Lyads/r04;

    .line 330
    invoke-virtual {v2, v4, v5}, Lyads/k14;->a(J)J

    move-result-wide v14

    .line 331
    invoke-virtual {v2, v6, v7}, Lyads/k14;->a(J)J

    move-result-wide v16

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v17}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 332
    invoke-virtual {v2, v3, v8}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    if-nez p6, :cond_1

    .line 333
    iget-object v1, v0, Lyads/v15;->t:[Lyads/lc5;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 334
    invoke-virtual {v5, v3}, Lyads/lc5;->b(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget v1, v0, Lyads/v15;->F:I

    if-lez v1, :cond_1

    .line 336
    iget-object v1, v0, Lyads/v15;->r:Lyads/y04;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    invoke-interface {v1, v0}, Lyads/ti5;->a(Lyads/ui5;)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/sh5;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lyads/v15;->q:Landroid/os/Handler;

    new-instance v1, Lnu;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lnu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 0

    .line 319
    iput-object p1, p0, Lyads/v15;->r:Lyads/y04;

    .line 320
    iget-object p1, p0, Lyads/v15;->n:Lyads/m50;

    invoke-virtual {p1}, Lyads/m50;->d()Z

    .line 321
    invoke-virtual {p0}, Lyads/v15;->i()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 127
    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 128
    invoke-virtual {v3, v4}, Lyads/lc5;->b(Z)V

    .line 129
    invoke-virtual {v3}, Lyads/lc5;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lyads/v15;->m:Lyads/ov;

    .line 131
    iget-object v0, p0, Lyads/ov;->b:Lyads/ws2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0}, Lyads/ws2;->release()V

    .line 133
    iput-object v1, p0, Lyads/ov;->b:Lyads/ws2;

    .line 134
    :cond_1
    iput-object v1, p0, Lyads/ov;->c:Lyads/wk0;

    return-void
.end method

.method public final b(Lyads/sh5;)V
    .locals 13

    iget-object v0, p0, Lyads/v15;->s:Lyads/hb3;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/rh5;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lyads/rh5;-><init>(JJ)V

    :goto_0
    iput-object v0, p0, Lyads/v15;->z:Lyads/sh5;

    invoke-interface {p1}, Lyads/sh5;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lyads/v15;->A:J

    iget-boolean v0, p0, Lyads/v15;->G:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lyads/sh5;->c()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lyads/v15;->B:Z

    if-eqz v0, :cond_2

    const/4 v4, 0x7

    :cond_2
    iput v4, p0, Lyads/v15;->C:I

    iget-object v0, p0, Lyads/v15;->h:Lyads/y15;

    iget-wide v4, p0, Lyads/v15;->A:J

    invoke-interface {p1}, Lyads/sh5;->b()Z

    move-result p1

    iget-boolean v6, p0, Lyads/v15;->B:Z

    cmp-long v1, v4, v1

    if-nez v1, :cond_3

    iget-wide v4, v0, Lyads/y15;->p:J

    :cond_3
    iget-boolean v1, v0, Lyads/y15;->o:Z

    if-nez v1, :cond_4

    iget-wide v1, v0, Lyads/y15;->p:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lyads/y15;->q:Z

    if-ne v1, p1, :cond_4

    iget-boolean v1, v0, Lyads/y15;->r:Z

    if-ne v1, v6, :cond_4

    goto :goto_2

    :cond_4
    iput-wide v4, v0, Lyads/y15;->p:J

    iput-boolean p1, v0, Lyads/y15;->q:Z

    iput-boolean v6, v0, Lyads/y15;->r:Z

    iput-boolean v3, v0, Lyads/y15;->o:Z

    new-instance v7, Lyads/jl5;

    iget-wide v8, v0, Lyads/y15;->p:J

    iget-boolean v10, v0, Lyads/y15;->q:Z

    iget-boolean v11, v0, Lyads/y15;->r:Z

    iget-object v12, v0, Lyads/y15;->h:Lyads/p04;

    invoke-direct/range {v7 .. v12}, Lyads/jl5;-><init>(JZZLyads/p04;)V

    iget-boolean p1, v0, Lyads/y15;->o:Z

    if-eqz p1, :cond_5

    new-instance p1, Lyads/w15;

    invoke-direct {p1, v7}, Lyads/w15;-><init>(Lyads/jl5;)V

    move-object v7, p1

    :cond_5
    invoke-virtual {v0, v7}, Lyads/cs;->a(Lyads/kx5;)V

    :goto_2
    iget-boolean p1, p0, Lyads/v15;->w:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lyads/v15;->g()V

    :cond_6
    return-void
.end method

.method public final c()V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lyads/v15;->w:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lyads/v15;->y:Lyads/u15;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object p0, p0, Lyads/v15;->z:Lyads/sh5;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final c(J)Z
    .locals 0

    iget-boolean p1, p0, Lyads/v15;->L:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lyads/v15;->l:Lyads/ru3;

    iget-object p1, p1, Lyads/ru3;->c:Ljava/io/IOException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lyads/v15;->J:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lyads/v15;->w:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lyads/v15;->F:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lyads/v15;->n:Lyads/m50;

    invoke-virtual {p1}, Lyads/m50;->d()Z

    move-result p1

    iget-object p2, p0, Lyads/v15;->l:Lyads/ru3;

    invoke-virtual {p2}, Lyads/ru3;->b()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lyads/v15;->i()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 5

    iget-object p0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget v4, v3, Lyads/lc5;->q:I

    iget v3, v3, Lyads/lc5;->p:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lyads/v15;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/v15;->r:Lyads/y04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    :cond_0
    return-void
.end method

.method public final synthetic f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/v15;->G:Z

    return-void
.end method

.method public final g()V
    .locals 11

    iget-boolean v0, p0, Lyads/v15;->M:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lyads/v15;->w:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lyads/v15;->v:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lyads/v15;->z:Lyads/sh5;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lyads/lc5;->c()Lyads/vz2;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lyads/v15;->n:Lyads/m50;

    monitor-enter v0

    :try_start_0
    iput-boolean v2, v0, Lyads/m50;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, v0

    new-array v1, v0, [Lyads/f06;

    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    iget-object v6, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lyads/lc5;->c()Lyads/vz2;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v7}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "video"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    aput-boolean v7, v3, v4

    iget-boolean v9, p0, Lyads/v15;->x:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lyads/v15;->x:Z

    iget-object v7, p0, Lyads/v15;->s:Lyads/hb3;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lyads/v15;->u:[Lyads/t15;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lyads/t15;->b:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v6, Lyads/vz2;->k:Lyads/h84;

    if-nez v9, :cond_6

    new-instance v9, Lyads/h84;

    new-array v5, v5, [Lyads/g84;

    aput-object v7, v5, v2

    invoke-direct {v9, v5}, Lyads/h84;-><init>([Lyads/g84;)V

    goto :goto_4

    :cond_6
    new-array v5, v5, [Lyads/g84;

    aput-object v7, v5, v2

    new-instance v10, Lyads/h84;

    iget-object v9, v9, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v9, v5}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lyads/g84;

    invoke-direct {v10, v5}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object v9, v10

    :goto_4
    new-instance v5, Lyads/uz2;

    invoke-direct {v5, v6}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput-object v9, v5, Lyads/uz2;->i:Lyads/h84;

    new-instance v6, Lyads/vz2;

    invoke-direct {v6, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    :cond_7
    if-eqz v8, :cond_8

    iget v5, v6, Lyads/vz2;->g:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    iget v5, v6, Lyads/vz2;->h:I

    if-ne v5, v8, :cond_8

    iget v5, v7, Lyads/hb3;->b:I

    if-eq v5, v8, :cond_8

    new-instance v5, Lyads/uz2;

    invoke-direct {v5, v6}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iget v6, v7, Lyads/hb3;->b:I

    iput v6, v5, Lyads/uz2;->f:I

    new-instance v6, Lyads/vz2;

    invoke-direct {v6, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    :cond_8
    iget-object v5, p0, Lyads/v15;->d:Lyads/xl2;

    invoke-interface {v5, v6}, Lyads/xl2;->a(Lyads/vz2;)I

    move-result v5

    new-instance v7, Lyads/uz2;

    invoke-direct {v7, v6}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput v5, v7, Lyads/uz2;->D:I

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v7}, Lyads/vz2;-><init>(Lyads/uz2;)V

    new-instance v6, Lyads/f06;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5}, [Lyads/vz2;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lyads/u15;

    new-instance v2, Lyads/g06;

    invoke-direct {v2, v1}, Lyads/g06;-><init>([Lyads/f06;)V

    invoke-direct {v0, v2, v3}, Lyads/u15;-><init>(Lyads/g06;[Z)V

    iput-object v0, p0, Lyads/v15;->y:Lyads/u15;

    iput-boolean v5, p0, Lyads/v15;->w:Z

    iget-object v0, p0, Lyads/v15;->r:Lyads/y04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_a
    :goto_5
    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 11

    invoke-virtual {p0}, Lyads/v15;->c()V

    iget-boolean v0, p0, Lyads/v15;->L:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lyads/v15;->F:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v3, p0, Lyads/v15;->I:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    iget-boolean v0, p0, Lyads/v15;->x:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lyads/v15;->y:Lyads/u15;

    iget-object v10, v9, Lyads/u15;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lyads/u15;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_0
    iget-boolean v10, v9, Lyads/lc5;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    iget-object v9, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lyads/lc5;->b()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lyads/v15;->a(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lyads/v15;->H:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lyads/v15;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 0

    invoke-virtual {p0}, Lyads/v15;->c()V

    iget-object p0, p0, Lyads/v15;->y:Lyads/u15;

    iget-object p0, p0, Lyads/u15;->a:Lyads/g06;

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lyads/v15;->q:Landroid/os/Handler;

    new-instance v1, Lou;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lou;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Lyads/r15;

    iget-object v2, v1, Lyads/v15;->b:Landroid/net/Uri;

    iget-object v3, v1, Lyads/v15;->c:Lyads/wc0;

    iget-object v4, v1, Lyads/v15;->m:Lyads/ov;

    iget-object v6, v1, Lyads/v15;->n:Lyads/m50;

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lyads/r15;-><init>(Lyads/v15;Landroid/net/Uri;Lyads/wc0;Lyads/ov;Lyads/v15;Lyads/m50;)V

    iget-boolean v2, v1, Lyads/v15;->w:Z

    if-eqz v2, :cond_3

    iget-wide v2, v1, Lyads/v15;->I:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v6, v1, Lyads/v15;->A:J

    cmp-long v8, v6, v4

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iput-boolean v9, v1, Lyads/v15;->L:Z

    iput-wide v4, v1, Lyads/v15;->I:J

    return-void

    :cond_0
    iget-object v2, v1, Lyads/v15;->z:Lyads/sh5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v1, Lyads/v15;->I:J

    invoke-interface {v2, v6, v7}, Lyads/sh5;->b(J)Lyads/qh5;

    move-result-object v2

    iget-object v2, v2, Lyads/qh5;->a:Lyads/uh5;

    iget-wide v2, v2, Lyads/uh5;->b:J

    iget-wide v6, v1, Lyads/v15;->I:J

    iget-object v8, v0, Lyads/r15;->f:Lyads/qx4;

    iput-wide v2, v8, Lyads/qx4;->a:J

    iput-wide v6, v0, Lyads/r15;->i:J

    iput-boolean v9, v0, Lyads/r15;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lyads/r15;->l:Z

    iget-object v3, v1, Lyads/v15;->t:[Lyads/lc5;

    array-length v6, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    iget-wide v8, v1, Lyads/v15;->I:J

    iput-wide v8, v7, Lyads/lc5;->t:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-wide v4, v1, Lyads/v15;->I:J

    goto :goto_1

    :cond_2
    invoke-static {}, Lud;->g()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lyads/v15;->d()I

    move-result v2

    iput v2, v1, Lyads/v15;->K:I

    iget-object v2, v1, Lyads/v15;->l:Lyads/ru3;

    iget-object v3, v1, Lyads/v15;->e:Lyads/ll0;

    iget v4, v1, Lyads/v15;->C:I

    invoke-virtual {v3, v4}, Lyads/ll0;->a(I)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    iget-object v2, v0, Lyads/r15;->j:Lyads/bd0;

    iget-object v3, v1, Lyads/v15;->f:Lyads/k14;

    new-instance v4, Lyads/cu3;

    invoke-direct {v4, v2}, Lyads/cu3;-><init>(Lyads/bd0;)V

    iget-wide v5, v0, Lyads/r15;->i:J

    iget-wide v0, v1, Lyads/v15;->A:J

    new-instance v7, Lyads/r04;

    invoke-virtual {v3, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v13

    invoke-virtual {v3, v0, v1}, Lyads/k14;->a(J)J

    move-result-wide v15

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v16}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v3, v4, v7}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    return-void
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Lyads/v15;->l:Lyads/ru3;

    invoke-virtual {v0}, Lyads/ru3;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/v15;->n:Lyads/m50;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyads/m50;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 3

    iget-object v0, p0, Lyads/v15;->l:Lyads/ru3;

    iget-object v1, p0, Lyads/v15;->e:Lyads/ll0;

    iget v2, p0, Lyads/v15;->C:I

    invoke-virtual {v1, v2}, Lyads/ll0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/ru3;->a(I)V

    iget-boolean v0, p0, Lyads/v15;->L:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lyads/v15;->w:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lyads/v15;->E:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lyads/v15;->L:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyads/v15;->d()I

    move-result v0

    iget v1, p0, Lyads/v15;->K:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/v15;->E:Z

    iget-wide v0, p0, Lyads/v15;->H:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final seekToUs(J)J
    .locals 8

    invoke-virtual {p0}, Lyads/v15;->c()V

    iget-object v0, p0, Lyads/v15;->y:Lyads/u15;

    iget-object v0, v0, Lyads/u15;->b:[Z

    iget-object v1, p0, Lyads/v15;->z:Lyads/sh5;

    invoke-interface {v1}, Lyads/sh5;->b()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v2

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/v15;->E:Z

    iput-wide p1, p0, Lyads/v15;->H:J

    iget-wide v4, p0, Lyads/v15;->I:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lyads/v15;->I:J

    return-wide p1

    :cond_1
    iget v4, p0, Lyads/v15;->C:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v4, v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_7

    iget-object v6, p0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2, v1}, Lyads/lc5;->c(JZ)Z

    move-result v6

    if-nez v6, :cond_2

    aget-boolean v6, v0, v5

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lyads/v15;->x:Z

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lyads/v15;->J:Z

    iput-wide p1, p0, Lyads/v15;->I:J

    iput-boolean v1, p0, Lyads/v15;->L:Z

    iget-object v0, p0, Lyads/v15;->l:Lyads/ru3;

    invoke-virtual {v0}, Lyads/ru3;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v4, v0

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lyads/lc5;->a()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lyads/v15;->l:Lyads/ru3;

    iget-object p0, p0, Lyads/ru3;->b:Lyads/mu3;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Lyads/mu3;->a(Z)V

    return-wide p1

    :cond_5
    invoke-static {}, Lud;->g()V

    return-wide v2

    :cond_6
    iget-object v0, p0, Lyads/v15;->l:Lyads/ru3;

    const/4 v2, 0x0

    iput-object v2, v0, Lyads/ru3;->c:Ljava/io/IOException;

    iget-object p0, p0, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, p0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_7

    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Lyads/lc5;->b(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-wide p1
.end method
