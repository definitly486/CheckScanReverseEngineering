.class public final Lyads/sy3;
.super Lyads/zy3;
.source "SourceFile"

# interfaces
.implements Lyads/my3;


# instance fields
.field public final G0:Landroid/content/Context;

.field public final H0:Lyads/nm;

.field public final I0:Lyads/vj0;

.field public J0:I

.field public K0:Z

.field public L0:Lyads/vz2;

.field public M0:J

.field public N0:Z

.field public O0:Z

.field public P0:Z

.field public Q0:Lyads/m65;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/oy3;Lyads/bz3;ZLandroid/os/Handler;Lyads/bq2;Lyads/vj0;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lyads/zy3;-><init>(ILyads/oy3;Lyads/bz3;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lyads/sy3;->G0:Landroid/content/Context;

    iput-object p7, v0, Lyads/sy3;->I0:Lyads/vj0;

    new-instance p0, Lyads/nm;

    invoke-direct {p0, p5, p6}, Lyads/nm;-><init>(Landroid/os/Handler;Lyads/bq2;)V

    iput-object p0, v0, Lyads/sy3;->H0:Lyads/nm;

    new-instance p0, Lyads/ry3;

    invoke-direct {p0, v0}, Lyads/ry3;-><init>(Lyads/sy3;)V

    iput-object p0, p7, Lyads/vj0;->r:Lyads/ry3;

    return-void
.end method

.method public static a(Lyads/bz3;Lyads/vz2;ZLyads/vj0;)Lyads/oe3;
    .locals 3

    .line 443
    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    sget-object p0, Lyads/oe3;->c:Lyads/le3;

    .line 445
    sget-object p0, Lyads/k55;->f:Lyads/k55;

    return-object p0

    .line 446
    :cond_0
    invoke-virtual {p3, p1}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 447
    const-string p3, "audio/raw"

    .line 448
    invoke-static {p3, v1, v1}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p3

    .line 449
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/vy3;

    :goto_0
    if-eqz p3, :cond_2

    .line 450
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0

    .line 451
    :cond_2
    check-cast p0, Ld92;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, v1}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 452
    invoke-static {p1}, Lyads/jz3;->a(Lyads/vz2;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 453
    invoke-static {p0}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p0

    return-object p0

    .line 454
    :cond_3
    invoke-static {p1, p2, v1}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 455
    sget-object p2, Lyads/oe3;->c:Lyads/le3;

    .line 456
    new-instance p2, Lyads/ke3;

    invoke-direct {p2}, Lyads/ke3;-><init>()V

    .line 457
    invoke-virtual {p2, p0}, Lyads/ke3;->a(Ljava/util/List;)Lyads/ke3;

    move-result-object p0

    .line 458
    invoke-virtual {p0, p1}, Lyads/ke3;->a(Ljava/util/List;)Lyads/ke3;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Lyads/ke3;->a()Lyads/k55;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(F[Lyads/vz2;)F
    .locals 4

    .line 465
    array-length p0, p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v3, p2, v1

    .line 466
    iget v3, v3, Lyads/vz2;->A:I

    if-eq v3, v0, :cond_0

    .line 467
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    int-to-float p0, v2

    mul-float/2addr p0, p1

    return p0
.end method

.method public final a(Lyads/bz3;Lyads/vz2;)I
    .locals 12

    .line 400
    iget-object v0, p2, Lyads/vz2;->m:Ljava/lang/String;

    .line 401
    invoke-static {v0}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    invoke-static {v1, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 403
    :cond_0
    sget v0, Lyads/u56;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    move v0, v1

    .line 404
    :goto_0
    iget v2, p2, Lyads/vz2;->F:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    const/4 v5, 0x2

    if-eqz v2, :cond_4

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    const/16 v6, 0x8

    const/4 v7, 0x4

    const-string v8, "audio/raw"

    if-eqz v2, :cond_7

    .line 405
    iget-object v9, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 406
    invoke-virtual {v9, p2}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v4, :cond_6

    .line 407
    invoke-static {v8, v1, v1}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 408
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/vy3;

    :goto_4
    if-eqz v4, :cond_7

    .line 409
    :cond_6
    invoke-static {v7, v6, v0}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 410
    :cond_7
    iget-object v4, p2, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 411
    invoke-virtual {v4, p2}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 412
    :cond_8
    invoke-static {v3, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 413
    :cond_9
    :goto_5
    iget-object v4, p0, Lyads/sy3;->I0:Lyads/vj0;

    iget v9, p2, Lyads/vz2;->z:I

    iget v10, p2, Lyads/vz2;->A:I

    .line 414
    new-instance v11, Lyads/uz2;

    invoke-direct {v11}, Lyads/uz2;-><init>()V

    .line 415
    iput-object v8, v11, Lyads/uz2;->k:Ljava/lang/String;

    .line 416
    iput v9, v11, Lyads/uz2;->x:I

    .line 417
    iput v10, v11, Lyads/uz2;->y:I

    .line 418
    iput v5, v11, Lyads/uz2;->z:I

    .line 419
    new-instance v8, Lyads/vz2;

    invoke-direct {v8, v11}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 420
    invoke-virtual {v4, v8}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result v4

    if-eqz v4, :cond_12

    .line 421
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 422
    invoke-static {p1, p2, v1, p0}, Lyads/sy3;->a(Lyads/bz3;Lyads/vz2;ZLyads/vj0;)Lyads/oe3;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 424
    invoke-static {v3, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    :cond_a
    if-nez v2, :cond_b

    .line 425
    invoke-static {v5, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 426
    :cond_b
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/vy3;

    .line 427
    invoke-virtual {p1, p2}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result v2

    if-nez v2, :cond_d

    move v4, v3

    .line 428
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 429
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/vy3;

    .line 430
    invoke-virtual {v5, p2}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result v8

    if-eqz v8, :cond_c

    move p0, v1

    move-object p1, v5

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    move p0, v3

    move v3, v2

    :goto_7
    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v7, 0x3

    :goto_8
    if-eqz v3, :cond_f

    .line 431
    invoke-virtual {p1, p2}, Lyads/vy3;->b(Lyads/vz2;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/16 v6, 0x10

    .line 432
    :cond_f
    iget-boolean p1, p1, Lyads/vy3;->g:Z

    if-eqz p1, :cond_10

    const/16 p1, 0x40

    goto :goto_9

    :cond_10
    move p1, v1

    :goto_9
    if-eqz p0, :cond_11

    const/16 v1, 0x80

    :cond_11
    or-int p0, v7, v6

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    or-int/2addr p0, v1

    return p0

    .line 433
    :cond_12
    invoke-static {v3, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0
.end method

.method public final a(Lyads/vz2;Lyads/vy3;)I
    .locals 1

    .line 579
    sget-object v0, Lyads/m25;->a:Lyads/ty3;

    invoke-virtual {v0}, Lyads/ty3;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 580
    sget p2, Lyads/u56;->a:I

    const/16 v0, 0x18

    if-ge p2, v0, :cond_1

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lyads/sy3;->G0:Landroid/content/Context;

    invoke-static {p0}, Lyads/u56;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 581
    :cond_1
    iget p0, p1, Lyads/vz2;->n:I

    return p0
.end method

.method public final a()J
    .locals 4

    .line 434
    iget v0, p0, Lyads/gs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/sy3;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lyads/vj0;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 436
    iget-boolean v2, p0, Lyads/sy3;->O0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-wide v2, p0, Lyads/sy3;->M0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lyads/sy3;->M0:J

    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p0, Lyads/sy3;->O0:Z

    .line 439
    :cond_1
    iget-wide v0, p0, Lyads/sy3;->M0:J

    return-wide v0
.end method

.method public final a(Lyads/bz3;Lyads/vz2;Z)Ljava/util/ArrayList;
    .locals 0

    .line 440
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 441
    invoke-static {p1, p2, p3, p0}, Lyads/sy3;->a(Lyads/bz3;Lyads/vz2;ZLyads/vj0;)Lyads/oe3;

    move-result-object p0

    .line 442
    invoke-static {p0, p2}, Lyads/jz3;->a(Lyads/oe3;Lyads/vz2;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/vy3;Lyads/vz2;Landroid/media/MediaCrypto;F)Lyads/ny3;
    .locals 12

    move/from16 v0, p4

    iget-object v1, p0, Lyads/gs;->i:[Lyads/vz2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p1}, Lyads/sy3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result v2

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v4, v1

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v1, v7

    invoke-virtual {p1, p2, v8}, Lyads/vy3;->a(Lyads/vz2;Lyads/vz2;)Lyads/oi0;

    move-result-object v9

    iget v9, v9, Lyads/oi0;->d:I

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8, p1}, Lyads/sy3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Lyads/sy3;->J0:I

    iget-object v1, p1, Lyads/vy3;->a:Ljava/lang/String;

    sget v2, Lyads/u56;->a:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_4

    new-instance v7, Ljava/lang/String;

    const-string v8, "T01YLlNFQy5hYWMuZGVj"

    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    sget-object v9, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/String;

    const-string v7, "c2Ftc3VuZw=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v1, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v7, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lyads/u56;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    const-string v8, "emVyb2ZsdGU="

    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/String;

    const-string v8, "aGVyb2x0ZQ=="

    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/String;

    const-string v8, "aGVyb3FsdGU="

    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    iput-boolean v1, p0, Lyads/sy3;->K0:Z

    iget-object v1, p1, Lyads/vy3;->c:Ljava/lang/String;

    iget v7, p0, Lyads/sy3;->J0:I

    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    invoke-virtual {v8, v9, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lyads/vz2;->z:I

    const-string v9, "channel-count"

    invoke-virtual {v8, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p2, Lyads/vz2;->A:I

    const-string v9, "sample-rate"

    invoke-virtual {v8, v9, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p2, Lyads/vz2;->o:Ljava/util/List;

    move v9, v5

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    const-string v10, "csd-"

    invoke-static {v9, v10}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    const-string v1, "max-input-size"

    invoke-static {v8, v1, v7}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 v1, 0x17

    if-lt v2, v1, :cond_7

    const-string v7, "priority"

    invoke-virtual {v8, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_7

    if-ne v2, v1, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v7, "WlRFIEIyMDE3Rw=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    sget-object v9, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v7, Lyads/u56;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/String;

    const-string v10, "QVhPTiA3IG1pbmk="

    invoke-static {v10, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v1, v10, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "operating-rate"

    invoke-virtual {v8, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_7
    :goto_4
    const/16 v0, 0x1c

    if-gt v2, v0, :cond_8

    iget-object v0, p2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "audio/ac4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/String;

    const-string v1, "YWM0LWlzLXN5bmM="

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v5, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v8, v0, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const-string v0, "audio/raw"

    if-lt v2, v4, :cond_9

    iget-object v1, p0, Lyads/sy3;->I0:Lyads/vj0;

    iget v4, p2, Lyads/vz2;->z:I

    iget v5, p2, Lyads/vz2;->A:I

    new-instance v6, Lyads/uz2;

    invoke-direct {v6}, Lyads/uz2;-><init>()V

    iput-object v0, v6, Lyads/uz2;->k:Ljava/lang/String;

    iput v4, v6, Lyads/uz2;->x:I

    iput v5, v6, Lyads/uz2;->y:I

    const/4 v4, 0x4

    iput v4, v6, Lyads/uz2;->z:I

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v6}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-virtual {v1, v5}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_9

    const-string v1, "pcm-encoding"

    invoke-virtual {v8, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    const/16 v1, 0x20

    if-lt v2, v1, :cond_a

    const-string v1, "max-output-channel-count"

    const/16 v2, 0x63

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    iget-object v1, p1, Lyads/vy3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p2, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, p2

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lyads/sy3;->L0:Lyads/vz2;

    new-instance v0, Lyads/ny3;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lyads/ny3;-><init>(Lyads/vy3;Landroid/media/MediaFormat;Lyads/vz2;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    return-object v0
.end method

.method public final a(Lyads/a03;)Lyads/oi0;
    .locals 1

    .line 473
    invoke-super {p0, p1}, Lyads/zy3;->a(Lyads/a03;)Lyads/oi0;

    move-result-object v0

    .line 474
    iget-object p0, p0, Lyads/sy3;->H0:Lyads/nm;

    iget-object p1, p1, Lyads/a03;->b:Lyads/vz2;

    invoke-virtual {p0, p1, v0}, Lyads/nm;->a(Lyads/vz2;Lyads/oi0;)V

    return-object v0
.end method

.method public final a(Lyads/vy3;Lyads/vz2;Lyads/vz2;)Lyads/oi0;
    .locals 8

    .line 460
    invoke-virtual {p1, p2, p3}, Lyads/vy3;->a(Lyads/vz2;Lyads/vz2;)Lyads/oi0;

    move-result-object v0

    .line 461
    iget v1, v0, Lyads/oi0;->e:I

    .line 462
    invoke-virtual {p0, p3, p1}, Lyads/sy3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result v2

    iget p0, p0, Lyads/sy3;->J0:I

    if-le v2, p0, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 463
    new-instance v2, Lyads/oi0;

    iget-object v3, p1, Lyads/vy3;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p0, 0x0

    :goto_0
    move v6, p0

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    .line 464
    :cond_1
    iget p0, v0, Lyads/oi0;->d:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Lyads/oi0;-><init>(Ljava/lang/String;Lyads/vz2;Lyads/vz2;II)V

    return-object v2
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 545
    :pswitch_0
    check-cast p2, Lyads/m65;

    iput-object p2, p0, Lyads/sy3;->Q0:Lyads/m65;

    return-void

    .line 546
    :pswitch_1
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 547
    iget p2, p0, Lyads/vj0;->W:I

    if-eq p2, p1, :cond_a

    .line 548
    iput p1, p0, Lyads/vj0;->W:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 549
    :goto_0
    iput-boolean p1, p0, Lyads/vj0;->V:Z

    .line 550
    invoke-virtual {p0}, Lyads/vj0;->b()V

    return-void

    .line 551
    :pswitch_2
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 552
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object p1

    .line 553
    iget-object v1, p1, Lyads/qj0;->a:Lyads/dw4;

    .line 554
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object p1

    .line 555
    iget-object p2, p1, Lyads/qj0;->a:Lyads/dw4;

    invoke-virtual {v1, p2}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lyads/qj0;->b:Z

    if-eq v2, p1, :cond_a

    .line 556
    :cond_1
    new-instance v0, Lyads/qj0;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lyads/qj0;-><init>(Lyads/dw4;ZJJ)V

    .line 557
    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 558
    iput-object v0, p0, Lyads/vj0;->w:Lyads/qj0;

    return-void

    .line 559
    :cond_2
    iput-object v0, p0, Lyads/vj0;->x:Lyads/qj0;

    return-void

    .line 560
    :cond_3
    check-cast p2, Lyads/an;

    .line 561
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 562
    iget-object p1, p0, Lyads/vj0;->X:Lyads/an;

    .line 563
    invoke-virtual {p1, p2}, Lyads/an;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 564
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    iget-object p1, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    if-eqz p1, :cond_5

    .line 566
    iget-object p1, p0, Lyads/vj0;->X:Lyads/an;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    :cond_5
    iput-object p2, p0, Lyads/vj0;->X:Lyads/an;

    return-void

    .line 568
    :cond_6
    check-cast p2, Lyads/am;

    .line 569
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 570
    iget-object p1, p0, Lyads/vj0;->v:Lyads/am;

    .line 571
    invoke-virtual {p1, p2}, Lyads/am;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 572
    :cond_7
    iput-object p2, p0, Lyads/vj0;->v:Lyads/am;

    .line 573
    iget-boolean p1, p0, Lyads/vj0;->Y:Z

    if-eqz p1, :cond_8

    goto :goto_1

    .line 574
    :cond_8
    invoke-virtual {p0}, Lyads/vj0;->b()V

    return-void

    .line 575
    :cond_9
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 576
    iget p2, p0, Lyads/vj0;->J:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_a

    .line 577
    iput p1, p0, Lyads/vj0;->J:F

    .line 578
    invoke-virtual {p0}, Lyads/vj0;->j()V

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JZ)V
    .locals 0

    .line 503
    invoke-super {p0, p1, p2, p3}, Lyads/zy3;->a(JZ)V

    .line 504
    iget-object p3, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p3}, Lyads/vj0;->b()V

    .line 505
    iput-wide p1, p0, Lyads/sy3;->M0:J

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Lyads/sy3;->N0:Z

    .line 507
    iput-boolean p1, p0, Lyads/sy3;->O0:Z

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 470
    const-string v0, "Audio codec error"

    .line 471
    invoke-static {v0, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecAudioRenderer"

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {p0, p1}, Lyads/nm;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {p0, p1}, Lyads/nm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    .line 468
    iget-object p0, p0, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual/range {p0 .. p5}, Lyads/nm;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final a(Lyads/dw4;)V
    .locals 7

    .line 529
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    new-instance v1, Lyads/dw4;

    iget v0, p1, Lyads/dw4;->b:F

    .line 531
    sget v2, Lyads/u56;->a:I

    const/high16 v2, 0x41000000    # 8.0f

    .line 532
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 533
    iget p1, p1, Lyads/dw4;->c:F

    .line 534
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 535
    invoke-direct {v1, v0, p1}, Lyads/dw4;-><init>(FF)V

    .line 536
    iget-boolean p1, p0, Lyads/vj0;->k:Z

    if-eqz p1, :cond_0

    sget p1, Lyads/u56;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 537
    invoke-virtual {p0, v1}, Lyads/vj0;->a(Lyads/dw4;)V

    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object p1

    iget-boolean v2, p1, Lyads/qj0;->b:Z

    .line 539
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object p1

    .line 540
    iget-object v0, p1, Lyads/qj0;->a:Lyads/dw4;

    invoke-virtual {v1, v0}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lyads/qj0;->b:Z

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 541
    :cond_2
    :goto_0
    new-instance v0, Lyads/qj0;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lyads/qj0;-><init>(Lyads/dw4;ZJJ)V

    .line 542
    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 543
    iput-object v0, p0, Lyads/vj0;->w:Lyads/qj0;

    return-void

    .line 544
    :cond_3
    iput-object v0, p0, Lyads/vj0;->x:Lyads/qj0;

    return-void
.end method

.method public final a(Lyads/vz2;Landroid/media/MediaFormat;)V
    .locals 5

    .line 475
    iget-object v0, p0, Lyads/sy3;->L0:Lyads/vz2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 476
    :cond_0
    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 477
    :cond_1
    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget v0, p1, Lyads/vz2;->B:I

    goto :goto_0

    .line 479
    :cond_2
    sget v0, Lyads/u56;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 480
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 481
    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lyads/u56;->b(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 483
    :goto_0
    new-instance v4, Lyads/uz2;

    invoke-direct {v4}, Lyads/uz2;-><init>()V

    .line 484
    iput-object v3, v4, Lyads/uz2;->k:Ljava/lang/String;

    .line 485
    iput v0, v4, Lyads/uz2;->z:I

    .line 486
    iget v0, p1, Lyads/vz2;->C:I

    .line 487
    iput v0, v4, Lyads/uz2;->A:I

    .line 488
    iget v0, p1, Lyads/vz2;->D:I

    .line 489
    iput v0, v4, Lyads/uz2;->B:I

    .line 490
    const-string v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 491
    iput v0, v4, Lyads/uz2;->x:I

    .line 492
    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 493
    iput p2, v4, Lyads/uz2;->y:I

    .line 494
    new-instance p2, Lyads/vz2;

    invoke-direct {p2, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 495
    iget-boolean v0, p0, Lyads/sy3;->K0:Z

    if-eqz v0, :cond_5

    iget v0, p2, Lyads/vz2;->z:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget v0, p1, Lyads/vz2;->z:I

    if-ge v0, v3, :cond_5

    .line 496
    new-array v2, v0, [I

    move v0, v1

    .line 497
    :goto_1
    iget v3, p1, Lyads/vz2;->z:I

    if-ge v0, v3, :cond_5

    .line 498
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p2

    .line 499
    :goto_2
    :try_start_0
    iget-object p2, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p2, p1, v2}, Lyads/vj0;->a(Lyads/vz2;[I)V
    :try_end_0
    .catch Lyads/pm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 500
    iget-object p2, p1, Lyads/pm;->b:Lyads/vz2;

    const/16 v0, 0x1389

    .line 501
    invoke-virtual {p0, p1, p2, v1, v0}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    .line 502
    throw p0
.end method

.method public final a(Z)V
    .locals 2

    .line 508
    new-instance p1, Lyads/ji0;

    invoke-direct {p1}, Lyads/ji0;-><init>()V

    iput-object p1, p0, Lyads/zy3;->B0:Lyads/ji0;

    .line 509
    iget-object v0, p0, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {v0, p1}, Lyads/nm;->b(Lyads/ji0;)V

    .line 510
    iget-object p1, p0, Lyads/gs;->d:Lyads/n65;

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    iget-boolean p1, p1, Lyads/n65;->a:Z

    .line 513
    iget-object v0, p0, Lyads/sy3;->I0:Lyads/vj0;

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    sget p1, Lyads/u56;->a:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    .line 516
    iget-boolean p1, v0, Lyads/vj0;->V:Z

    if-eqz p1, :cond_0

    .line 517
    iget-boolean p1, v0, Lyads/vj0;->Y:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, v0, Lyads/vj0;->Y:Z

    .line 519
    invoke-virtual {v0}, Lyads/vj0;->b()V

    goto :goto_0

    .line 520
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 521
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    .line 522
    :cond_2
    iget-boolean p1, v0, Lyads/vj0;->Y:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 523
    iput-boolean p1, v0, Lyads/vj0;->Y:Z

    .line 524
    invoke-virtual {v0}, Lyads/vj0;->b()V

    .line 525
    :cond_3
    :goto_0
    iget-object p1, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 526
    iget-object p0, p0, Lyads/gs;->f:Lyads/rw4;

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    iput-object p0, p1, Lyads/vj0;->q:Lyads/rw4;

    return-void
.end method

.method public final a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z
    .locals 0

    .line 387
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    iget-object p1, p0, Lyads/sy3;->L0:Lyads/vz2;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    invoke-interface {p5, p7, p3}, Lyads/qy3;->a(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 391
    invoke-interface {p5, p7, p3}, Lyads/qy3;->a(IZ)V

    .line 392
    :cond_1
    iget-object p1, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget p3, p1, Lyads/ji0;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lyads/ji0;->f:I

    .line 393
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 394
    iput-boolean p2, p0, Lyads/vj0;->G:Z

    return p2

    .line 395
    :cond_2
    :try_start_0
    iget-object p1, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p1, p6, p10, p11, p9}, Lyads/vj0;->a(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lyads/qm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lyads/sm; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 396
    invoke-interface {p5, p7, p3}, Lyads/qy3;->a(IZ)V

    .line 397
    :cond_3
    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget p1, p0, Lyads/ji0;->e:I

    add-int/2addr p1, p9

    iput p1, p0, Lyads/ji0;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 398
    :goto_0
    iget-boolean p2, p1, Lyads/sm;->c:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0

    .line 399
    :goto_1
    iget-object p2, p1, Lyads/qm;->d:Lyads/vz2;

    iget-boolean p3, p1, Lyads/qm;->c:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0
.end method

.method public final b()Lyads/my3;
    .locals 0

    .line 38
    return-object p0
.end method

.method public final b(Lyads/mi0;)V
    .locals 4

    iget-boolean v0, p0, Lyads/sy3;->N0:Z

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lyads/ev;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lyads/mi0;->f:J

    iget-wide v2, p0, Lyads/sy3;->M0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lyads/mi0;->f:J

    iput-wide v0, p0, Lyads/sy3;->M0:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/sy3;->N0:Z

    :cond_1
    return-void
.end method

.method public final b(Lyads/vz2;)Z
    .locals 0

    .line 36
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    .line 37
    invoke-virtual {p0, p1}, Lyads/vj0;->a(Lyads/vz2;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecAudioRenderer"

    return-object p0
.end method

.method public final e()Z
    .locals 3

    iget-boolean v0, p0, Lyads/zy3;->x0:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/vj0;->S:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {p0}, Lyads/vj0;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lyads/xm;->b(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {v0}, Lyads/vj0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {v0}, Lyads/vj0;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lyads/xm;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lyads/zy3;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/sy3;->P0:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v4, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {v4}, Lyads/vj0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    iput-wide v2, p0, Lyads/zy3;->C0:J

    iput-wide v2, p0, Lyads/zy3;->D0:J

    iput v0, p0, Lyads/zy3;->E0:I

    invoke-virtual {p0}, Lyads/zy3;->o()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lyads/sy3;->H0:Lyads/nm;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v0, p0}, Lyads/nm;->a(Lyads/ji0;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lyads/sy3;->H0:Lyads/nm;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v1, p0}, Lyads/nm;->a(Lyads/ji0;)V

    throw v0

    :catchall_1
    move-exception v4

    :try_start_2
    iput-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    iput-wide v2, p0, Lyads/zy3;->C0:J

    iput-wide v2, p0, Lyads/zy3;->D0:J

    iput v0, p0, Lyads/zy3;->E0:I

    invoke-virtual {p0}, Lyads/zy3;->o()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lyads/sy3;->H0:Lyads/nm;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v0, p0}, Lyads/nm;->a(Lyads/ji0;)V

    throw v4

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lyads/sy3;->H0:Lyads/nm;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v1, p0}, Lyads/nm;->a(Lyads/ji0;)V

    throw v0
.end method

.method public final getPlaybackParameters()Lyads/dw4;
    .locals 1

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    iget-boolean v0, p0, Lyads/vj0;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/vj0;->y:Lyads/dw4;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object p0

    iget-object p0, p0, Lyads/qj0;->a:Lyads/dw4;

    return-object p0
.end method

.method public final h()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lyads/zy3;->m0:Z

    iget-object v2, p0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {v2}, Lyads/us;->b()V

    iget-object v2, p0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v2}, Lyads/mi0;->b()V

    iput-boolean v1, p0, Lyads/zy3;->l0:Z

    iput-boolean v1, p0, Lyads/zy3;->k0:Z

    invoke-virtual {p0}, Lyads/zy3;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-static {v2, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->E:Lyads/eo2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lyads/sy3;->P0:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lyads/sy3;->P0:Z

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/vj0;->b()V

    iget-object v0, p0, Lyads/vj0;->f:[Lyads/mm;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lyads/mm;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/vj0;->g:[Lyads/mm;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lyads/mm;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lyads/vj0;->U:Z

    iput-boolean v1, p0, Lyads/vj0;->a0:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-static {v3, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->E:Lyads/eo2;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-boolean v2, p0, Lyads/sy3;->P0:Z

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lyads/sy3;->P0:Z

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/vj0;->b()V

    iget-object v2, p0, Lyads/vj0;->f:[Lyads/mm;

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-interface {v5}, Lyads/mm;->d()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lyads/vj0;->g:[Lyads/mm;

    array-length v3, v2

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-interface {v5}, Lyads/mm;->d()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iput-boolean v1, p0, Lyads/vj0;->U:Z

    iput-boolean v1, p0, Lyads/vj0;->a0:Z

    :cond_5
    throw v0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/vj0;->h()V

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/sy3;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lyads/vj0;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lyads/sy3;->O0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lyads/sy3;->M0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lyads/sy3;->M0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/sy3;->O0:Z

    :cond_1
    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    invoke-virtual {p0}, Lyads/vj0;->g()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object p0, p0, Lyads/sy3;->I0:Lyads/vj0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/vj0;->G:Z

    return-void
.end method

.method public final u()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lyads/sy3;->I0:Lyads/vj0;

    iget-boolean v1, v0, Lyads/vj0;->S:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lyads/vj0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyads/vj0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyads/vj0;->i()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/vj0;->S:Z
    :try_end_0
    .catch Lyads/sm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v1, v0, Lyads/sm;->d:Lyads/vz2;

    iget-boolean v2, v0, Lyads/sm;->c:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0
.end method
