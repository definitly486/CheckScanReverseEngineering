.class public final Lyads/hw5;
.super Lyads/gs;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:I

.field public B:J

.field public final n:Landroid/os/Handler;

.field public final o:Lyads/bq2;

.field public final p:Lyads/pt5;

.field public final q:Lyads/a03;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Lyads/vz2;

.field public w:Lyads/nt5;

.field public x:Lyads/qt5;

.field public y:Lyads/rt5;

.field public z:Lyads/rt5;


# direct methods
.method public constructor <init>(Lyads/bq2;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Lyads/pt5;->a:Lyads/pt5;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lyads/gs;-><init>(I)V

    iput-object p1, p0, Lyads/hw5;->o:Lyads/bq2;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lyads/u56;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/hw5;->n:Landroid/os/Handler;

    iput-object v0, p0, Lyads/hw5;->p:Lyads/pt5;

    new-instance p1, Lyads/a03;

    invoke-direct {p1}, Lyads/a03;-><init>()V

    iput-object p1, p0, Lyads/hw5;->q:Lyads/a03;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/hw5;->B:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/vz2;)I
    .locals 2

    .line 433
    iget-object p0, p0, Lyads/hw5;->p:Lyads/pt5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    iget-object p0, p1, Lyads/vz2;->m:Ljava/lang/String;

    .line 435
    const-string v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 436
    const-string v0, "text/x-ssa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    const-string v0, "application/cea-708"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    const-string v0, "application/pgs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    const-string v0, "text/x-exoplayer-cues"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iget-object p0, p1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {p0}, Lyads/z84;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 448
    invoke-static {p0, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 449
    :cond_1
    invoke-static {v1, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 450
    :cond_2
    :goto_0
    iget p0, p1, Lyads/vz2;->F:I

    if-nez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    .line 451
    :goto_1
    invoke-static {p0, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0
.end method

.method public final a(JJ)V
    .locals 11

    iget-boolean p3, p0, Lyads/gs;->l:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lyads/hw5;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lyads/hw5;->n()V

    iput-boolean p4, p0, Lyads/hw5;->s:Z

    :cond_0
    iget-boolean p3, p0, Lyads/hw5;->s:Z

    if-eqz p3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p3, p0, Lyads/hw5;->z:Lyads/rt5;

    const-string v0, "Subtitle decoding failed. streamFormat="

    const-string v1, "TextRenderer"

    const/4 v2, 0x0

    if-nez p3, :cond_3

    iget-object p3, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3, p1, p2}, Lyads/nt5;->a(J)V

    :try_start_0
    iget-object p3, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Lyads/ii0;->a()Lyads/rt5;

    move-result-object p3

    iput-object p3, p0, Lyads/hw5;->z:Lyads/rt5;
    :try_end_0
    .catch Lyads/ot5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lyads/hw5;->v:Lyads/vz2;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object p2, p0, Lyads/hw5;->n:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {p2, p1}, Lyads/bq2;->a(Ljava/util/List;)V

    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance p3, Lyads/ub0;

    invoke-direct {p3, p1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lyads/bq2;->a(Lyads/ub0;)V

    :goto_0
    invoke-virtual {p0}, Lyads/hw5;->o()V

    invoke-virtual {p0}, Lyads/hw5;->m()V

    return-void

    :cond_3
    :goto_1
    iget p3, p0, Lyads/gs;->g:I

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object p3, p0, Lyads/hw5;->y:Lyads/rt5;

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lyads/hw5;->l()J

    move-result-wide v4

    move p3, v2

    :goto_2
    cmp-long v4, v4, p1

    if-gtz v4, :cond_6

    iget p3, p0, Lyads/hw5;->A:I

    add-int/2addr p3, p4

    iput p3, p0, Lyads/hw5;->A:I

    invoke-virtual {p0}, Lyads/hw5;->l()J

    move-result-wide v4

    move p3, p4

    goto :goto_2

    :cond_5
    move p3, v2

    :cond_6
    iget-object v4, p0, Lyads/hw5;->z:Lyads/rt5;

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v6}, Lyads/ev;->b(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez p3, :cond_a

    invoke-virtual {p0}, Lyads/hw5;->l()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v4, v7, v9

    if-nez v4, :cond_a

    iget v4, p0, Lyads/hw5;->u:I

    if-ne v4, v3, :cond_7

    invoke-virtual {p0}, Lyads/hw5;->o()V

    invoke-virtual {p0}, Lyads/hw5;->m()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lyads/hw5;->n()V

    iput-boolean p4, p0, Lyads/hw5;->s:Z

    goto :goto_3

    :cond_8
    iget-wide v7, v4, Lyads/rt5;->c:J

    cmp-long v7, v7, p1

    if-gtz v7, :cond_a

    iget-object p3, p0, Lyads/hw5;->y:Lyads/rt5;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lyads/rt5;->b()V

    :cond_9
    invoke-virtual {v4, p1, p2}, Lyads/rt5;->a(J)I

    move-result p3

    iput p3, p0, Lyads/hw5;->A:I

    iput-object v4, p0, Lyads/hw5;->y:Lyads/rt5;

    iput-object v5, p0, Lyads/hw5;->z:Lyads/rt5;

    move p3, p4

    :cond_a
    :goto_3
    if-eqz p3, :cond_c

    iget-object p3, p0, Lyads/hw5;->y:Lyads/rt5;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lyads/hw5;->y:Lyads/rt5;

    invoke-virtual {p3, p1, p2}, Lyads/rt5;->b(J)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lyads/hw5;->n:Landroid/os/Handler;

    if-eqz p2, :cond_b

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {p2, p1}, Lyads/bq2;->a(Ljava/util/List;)V

    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance p3, Lyads/ub0;

    invoke-direct {p3, p1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lyads/bq2;->a(Lyads/ub0;)V

    :cond_c
    :goto_4
    iget p1, p0, Lyads/hw5;->u:I

    if-ne p1, v3, :cond_d

    goto/16 :goto_8

    :cond_d
    :goto_5
    :try_start_1
    iget-boolean p1, p0, Lyads/hw5;->r:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lyads/hw5;->x:Lyads/qt5;

    if-nez p1, :cond_f

    iget-object p1, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ii0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/qt5;

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    iput-object p1, p0, Lyads/hw5;->x:Lyads/qt5;

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_9

    :cond_f
    :goto_6
    iget p2, p0, Lyads/hw5;->u:I

    if-ne p2, p4, :cond_10

    iput v6, p1, Lyads/ev;->b:I

    iget-object p2, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lyads/ii0;->a(Lyads/qt5;)V

    iput-object v5, p0, Lyads/hw5;->x:Lyads/qt5;

    iput v3, p0, Lyads/hw5;->u:I

    return-void

    :cond_10
    iget-object p2, p0, Lyads/hw5;->q:Lyads/a03;

    invoke-virtual {p0, p2, p1, v2}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_13

    invoke-virtual {p1, v6}, Lyads/ev;->b(I)Z

    move-result p2

    if-eqz p2, :cond_11

    iput-boolean p4, p0, Lyads/hw5;->r:Z

    iput-boolean v2, p0, Lyads/hw5;->t:Z

    move p2, v2

    goto :goto_7

    :cond_11
    iget-object p2, p0, Lyads/hw5;->q:Lyads/a03;

    iget-object p2, p2, Lyads/a03;->b:Lyads/vz2;

    if-nez p2, :cond_12

    goto :goto_8

    :cond_12
    iget-wide p2, p2, Lyads/vz2;->q:J

    iput-wide p2, p1, Lyads/qt5;->i:J

    invoke-virtual {p1}, Lyads/mi0;->c()V

    iget-boolean p2, p0, Lyads/hw5;->t:Z

    invoke-virtual {p1, p4}, Lyads/ev;->b(I)Z

    move-result p3

    xor-int/2addr p3, p4

    and-int/2addr p2, p3

    iput-boolean p2, p0, Lyads/hw5;->t:Z

    :goto_7
    if-nez p2, :cond_d

    iget-object p2, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lyads/ii0;->a(Lyads/qt5;)V

    iput-object v5, p0, Lyads/hw5;->x:Lyads/qt5;
    :try_end_1
    .catch Lyads/ot5; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_13
    const/4 p1, -0x3

    if-ne p2, p1, :cond_d

    :cond_14
    :goto_8
    return-void

    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lyads/hw5;->v:Lyads/vz2;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object p2, p0, Lyads/hw5;->n:Landroid/os/Handler;

    if-eqz p2, :cond_15

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_15
    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {p2, p1}, Lyads/bq2;->a(Ljava/util/List;)V

    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance p3, Lyads/ub0;

    invoke-direct {p3, p1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lyads/bq2;->a(Lyads/ub0;)V

    :goto_a
    invoke-virtual {p0}, Lyads/hw5;->o()V

    invoke-virtual {p0}, Lyads/hw5;->m()V

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .line 452
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 453
    iget-object p2, p0, Lyads/hw5;->n:Landroid/os/Handler;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 455
    :cond_0
    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {p2, p1}, Lyads/bq2;->a(Ljava/util/List;)V

    .line 456
    iget-object p2, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance v0, Lyads/ub0;

    invoke-direct {v0, p1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lyads/bq2;->a(Lyads/ub0;)V

    .line 457
    :goto_0
    iput-boolean p3, p0, Lyads/hw5;->r:Z

    .line 458
    iput-boolean p3, p0, Lyads/hw5;->s:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 459
    iput-wide p1, p0, Lyads/hw5;->B:J

    .line 460
    iget p1, p0, Lyads/hw5;->u:I

    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {p0}, Lyads/hw5;->o()V

    .line 462
    invoke-virtual {p0}, Lyads/hw5;->m()V

    return-void

    .line 463
    :cond_1
    invoke-virtual {p0}, Lyads/hw5;->n()V

    .line 464
    iget-object p0, p0, Lyads/hw5;->w:Lyads/nt5;

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    invoke-interface {p0}, Lyads/ii0;->flush()V

    return-void
.end method

.method public final a([Lyads/vz2;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 429
    aget-object p1, p1, p2

    iput-object p1, p0, Lyads/hw5;->v:Lyads/vz2;

    .line 430
    iget-object p1, p0, Lyads/hw5;->w:Lyads/nt5;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 431
    iput p1, p0, Lyads/hw5;->u:I

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lyads/hw5;->m()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/hw5;->s:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/hw5;->v:Lyads/vz2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/hw5;->B:J

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, p0, Lyads/hw5;->n:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {v1, v0}, Lyads/bq2;->a(Ljava/util/List;)V

    iget-object v1, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance v2, Lyads/ub0;

    invoke-direct {v2, v0}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lyads/bq2;->a(Lyads/ub0;)V

    :goto_0
    invoke-virtual {p0}, Lyads/hw5;->o()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lyads/hw5;->o:Lyads/bq2;

    invoke-virtual {v0, p1}, Lyads/bq2;->a(Ljava/util/List;)V

    iget-object p0, p0, Lyads/hw5;->o:Lyads/bq2;

    new-instance v0, Lyads/ub0;

    invoke-direct {v0, p1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lyads/bq2;->a(Lyads/ub0;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public final l()J
    .locals 4

    iget v0, p0, Lyads/hw5;->A:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lyads/hw5;->y:Lyads/rt5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lyads/hw5;->A:I

    iget-object v1, p0, Lyads/hw5;->y:Lyads/rt5;

    invoke-virtual {v1}, Lyads/rt5;->a()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Lyads/hw5;->y:Lyads/rt5;

    iget p0, p0, Lyads/hw5;->A:I

    invoke-virtual {v0, p0}, Lyads/rt5;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/hw5;->t:Z

    iget-object v1, p0, Lyads/hw5;->p:Lyads/pt5;

    iget-object v2, p0, Lyads/hw5;->v:Lyads/vz2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "application/ttml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "application/x-subrip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "text/x-exoplayer-cues"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "text/x-ssa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v3, "application/pgs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "application/dvbsubs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    new-instance v0, Lyads/z26;

    invoke-direct {v0}, Lyads/z26;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lyads/kt5;

    invoke-direct {v0}, Lyads/kt5;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lyads/my;

    iget v1, v2, Lyads/vz2;->E:I

    iget-object v2, v2, Lyads/vz2;->o:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lyads/my;-><init>(ILjava/util/List;)V

    goto :goto_2

    :pswitch_3
    new-instance v0, Lyads/jr2;

    invoke-direct {v0}, Lyads/jr2;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v0, Lyads/iy;

    iget v2, v2, Lyads/vz2;->E:I

    invoke-direct {v0, v1, v2}, Lyads/iy;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_5
    new-instance v0, Lyads/vp5;

    iget-object v1, v2, Lyads/vz2;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Lyads/vp5;-><init>(Ljava/util/List;)V

    goto :goto_2

    :pswitch_6
    new-instance v0, Lyads/k36;

    iget-object v1, v2, Lyads/vz2;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Lyads/k36;-><init>(Ljava/util/List;)V

    goto :goto_2

    :pswitch_7
    new-instance v0, Lyads/tk6;

    invoke-direct {v0}, Lyads/tk6;-><init>()V

    goto :goto_2

    :pswitch_8
    new-instance v0, Lyads/xa4;

    invoke-direct {v0}, Lyads/xa4;-><init>()V

    goto :goto_2

    :pswitch_9
    new-instance v0, Lyads/gu4;

    invoke-direct {v0}, Lyads/gu4;-><init>()V

    goto :goto_2

    :pswitch_a
    new-instance v0, Lyads/gm2;

    iget-object v1, v2, Lyads/vz2;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Lyads/gm2;-><init>(Ljava/util/List;)V

    :goto_2
    iput-object v0, p0, Lyads/hw5;->w:Lyads/nt5;

    return-void

    :cond_c
    :goto_3
    const-string p0, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {p0, v1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_b
        -0x4a6813e3 -> :sswitch_a
        -0x3d28a9ba -> :sswitch_9
        -0x3be2f26c -> :sswitch_8
        0x2935f49f -> :sswitch_7
        0x310bebca -> :sswitch_6
        0x37713300 -> :sswitch_5
        0x47a1c707 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/hw5;->x:Lyads/qt5;

    const/4 v1, -0x1

    iput v1, p0, Lyads/hw5;->A:I

    iget-object v1, p0, Lyads/hw5;->y:Lyads/rt5;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/rt5;->b()V

    iput-object v0, p0, Lyads/hw5;->y:Lyads/rt5;

    :cond_0
    iget-object v1, p0, Lyads/hw5;->z:Lyads/rt5;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/rt5;->b()V

    iput-object v0, p0, Lyads/hw5;->z:Lyads/rt5;

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Lyads/hw5;->n()V

    iget-object v0, p0, Lyads/hw5;->w:Lyads/nt5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lyads/ii0;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/hw5;->w:Lyads/nt5;

    const/4 v0, 0x0

    iput v0, p0, Lyads/hw5;->u:I

    return-void
.end method
