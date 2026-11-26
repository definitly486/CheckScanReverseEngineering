.class public final Lyads/lc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k06;


# instance fields
.field public A:Lyads/vz2;

.field public B:Lyads/vz2;

.field public C:Z

.field public D:Z

.field public E:J

.field public final a:Lyads/ic5;

.field public final b:Lyads/jc5;

.field public final c:Lyads/to5;

.field public final d:Lyads/xl2;

.field public final e:Lyads/tl2;

.field public f:Lyads/v15;

.field public g:Lyads/vz2;

.field public h:Lyads/eo2;

.field public i:I

.field public j:[I

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Lyads/j06;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lyads/aj0;Lyads/xl2;Lyads/tl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/lc5;->d:Lyads/xl2;

    iput-object p3, p0, Lyads/lc5;->e:Lyads/tl2;

    new-instance p2, Lyads/ic5;

    invoke-direct {p2, p1}, Lyads/ic5;-><init>(Lyads/aj0;)V

    iput-object p2, p0, Lyads/lc5;->a:Lyads/ic5;

    new-instance p1, Lyads/jc5;

    invoke-direct {p1}, Lyads/jc5;-><init>()V

    iput-object p1, p0, Lyads/lc5;->b:Lyads/jc5;

    const/16 p1, 0x3e8

    iput p1, p0, Lyads/lc5;->i:I

    new-array p2, p1, [I

    iput-object p2, p0, Lyads/lc5;->j:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lyads/lc5;->k:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lyads/lc5;->n:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lyads/lc5;->m:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lyads/lc5;->l:[I

    new-array p1, p1, [Lyads/j06;

    iput-object p1, p0, Lyads/lc5;->o:[Lyads/j06;

    new-instance p1, Lyads/to5;

    new-instance p2, Ll2;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ll2;-><init>(I)V

    invoke-direct {p1, p2}, Lyads/to5;-><init>(Lyads/a60;)V

    iput-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lyads/lc5;->t:J

    iput-wide p1, p0, Lyads/lc5;->u:J

    iput-wide p1, p0, Lyads/lc5;->v:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/lc5;->y:Z

    iput-boolean p1, p0, Lyads/lc5;->x:Z

    return-void
.end method

.method public static a(Lyads/kc5;)V
    .locals 0

    .line 510
    iget-object p0, p0, Lyads/kc5;->b:Lyads/wl2;

    check-cast p0, Lah;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/wl2;->a()V

    return-void
.end method


# virtual methods
.method public final a(IIJZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    .line 572
    iget-object v3, p0, Lyads/lc5;->n:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_4

    if-eqz p5, :cond_0

    .line 573
    iget-object v4, p0, Lyads/lc5;->m:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 574
    iget v3, p0, Lyads/lc5;->i:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final a(Lyads/a03;Lyads/mi0;IZ)I
    .locals 10

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 424
    :goto_0
    iget-object v3, p0, Lyads/lc5;->b:Lyads/jc5;

    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iput-boolean v1, p2, Lyads/mi0;->e:Z

    .line 427
    iget v4, p0, Lyads/lc5;->s:I

    iget v5, p0, Lyads/lc5;->p:I

    const/4 v6, -0x3

    const/4 v7, -0x5

    const/4 v8, -0x4

    const/4 v9, 0x4

    if-eq v4, v5, :cond_6

    .line 428
    iget-object p4, p0, Lyads/lc5;->c:Lyads/to5;

    .line 429
    iget v5, p0, Lyads/lc5;->q:I

    add-int/2addr v5, v4

    .line 430
    invoke-virtual {p4, v5}, Lyads/to5;->c(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/kc5;

    iget-object p4, p4, Lyads/kc5;->a:Lyads/vz2;

    if-nez v0, :cond_5

    .line 431
    iget-object v0, p0, Lyads/lc5;->g:Lyads/vz2;

    if-eq p4, v0, :cond_1

    goto :goto_3

    .line 432
    :cond_1
    iget p1, p0, Lyads/lc5;->s:I

    invoke-virtual {p0, p1}, Lyads/lc5;->d(I)I

    move-result p1

    .line 433
    iget-object p4, p0, Lyads/lc5;->h:Lyads/eo2;

    if-eqz p4, :cond_3

    .line 434
    invoke-virtual {p4}, Lyads/eo2;->c()I

    move-result p4

    if-eq p4, v9, :cond_3

    iget-object p4, p0, Lyads/lc5;->m:[I

    aget p4, p4, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p4, v0

    if-nez p4, :cond_2

    iget-object p4, p0, Lyads/lc5;->h:Lyads/eo2;

    .line 435
    invoke-virtual {p4}, Lyads/eo2;->d()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 436
    :cond_2
    iput-boolean v2, p2, Lyads/mi0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    goto :goto_6

    .line 438
    :cond_3
    :goto_1
    :try_start_1
    iget-object p4, p0, Lyads/lc5;->m:[I

    aget p4, p4, p1

    .line 439
    iput p4, p2, Lyads/ev;->b:I

    .line 440
    iget-object v0, p0, Lyads/lc5;->n:[J

    aget-wide v4, v0, p1

    iput-wide v4, p2, Lyads/mi0;->f:J

    .line 441
    iget-wide v6, p0, Lyads/lc5;->t:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    const/high16 v0, -0x80000000

    or-int/2addr p4, v0

    .line 442
    iput p4, p2, Lyads/ev;->b:I

    .line 443
    :cond_4
    iget-object p4, p0, Lyads/lc5;->l:[I

    aget p4, p4, p1

    iput p4, v3, Lyads/jc5;->a:I

    .line 444
    iget-object p4, p0, Lyads/lc5;->k:[J

    aget-wide v4, p4, p1

    iput-wide v4, v3, Lyads/jc5;->b:J

    .line 445
    iget-object p4, p0, Lyads/lc5;->o:[Lyads/j06;

    aget-object p1, p4, p1

    iput-object p1, v3, Lyads/jc5;->c:Lyads/j06;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    :goto_2
    move v6, v8

    goto :goto_6

    .line 447
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {p0, p4, p1}, Lyads/lc5;->a(Lyads/vz2;Lyads/a03;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    monitor-exit p0

    :goto_4
    move v6, v7

    goto :goto_6

    :cond_6
    if-nez p4, :cond_a

    .line 449
    :try_start_3
    iget-boolean p4, p0, Lyads/lc5;->w:Z

    if-eqz p4, :cond_7

    goto :goto_5

    .line 450
    :cond_7
    iget-object p4, p0, Lyads/lc5;->B:Lyads/vz2;

    if-eqz p4, :cond_9

    if-nez v0, :cond_8

    iget-object v0, p0, Lyads/lc5;->g:Lyads/vz2;

    if-eq p4, v0, :cond_9

    .line 451
    :cond_8
    invoke-virtual {p0, p4, p1}, Lyads/lc5;->a(Lyads/vz2;Lyads/a03;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    monitor-exit p0

    goto :goto_4

    .line 453
    :cond_9
    monitor-exit p0

    goto :goto_6

    .line 454
    :cond_a
    :goto_5
    :try_start_4
    iput v9, p2, Lyads/ev;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    monitor-exit p0

    goto :goto_2

    :goto_6
    if-ne v6, v8, :cond_e

    .line 456
    invoke-virtual {p2, v9}, Lyads/ev;->b(I)Z

    move-result p1

    if-nez p1, :cond_e

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_b

    move v1, v2

    :cond_b
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_d

    .line 457
    iget-object p1, p0, Lyads/lc5;->a:Lyads/ic5;

    if-eqz v1, :cond_c

    .line 458
    iget-object p3, p0, Lyads/lc5;->b:Lyads/jc5;

    .line 459
    iget-object p4, p1, Lyads/ic5;->d:Lyads/hc5;

    .line 460
    iget-object p1, p1, Lyads/ic5;->b:Lyads/os4;

    invoke-static {p4, p2, p3, p1}, Lyads/ic5;->a(Lyads/hc5;Lyads/mi0;Lyads/jc5;Lyads/os4;)Lyads/hc5;

    goto :goto_7

    .line 461
    :cond_c
    iget-object p3, p0, Lyads/lc5;->b:Lyads/jc5;

    .line 462
    iget-object p4, p1, Lyads/ic5;->d:Lyads/hc5;

    .line 463
    iget-object v0, p1, Lyads/ic5;->b:Lyads/os4;

    invoke-static {p4, p2, p3, v0}, Lyads/ic5;->a(Lyads/hc5;Lyads/mi0;Lyads/jc5;Lyads/os4;)Lyads/hc5;

    move-result-object p2

    iput-object p2, p1, Lyads/ic5;->d:Lyads/hc5;

    :cond_d
    :goto_7
    if-nez v1, :cond_e

    .line 464
    iget p1, p0, Lyads/lc5;->s:I

    add-int/2addr p1, v2

    iput p1, p0, Lyads/lc5;->s:I

    :cond_e
    return v6

    .line 465
    :goto_8
    monitor-exit p0

    throw p1
.end method

.method public final a(Lyads/tc0;IZ)I
    .locals 7

    .line 482
    iget-object p0, p0, Lyads/lc5;->a:Lyads/ic5;

    .line 483
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lyads/ic5;->a:Lyads/aj0;

    .line 485
    invoke-virtual {v1}, Lyads/aj0;->a()Lyads/ee;

    move-result-object v1

    new-instance v2, Lyads/hc5;

    iget-object v3, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v3, v3, Lyads/hc5;->b:J

    invoke-direct {v2, v3, v4}, Lyads/hc5;-><init>(J)V

    .line 486
    iput-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    .line 487
    iput-object v2, v0, Lyads/hc5;->d:Lyads/hc5;

    .line 488
    :cond_0
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v0, v0, Lyads/hc5;->b:J

    iget-wide v2, p0, Lyads/ic5;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 489
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    iget-object v2, v1, Lyads/ee;->a:[B

    iget-wide v3, p0, Lyads/ic5;->f:J

    .line 490
    iget-wide v5, v0, Lyads/hc5;->a:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iget v1, v1, Lyads/ee;->b:I

    add-int/2addr v0, v1

    .line 491
    invoke-interface {p1, v2, v0, p2}, Lyads/tc0;->c([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    .line 492
    :cond_1
    invoke-static {}, Ln7;->e()V

    const/4 p0, 0x0

    return p0

    .line 493
    :cond_2
    iget-wide p2, p0, Lyads/ic5;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lyads/ic5;->f:J

    .line 494
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v1, v0, Lyads/hc5;->b:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_3

    .line 495
    iget-object p2, v0, Lyads/hc5;->d:Lyads/hc5;

    iput-object p2, p0, Lyads/ic5;->e:Lyads/hc5;

    :cond_3
    return p1
.end method

.method public final a(I)J
    .locals 4

    .line 575
    iget-wide v0, p0, Lyads/lc5;->u:J

    .line 576
    invoke-virtual {p0, p1}, Lyads/lc5;->c(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lyads/lc5;->u:J

    .line 577
    iget v0, p0, Lyads/lc5;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lyads/lc5;->p:I

    .line 578
    iget v0, p0, Lyads/lc5;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lyads/lc5;->q:I

    .line 579
    iget v1, p0, Lyads/lc5;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Lyads/lc5;->r:I

    .line 580
    iget v2, p0, Lyads/lc5;->i:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 581
    iput v1, p0, Lyads/lc5;->r:I

    .line 582
    :cond_0
    iget v1, p0, Lyads/lc5;->s:I

    sub-int/2addr v1, p1

    iput v1, p0, Lyads/lc5;->s:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 583
    iput p1, p0, Lyads/lc5;->s:I

    .line 584
    :cond_1
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    invoke-virtual {p1, v0}, Lyads/to5;->b(I)V

    .line 585
    iget p1, p0, Lyads/lc5;->p:I

    if-nez p1, :cond_3

    .line 586
    iget p1, p0, Lyads/lc5;->r:I

    if-nez p1, :cond_2

    iget p1, p0, Lyads/lc5;->i:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 587
    iget-object v0, p0, Lyads/lc5;->k:[J

    aget-wide v1, v0, p1

    iget-object p0, p0, Lyads/lc5;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v1, p0

    return-wide v1

    .line 588
    :cond_3
    iget-object p1, p0, Lyads/lc5;->k:[J

    iget p0, p0, Lyads/lc5;->r:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final a()V
    .locals 3

    .line 476
    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    monitor-enter p0

    .line 477
    :try_start_0
    iget v1, p0, Lyads/lc5;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 478
    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 479
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lyads/lc5;->a(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 480
    :goto_0
    invoke-virtual {v0, v1, v2}, Lyads/ic5;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 481
    monitor-exit p0

    throw v0
.end method

.method public final a(ILyads/os4;)V
    .locals 8

    .line 496
    iget-object p0, p0, Lyads/lc5;->a:Lyads/ic5;

    :cond_0
    :goto_0
    if-lez p1, :cond_2

    .line 497
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    if-nez v1, :cond_1

    .line 498
    iget-object v1, p0, Lyads/ic5;->a:Lyads/aj0;

    .line 499
    invoke-virtual {v1}, Lyads/aj0;->a()Lyads/ee;

    move-result-object v1

    new-instance v2, Lyads/hc5;

    iget-object v3, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v3, v3, Lyads/hc5;->b:J

    invoke-direct {v2, v3, v4}, Lyads/hc5;-><init>(J)V

    .line 500
    iput-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    .line 501
    iput-object v2, v0, Lyads/hc5;->d:Lyads/hc5;

    .line 502
    :cond_1
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v0, v0, Lyads/hc5;->b:J

    iget-wide v2, p0, Lyads/ic5;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    iget-object v1, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-object v2, v1, Lyads/hc5;->c:Lyads/ee;

    iget-object v3, v2, Lyads/ee;->a:[B

    iget-wide v4, p0, Lyads/ic5;->f:J

    .line 504
    iget-wide v6, v1, Lyads/hc5;->a:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, Lyads/ee;->b:I

    add-int/2addr v1, v2

    .line 505
    invoke-virtual {p2, v3, v1, v0}, Lyads/os4;->a([BII)V

    sub-int/2addr p1, v0

    .line 506
    iget-wide v1, p0, Lyads/ic5;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lyads/ic5;->f:J

    .line 507
    iget-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    iget-wide v3, v0, Lyads/hc5;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 508
    iget-object v0, v0, Lyads/hc5;->d:Lyads/hc5;

    iput-object v0, p0, Lyads/ic5;->e:Lyads/hc5;

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(JIIILyads/j06;)V
    .locals 9

    iget-boolean v0, p0, Lyads/lc5;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/lc5;->A:Lyads/vz2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lyads/lc5;->a(Lyads/vz2;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    :cond_1
    :goto_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Lyads/lc5;->x:Z

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lyads/lc5;->x:Z

    :cond_4
    iget-wide v3, p0, Lyads/lc5;->E:J

    add-long/2addr p1, v3

    iget-boolean v3, p0, Lyads/lc5;->C:Z

    if-eqz v3, :cond_7

    iget-wide v3, p0, Lyads/lc5;->t:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    :goto_2
    return-void

    :cond_5
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lyads/lc5;->D:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lyads/lc5;->B:Lyads/vz2;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SampleQueue"

    invoke-static {v3, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lyads/lc5;->D:Z

    :cond_6
    or-int/lit8 p3, p3, 0x1

    :cond_7
    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    iget-wide v3, v0, Lyads/ic5;->f:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    monitor-enter p0

    :try_start_0
    iget p5, p0, Lyads/lc5;->p:I

    if-lez p5, :cond_9

    sub-int/2addr p5, v1

    invoke-virtual {p0, p5}, Lyads/lc5;->d(I)I

    move-result p5

    iget-object v0, p0, Lyads/lc5;->k:[J

    aget-wide v5, v0, p5

    iget-object v0, p0, Lyads/lc5;->l:[I

    aget p5, v0, p5

    int-to-long v7, p5

    add-long/2addr v5, v7

    cmp-long p5, v5, v3

    if-gtz p5, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_9
    :goto_3
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_a

    move p5, v1

    goto :goto_4

    :cond_a
    move p5, v2

    :goto_4
    iput-boolean p5, p0, Lyads/lc5;->w:Z

    iget-wide v5, p0, Lyads/lc5;->v:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lyads/lc5;->v:J

    iget p5, p0, Lyads/lc5;->p:I

    invoke-virtual {p0, p5}, Lyads/lc5;->d(I)I

    move-result p5

    iget-object v0, p0, Lyads/lc5;->n:[J

    aput-wide p1, v0, p5

    iget-object p1, p0, Lyads/lc5;->k:[J

    aput-wide v3, p1, p5

    iget-object p1, p0, Lyads/lc5;->l:[I

    aput p4, p1, p5

    iget-object p1, p0, Lyads/lc5;->m:[I

    aput p3, p1, p5

    iget-object p1, p0, Lyads/lc5;->o:[Lyads/j06;

    aput-object p6, p1, p5

    iget-object p1, p0, Lyads/lc5;->j:[I

    aput v2, p1, p5

    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    iget-object p1, p1, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    iget-object p1, p1, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kc5;

    iget-object p1, p1, Lyads/kc5;->a:Lyads/vz2;

    iget-object p2, p0, Lyads/lc5;->B:Lyads/vz2;

    invoke-virtual {p1, p2}, Lyads/vz2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_5
    iget-object p1, p0, Lyads/lc5;->d:Lyads/xl2;

    if-eqz p1, :cond_c

    sget-object p1, Lyads/wl2;->a:Lyads/wl2;

    goto :goto_6

    :cond_c
    sget-object p1, Lyads/wl2;->a:Lyads/wl2;

    :goto_6
    iget-object p2, p0, Lyads/lc5;->c:Lyads/to5;

    iget p3, p0, Lyads/lc5;->q:I

    iget p4, p0, Lyads/lc5;->p:I

    add-int/2addr p3, p4

    new-instance p4, Lyads/kc5;

    iget-object p5, p0, Lyads/lc5;->B:Lyads/vz2;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p4, p5, p1}, Lyads/kc5;-><init>(Lyads/vz2;Lyads/wl2;)V

    iget p1, p2, Lyads/to5;->a:I

    const/4 p5, -0x1

    if-ne p1, p5, :cond_e

    iget-object p1, p2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_d

    iput v2, p2, Lyads/to5;->a:I

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_e
    :goto_7
    iget-object p1, p2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p5

    sub-int/2addr p5, v1

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-lt p3, p1, :cond_f

    if-ne p1, p3, :cond_10

    iget-object p1, p2, Lyads/to5;->c:Lyads/a60;

    iget-object p5, p2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p6

    sub-int/2addr p6, v1

    invoke-virtual {p5, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p1, Ll2;

    invoke-virtual {p1, p5}, Ll2;->b(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_10
    :goto_8
    iget-object p1, p2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_11
    iget p1, p0, Lyads/lc5;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lyads/lc5;->p:I

    iget p2, p0, Lyads/lc5;->i:I

    if-ne p1, p2, :cond_12

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [I

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array v0, p1, [I

    new-array v1, p1, [Lyads/j06;

    iget v3, p0, Lyads/lc5;->r:I

    sub-int/2addr p2, v3

    iget-object v4, p0, Lyads/lc5;->k:[J

    invoke-static {v4, v3, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/lc5;->n:[J

    iget v4, p0, Lyads/lc5;->r:I

    invoke-static {v3, v4, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/lc5;->m:[I

    iget v4, p0, Lyads/lc5;->r:I

    invoke-static {v3, v4, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/lc5;->l:[I

    iget v4, p0, Lyads/lc5;->r:I

    invoke-static {v3, v4, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/lc5;->o:[Lyads/j06;

    iget v4, p0, Lyads/lc5;->r:I

    invoke-static {v3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/lc5;->j:[I

    iget v4, p0, Lyads/lc5;->r:I

    invoke-static {v3, v4, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lyads/lc5;->r:I

    iget-object v4, p0, Lyads/lc5;->k:[J

    invoke-static {v4, v2, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lyads/lc5;->n:[J

    invoke-static {v4, v2, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lyads/lc5;->m:[I

    invoke-static {v4, v2, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lyads/lc5;->l:[I

    invoke-static {v4, v2, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lyads/lc5;->o:[Lyads/j06;

    invoke-static {v4, v2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lyads/lc5;->j:[I

    invoke-static {v4, v2, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lyads/lc5;->k:[J

    iput-object p5, p0, Lyads/lc5;->n:[J

    iput-object p6, p0, Lyads/lc5;->m:[I

    iput-object v0, p0, Lyads/lc5;->l:[I

    iput-object v1, p0, Lyads/lc5;->o:[Lyads/j06;

    iput-object p3, p0, Lyads/lc5;->j:[I

    iput v2, p0, Lyads/lc5;->r:I

    iput p1, p0, Lyads/lc5;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw p1
.end method

.method public final a(JZ)V
    .locals 11

    .line 466
    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget v1, p0, Lyads/lc5;->p:I

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lyads/lc5;->n:[J

    iget v6, p0, Lyads/lc5;->r:I

    aget-wide v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v4, p1, v7

    if-gez v4, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 469
    :try_start_1
    iget p3, p0, Lyads/lc5;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p3, v1, :cond_2

    add-int/lit8 v1, p3, 0x1

    :cond_2
    move v7, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto :goto_4

    :goto_0
    const/4 v10, 0x0

    move-object v5, p0

    move-wide v8, p1

    .line 470
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Lyads/lc5;->a(IIJZ)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    .line 471
    monitor-exit v5

    goto :goto_3

    .line 472
    :cond_3
    :try_start_3
    invoke-virtual {v5, p0}, Lyads/lc5;->a(I)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, p0

    goto :goto_1

    .line 473
    :goto_2
    monitor-exit v5

    .line 474
    :goto_3
    invoke-virtual {v0, v2, v3}, Lyads/ic5;->a(J)V

    return-void

    .line 475
    :goto_4
    monitor-exit v5

    throw p1
.end method

.method public final a(Lyads/vz2;)V
    .locals 8

    .line 511
    iget-wide v0, p0, Lyads/lc5;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lyads/vz2;->q:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lyads/uz2;

    invoke-direct {v0, p1}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 513
    iget-wide v1, p1, Lyads/vz2;->q:J

    iget-wide v3, p0, Lyads/lc5;->E:J

    add-long/2addr v1, v3

    .line 514
    iput-wide v1, v0, Lyads/uz2;->o:J

    .line 515
    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lyads/lc5;->z:Z

    .line 517
    iput-object p1, p0, Lyads/lc5;->A:Lyads/vz2;

    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    iput-boolean v0, p0, Lyads/lc5;->y:Z

    .line 520
    iget-object p1, p0, Lyads/lc5;->B:Lyads/vz2;

    invoke-static {v1, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 521
    monitor-exit p0

    goto/16 :goto_8

    .line 522
    :cond_1
    :try_start_1
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    .line 523
    iget-object p1, p1, Lyads/to5;->b:Landroid/util/SparseArray;

    .line 524
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 525
    :cond_2
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    .line 526
    iget-object p1, p1, Lyads/to5;->b:Landroid/util/SparseArray;

    .line 527
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 528
    check-cast p1, Lyads/kc5;

    iget-object p1, p1, Lyads/kc5;->a:Lyads/vz2;

    invoke-virtual {p1, v1}, Lyads/vz2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 529
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    .line 530
    iget-object p1, p1, Lyads/to5;->b:Landroid/util/SparseArray;

    .line 531
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 532
    check-cast p1, Lyads/kc5;

    iget-object v1, p1, Lyads/kc5;->a:Lyads/vz2;

    iput-object v1, p0, Lyads/lc5;->B:Lyads/vz2;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    .line 533
    :cond_3
    :goto_1
    iput-object v1, p0, Lyads/lc5;->B:Lyads/vz2;

    .line 534
    :goto_2
    iget-object p1, v1, Lyads/vz2;->m:Ljava/lang/String;

    iget-object v1, v1, Lyads/vz2;->j:Ljava/lang/String;

    .line 535
    sget-object v3, Lyads/z84;->a:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    goto/16 :goto_5

    .line 536
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "audio/g711-mlaw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    :cond_5
    move v7, v4

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "audio/g711-alaw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "audio/mpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "audio/flac"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_4
    const-string v3, "audio/eac3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_5
    const-string v3, "audio/raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move v7, v5

    goto :goto_3

    :sswitch_6
    const-string v3, "audio/ac3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_7
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_8
    const-string v3, "audio/mpeg-L2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    move v7, v6

    goto :goto_3

    :sswitch_9
    const-string v3, "audio/mpeg-L1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    move v7, v2

    goto :goto_3

    :sswitch_a
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    move v7, v0

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    if-nez v1, :cond_10

    goto :goto_5

    .line 537
    :cond_10
    :try_start_2
    invoke-static {v1}, Lyads/z84;->b(Ljava/lang/String;)Lyads/y84;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_5

    .line 538
    :cond_11
    iget p1, p1, Lyads/y84;->b:I

    const/16 v1, 0x10

    if-eq p1, v6, :cond_17

    if-eq p1, v5, :cond_16

    const/16 v3, 0x1d

    if-eq p1, v3, :cond_15

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_14

    const/16 v3, 0x16

    if-eq p1, v3, :cond_13

    const/16 v3, 0x17

    if-eq p1, v3, :cond_12

    move v4, v0

    goto :goto_4

    :cond_12
    const/16 v4, 0xf

    goto :goto_4

    :cond_13
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4

    :cond_14
    move v4, v1

    goto :goto_4

    :cond_15
    const/16 v4, 0xc

    goto :goto_4

    :cond_16
    const/16 v4, 0xb

    :cond_17
    :goto_4
    if-eqz v4, :cond_18

    if-eq v4, v1, :cond_18

    goto :goto_6

    :cond_18
    :goto_5
    move p1, v0

    goto :goto_7

    :goto_6
    :pswitch_1
    move p1, v2

    .line 539
    :goto_7
    iput-boolean p1, p0, Lyads/lc5;->C:Z

    .line 540
    iput-boolean v0, p0, Lyads/lc5;->D:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    monitor-exit p0

    move v0, v2

    .line 542
    :goto_8
    iget-object p0, p0, Lyads/lc5;->f:Lyads/v15;

    if-eqz p0, :cond_19

    if-eqz v0, :cond_19

    .line 543
    iget-object p1, p0, Lyads/v15;->q:Landroid/os/Handler;

    .line 544
    iget-object p0, p0, Lyads/v15;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void

    .line 545
    :goto_9
    monitor-exit p0

    throw p1

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

.method public final a(Lyads/vz2;Lyads/a03;)V
    .locals 5

    .line 555
    iget-object v0, p0, Lyads/lc5;->g:Lyads/vz2;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 556
    :cond_1
    iget-object v0, v0, Lyads/vz2;->p:Lyads/ql2;

    .line 557
    :goto_1
    iput-object p1, p0, Lyads/lc5;->g:Lyads/vz2;

    .line 558
    iget-object v2, p1, Lyads/vz2;->p:Lyads/ql2;

    .line 559
    iget-object v3, p0, Lyads/lc5;->d:Lyads/xl2;

    if-eqz v3, :cond_2

    .line 560
    invoke-interface {v3, p1}, Lyads/xl2;->a(Lyads/vz2;)I

    move-result v3

    .line 561
    new-instance v4, Lyads/uz2;

    invoke-direct {v4, p1}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 562
    iput v3, v4, Lyads/uz2;->D:I

    .line 563
    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 564
    :goto_2
    iput-object v3, p2, Lyads/a03;->b:Lyads/vz2;

    .line 565
    iget-object v3, p0, Lyads/lc5;->h:Lyads/eo2;

    iput-object v3, p2, Lyads/a03;->a:Lyads/eo2;

    .line 566
    iget-object v3, p0, Lyads/lc5;->d:Lyads/xl2;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    .line 567
    invoke-static {v0, v2}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 568
    :cond_4
    iget-object v0, p0, Lyads/lc5;->h:Lyads/eo2;

    .line 569
    iget-object v1, p0, Lyads/lc5;->d:Lyads/xl2;

    iget-object v2, p0, Lyads/lc5;->e:Lyads/tl2;

    invoke-interface {v1, v2, p1}, Lyads/xl2;->a(Lyads/tl2;Lyads/vz2;)Lyads/eo2;

    move-result-object p1

    iput-object p1, p0, Lyads/lc5;->h:Lyads/eo2;

    .line 570
    iput-object p1, p2, Lyads/a03;->a:Lyads/eo2;

    if-eqz v0, :cond_5

    .line 571
    iget-object p0, p0, Lyads/lc5;->e:Lyads/tl2;

    invoke-virtual {v0, p0}, Lyads/eo2;->b(Lyads/tl2;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final declared-synchronized a(Z)Z
    .locals 4

    monitor-enter p0

    .line 546
    :try_start_0
    iget v0, p0, Lyads/lc5;->s:I

    iget v1, p0, Lyads/lc5;->p:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 547
    iget-object p1, p0, Lyads/lc5;->c:Lyads/to5;

    .line 548
    iget v1, p0, Lyads/lc5;->q:I

    add-int/2addr v1, v0

    .line 549
    invoke-virtual {p1, v1}, Lyads/to5;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kc5;

    iget-object p1, p1, Lyads/kc5;->a:Lyads/vz2;

    iget-object v0, p0, Lyads/lc5;->g:Lyads/vz2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return v3

    .line 550
    :cond_0
    :try_start_1
    iget p1, p0, Lyads/lc5;->s:I

    invoke-virtual {p0, p1}, Lyads/lc5;->d(I)I

    move-result p1

    .line 551
    iget-object v0, p0, Lyads/lc5;->h:Lyads/eo2;

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {v0}, Lyads/eo2;->c()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lyads/lc5;->m:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    iget-object p1, p0, Lyads/lc5;->h:Lyads/eo2;

    .line 553
    invoke-virtual {p1}, Lyads/eo2;->d()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    if-nez p1, :cond_4

    .line 554
    :try_start_2
    iget-boolean p1, p0, Lyads/lc5;->w:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lyads/lc5;->B:Lyads/vz2;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lyads/lc5;->g:Lyads/vz2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p1, v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    monitor-exit p0

    return v2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(JZ)I
    .locals 8

    monitor-enter p0

    .line 195
    :try_start_0
    iget v0, p0, Lyads/lc5;->s:I

    invoke-virtual {p0, v0}, Lyads/lc5;->d(I)I

    move-result v2

    .line 196
    iget v0, p0, Lyads/lc5;->s:I

    iget v1, p0, Lyads/lc5;->p:I

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v3, p0, Lyads/lc5;->n:[J

    aget-wide v4, v3, v2

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_1

    .line 198
    :cond_1
    iget-wide v3, p0, Lyads/lc5;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    if-eqz p3, :cond_2

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_2
    sub-int v3, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 199
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lyads/lc5;->a(IIJZ)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    monitor-exit v1

    if-ne p0, p1, :cond_3

    return v7

    :cond_3
    return p0

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    monitor-exit v1

    return v7

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final declared-synchronized b()J
    .locals 2

    monitor-enter p0

    .line 194
    :try_start_0
    iget-wide v0, p0, Lyads/lc5;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)V
    .locals 7

    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    iget v1, p0, Lyads/lc5;->q:I

    iget v2, p0, Lyads/lc5;->p:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    if-ltz v1, :cond_8

    iget v3, p0, Lyads/lc5;->s:I

    sub-int v3, v2, v3

    if-gt v1, v3, :cond_8

    sub-int/2addr v2, v1

    iput v2, p0, Lyads/lc5;->p:I

    iget-wide v3, p0, Lyads/lc5;->u:J

    invoke-virtual {p0, v2}, Lyads/lc5;->c(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lyads/lc5;->v:J

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lyads/lc5;->w:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lyads/lc5;->w:Z

    iget-object v1, p0, Lyads/lc5;->c:Lyads/to5;

    invoke-virtual {v1, p1}, Lyads/to5;->a(I)V

    iget p1, p0, Lyads/lc5;->p:I

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lyads/lc5;->d(I)I

    move-result p1

    iget-object v1, p0, Lyads/lc5;->k:[J

    aget-wide v5, v1, p1

    iget-object p0, p0, Lyads/lc5;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v5, p0

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    iget-wide p0, v0, Lyads/ic5;->f:J

    cmp-long p0, v5, p0

    if-gtz p0, :cond_7

    iput-wide v5, v0, Lyads/ic5;->f:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_6

    iget-object p0, v0, Lyads/ic5;->c:Lyads/hc5;

    iget-wide v1, p0, Lyads/hc5;->a:J

    cmp-long p1, v5, v1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    iget-wide v1, v0, Lyads/ic5;->f:J

    iget-wide v3, p0, Lyads/hc5;->b:J

    cmp-long p1, v1, v3

    iget-object v1, p0, Lyads/hc5;->d:Lyads/hc5;

    if-lez p1, :cond_3

    move-object p0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lyads/ic5;->a(Lyads/hc5;)V

    new-instance p1, Lyads/hc5;

    iget-wide v2, p0, Lyads/hc5;->b:J

    invoke-direct {p1, v2, v3}, Lyads/hc5;-><init>(J)V

    iput-object p1, p0, Lyads/hc5;->d:Lyads/hc5;

    iget-wide v2, v0, Lyads/ic5;->f:J

    iget-wide v4, p0, Lyads/hc5;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move-object p0, p1

    :cond_4
    iput-object p0, v0, Lyads/ic5;->e:Lyads/hc5;

    iget-object p0, v0, Lyads/ic5;->d:Lyads/hc5;

    if-ne p0, v1, :cond_5

    iput-object p1, v0, Lyads/ic5;->d:Lyads/hc5;

    :cond_5
    return-void

    :cond_6
    :goto_3
    iget-object p0, v0, Lyads/ic5;->c:Lyads/hc5;

    invoke-virtual {v0, p0}, Lyads/ic5;->a(Lyads/hc5;)V

    new-instance p0, Lyads/hc5;

    iget-wide v1, v0, Lyads/ic5;->f:J

    invoke-direct {p0, v1, v2}, Lyads/hc5;-><init>(J)V

    iput-object p0, v0, Lyads/ic5;->c:Lyads/hc5;

    iput-object p0, v0, Lyads/ic5;->d:Lyads/hc5;

    iput-object p0, v0, Lyads/ic5;->e:Lyads/hc5;

    return-void

    :cond_7
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final b(Z)V
    .locals 6

    .line 164
    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    .line 165
    iget-object v1, v0, Lyads/ic5;->c:Lyads/hc5;

    .line 166
    invoke-virtual {v0, v1}, Lyads/ic5;->a(Lyads/hc5;)V

    .line 167
    iget-object v1, v0, Lyads/ic5;->c:Lyads/hc5;

    .line 168
    iget-object v2, v1, Lyads/hc5;->c:Lyads/ee;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    .line 169
    iput-wide v2, v1, Lyads/hc5;->a:J

    const-wide/32 v4, 0x10000

    .line 170
    iput-wide v4, v1, Lyads/hc5;->b:J

    .line 171
    iput-object v1, v0, Lyads/ic5;->d:Lyads/hc5;

    .line 172
    iput-object v1, v0, Lyads/ic5;->e:Lyads/hc5;

    .line 173
    iput-wide v2, v0, Lyads/ic5;->f:J

    .line 174
    iget-object v0, v0, Lyads/ic5;->a:Lyads/aj0;

    invoke-virtual {v0}, Lyads/aj0;->b()V

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lyads/lc5;->p:I

    .line 176
    iput v0, p0, Lyads/lc5;->q:I

    .line 177
    iput v0, p0, Lyads/lc5;->r:I

    .line 178
    iput v0, p0, Lyads/lc5;->s:I

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lyads/lc5;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 180
    iput-wide v2, p0, Lyads/lc5;->t:J

    .line 181
    iput-wide v2, p0, Lyads/lc5;->u:J

    .line 182
    iput-wide v2, p0, Lyads/lc5;->v:J

    .line 183
    iput-boolean v0, p0, Lyads/lc5;->w:Z

    .line 184
    iget-object v2, p0, Lyads/lc5;->c:Lyads/to5;

    .line 185
    :goto_0
    iget-object v3, v2, Lyads/to5;->b:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 187
    iget-object v3, v2, Lyads/to5;->c:Lyads/a60;

    iget-object v4, v2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Ll2;

    invoke-virtual {v3, v4}, Ll2;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 188
    iput v0, v2, Lyads/to5;->a:I

    .line 189
    iget-object v0, v2, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lyads/lc5;->A:Lyads/vz2;

    .line 191
    iput-object p1, p0, Lyads/lc5;->B:Lyads/vz2;

    .line 192
    iput-boolean v1, p0, Lyads/lc5;->y:Z

    :cond_1
    return-void

    .line 193
    :cond_2
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final c(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 70
    invoke-virtual {p0, v2}, Lyads/lc5;->d(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 71
    iget-object v4, p0, Lyads/lc5;->n:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 72
    iget-object v4, p0, Lyads/lc5;->m:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 73
    iget v2, p0, Lyads/lc5;->i:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final declared-synchronized c()Lyads/vz2;
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lyads/lc5;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/lc5;->B:Lyads/vz2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(JZ)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lyads/lc5;->e()V

    iget v0, p0, Lyads/lc5;->s:I

    invoke-virtual {p0, v0}, Lyads/lc5;->d(I)I

    move-result v2

    iget v0, p0, Lyads/lc5;->s:I

    iget v1, p0, Lyads/lc5;->p:I

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lyads/lc5;->n:[J

    aget-wide v4, v3, v2

    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lyads/lc5;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    if-nez p3, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    sub-int v3, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lyads/lc5;->a(IIJZ)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    monitor-exit v1

    return v7

    :cond_2
    :try_start_2
    iput-wide v4, v1, Lyads/lc5;->t:J

    iget p1, v1, Lyads/lc5;->s:I

    add-int/2addr p1, p0

    iput p1, v1, Lyads/lc5;->s:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    monitor-exit v1

    return v7

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final d(I)I
    .locals 1

    .line 15
    iget v0, p0, Lyads/lc5;->r:I

    add-int/2addr v0, p1

    .line 16
    iget p0, p0, Lyads/lc5;->i:I

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lyads/lc5;->h:Lyads/eo2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/lc5;->e:Lyads/tl2;

    invoke-virtual {v0, v1}, Lyads/eo2;->b(Lyads/tl2;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/lc5;->h:Lyads/eo2;

    iput-object v0, p0, Lyads/lc5;->g:Lyads/vz2;

    :cond_0
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lyads/lc5;->s:I

    iget-object v0, p0, Lyads/lc5;->a:Lyads/ic5;

    iget-object v1, v0, Lyads/ic5;->c:Lyads/hc5;

    iput-object v1, v0, Lyads/ic5;->d:Lyads/hc5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
