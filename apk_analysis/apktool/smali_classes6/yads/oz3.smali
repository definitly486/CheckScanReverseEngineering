.class public final Lyads/oz3;
.super Lyads/zy3;
.source "SourceFile"


# static fields
.field public static final p1:[I

.field public static q1:Z

.field public static r1:Z


# instance fields
.field public final G0:Landroid/content/Context;

.field public final H0:Lyads/pd6;

.field public final I0:Lyads/ne6;

.field public final J0:J

.field public final K0:I

.field public final L0:Z

.field public M0:Lyads/mz3;

.field public N0:Z

.field public O0:Z

.field public P0:Landroid/view/Surface;

.field public Q0:Lyads/gv4;

.field public R0:Z

.field public S0:I

.field public T0:Z

.field public U0:Z

.field public V0:Z

.field public W0:J

.field public X0:J

.field public Y0:J

.field public Z0:I

.field public a1:I

.field public b1:I

.field public c1:J

.field public d1:J

.field public e1:J

.field public f1:I

.field public g1:I

.field public h1:I

.field public i1:I

.field public j1:F

.field public k1:Lyads/ye6;

.field public l1:Z

.field public m1:I

.field public n1:Lyads/nz3;

.field public o1:Lyads/id6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyads/oz3;->p1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/oy3;Lyads/bz3;ZLandroid/os/Handler;Lyads/bq2;)V
    .locals 6

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lyads/zy3;-><init>(ILyads/oy3;Lyads/bz3;ZF)V

    const-wide/16 p2, 0x1388

    iput-wide p2, v0, Lyads/oz3;->J0:J

    const/16 p0, 0x32

    iput p0, v0, Lyads/oz3;->K0:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lyads/oz3;->G0:Landroid/content/Context;

    new-instance p1, Lyads/pd6;

    invoke-direct {p1, p0}, Lyads/pd6;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lyads/oz3;->H0:Lyads/pd6;

    new-instance p0, Lyads/ne6;

    invoke-direct {p0, p5, p6}, Lyads/ne6;-><init>(Landroid/os/Handler;Lyads/bq2;)V

    iput-object p0, v0, Lyads/oz3;->I0:Lyads/ne6;

    sget-object p0, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {p0}, Lyads/pz3;->Z0()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lyads/oz3;->L0:Z

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p0, v0, Lyads/oz3;->X0:J

    const/4 p0, -0x1

    iput p0, v0, Lyads/oz3;->g1:I

    iput p0, v0, Lyads/oz3;->h1:I

    const/high16 p0, -0x40800000    # -1.0f

    iput p0, v0, Lyads/oz3;->j1:F

    const/4 p0, 0x1

    iput p0, v0, Lyads/oz3;->S0:I

    const/4 p0, 0x0

    iput p0, v0, Lyads/oz3;->m1:I

    const/4 p0, 0x0

    iput-object p0, v0, Lyads/oz3;->k1:Lyads/ye6;

    return-void
.end method

.method public static a(Lyads/vz2;Lyads/vy3;)I
    .locals 10

    .line 1366
    iget v0, p0, Lyads/vz2;->r:I

    .line 1367
    iget v1, p0, Lyads/vz2;->s:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 1368
    :cond_0
    iget-object v3, p0, Lyads/vz2;->m:Ljava/lang/String;

    .line 1369
    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const/4 v6, 0x1

    const-string v7, "video/hevc"

    const/4 v8, 0x2

    if-eqz v4, :cond_3

    .line 1370
    invoke-static {p0}, Lyads/jz3;->b(Lyads/vz2;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1371
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x200

    if-eq p0, v3, :cond_1

    if-eq p0, v6, :cond_1

    if-ne p0, v8, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v7

    .line 1372
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v4, 0x4

    const/4 v9, 0x3

    sparse-switch p0, :sswitch_data_0

    :goto_1
    move v6, v2

    goto :goto_2

    :sswitch_0
    const-string p0, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_1
    const-string p0, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2

    :sswitch_3
    const-string p0, "video/mp4v-es"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v6, v9

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move v6, v8

    goto :goto_2

    :sswitch_5
    const-string p0, "video/av01"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :sswitch_6
    const-string p0, "video/3gpp"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    :cond_a
    :goto_2
    packed-switch v6, :pswitch_data_0

    return v2

    .line 1373
    :pswitch_0
    sget-object p0, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {p0}, Lyads/pz3;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyads/u56;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1374
    invoke-virtual {p0}, Lyads/pz3;->q()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1375
    invoke-virtual {p0}, Lyads/pz3;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1376
    invoke-virtual {p0}, Lyads/pz3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    iget-boolean p0, p1, Lyads/vy3;->f:Z

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0xf

    .line 1377
    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x100

    :goto_3
    move v4, v8

    goto :goto_5

    :cond_c
    :goto_4
    return v2

    :pswitch_1
    mul-int/2addr v1, v0

    goto :goto_5

    :pswitch_2
    mul-int/2addr v1, v0

    goto :goto_3

    :goto_5
    mul-int/2addr v1, v9

    mul-int/2addr v4, v8

    .line 1378
    div-int/2addr v1, v4

    return v1

    :cond_d
    :goto_6
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lyads/bz3;Lyads/vz2;ZZ)Lyads/oe3;
    .locals 1

    .line 1104
    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1105
    sget-object p0, Lyads/oe3;->c:Lyads/le3;

    .line 1106
    sget-object p0, Lyads/k55;->f:Lyads/k55;

    return-object p0

    .line 1107
    :cond_0
    check-cast p0, Ld92;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, p3}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 1108
    invoke-static {p1}, Lyads/jz3;->a(Lyads/vz2;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1109
    invoke-static {p0}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p0

    return-object p0

    .line 1110
    :cond_1
    invoke-static {p1, p2, p3}, Lyads/jz3;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 1111
    sget-object p2, Lyads/oe3;->c:Lyads/le3;

    .line 1112
    new-instance p2, Lyads/ke3;

    invoke-direct {p2}, Lyads/ke3;-><init>()V

    .line 1113
    invoke-virtual {p2, p0}, Lyads/ke3;->a(Ljava/util/List;)Lyads/ke3;

    move-result-object p0

    .line 1114
    invoke-virtual {p0, p1}, Lyads/ke3;->a(Ljava/util/List;)Lyads/ke3;

    move-result-object p0

    .line 1115
    invoke-virtual {p0}, Lyads/ke3;->a()Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lyads/vz2;Lyads/vy3;)I
    .locals 3

    .line 84
    iget v0, p0, Lyads/vz2;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object p1, p0, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 86
    iget-object v2, p0, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget p0, p0, Lyads/vz2;->n:I

    add-int/2addr p0, v1

    return p0

    .line 88
    :cond_1
    invoke-static {p0, p1}, Lyads/oz3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 89
    sget-object v0, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {v0}, Lyads/pz3;->c1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    const-class p0, Lyads/oz3;

    monitor-enter p0

    .line 91
    :try_start_0
    sget-boolean v0, Lyads/oz3;->q1:Z

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lyads/oz3;->z()Z

    move-result v0

    sput-boolean v0, Lyads/oz3;->r1:Z

    const/4 v0, 0x1

    .line 93
    sput-boolean v0, Lyads/oz3;->q1:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-boolean p0, Lyads/oz3;->r1:Z

    return p0

    .line 96
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static z()Z
    .locals 5

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    sget-object v1, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {v1}, Lyads/pz3;->r()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->Q0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->P0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->d1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lyads/pz3;->e1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/16 v1, 0x1b

    if-gt v0, v1, :cond_2

    sget-object v1, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {v1}, Lyads/pz3;->w0()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_5

    sget-object v0, Lyads/m25;->f:Lyads/pz3;

    invoke-virtual {v0}, Lyads/pz3;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->m0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->q0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->A0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->B0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->C0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->E0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->F0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->H0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->I0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->L0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->N0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->R0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->T0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->W0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->X0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->a1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->b1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->f1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->g1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->h1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->i1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->j1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->k1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->l1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->m1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->n1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->o1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->p1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->q1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->r1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->s1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->t1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->u1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->v1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->w1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->x1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->y1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->z1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->A1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->B1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->C1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->D1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->E1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->G1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->H1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->I1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->F1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->K1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->L1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->M1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->N1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->O1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->P1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Q1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->R1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->S1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->T1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->U1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->V1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->W1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->X1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Y1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->Z1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->a2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->b2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lyads/pz3;->n()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lyads/u56;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lyads/pz3;->G0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A()V
    .locals 5

    iget v0, p0, Lyads/oz3;->g1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lyads/oz3;->h1:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lyads/oz3;->k1:Lyads/ye6;

    if-eqz v1, :cond_2

    iget v2, v1, Lyads/ye6;->b:I

    if-ne v2, v0, :cond_2

    iget v2, v1, Lyads/ye6;->c:I

    iget v3, p0, Lyads/oz3;->h1:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lyads/ye6;->d:I

    iget v3, p0, Lyads/oz3;->i1:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Lyads/ye6;->e:F

    iget v2, p0, Lyads/oz3;->j1:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v1, Lyads/ye6;

    iget v2, p0, Lyads/oz3;->h1:I

    iget v3, p0, Lyads/oz3;->i1:I

    iget v4, p0, Lyads/oz3;->j1:F

    invoke-direct {v1, v0, v2, v3, v4}, Lyads/ye6;-><init>(IIIF)V

    iput-object v1, p0, Lyads/oz3;->k1:Lyads/ye6;

    iget-object p0, p0, Lyads/oz3;->I0:Lyads/ne6;

    invoke-virtual {p0, v1}, Lyads/ne6;->b(Lyads/ye6;)V

    return-void
.end method

.method public final a(F[Lyads/vz2;)F
    .locals 5

    .line 1379
    array-length p0, p2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v3, p2, v1

    .line 1380
    iget v3, v3, Lyads/vz2;->t:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 1381
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v2, v0

    if-nez p0, :cond_2

    return v0

    :cond_2
    mul-float/2addr v2, p1

    return v2
.end method

.method public final a(Lyads/bz3;Lyads/vz2;)I
    .locals 8

    .line 1077
    iget-object p0, p2, Lyads/vz2;->m:Ljava/lang/String;

    .line 1078
    invoke-static {p0}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1079
    invoke-static {v0, v0, v0}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 1080
    :cond_0
    iget-object p0, p2, Lyads/vz2;->p:Lyads/ql2;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1081
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lyads/oz3;->a(Lyads/bz3;Lyads/vz2;ZZ)Lyads/oe3;

    move-result-object v2

    if-eqz p0, :cond_2

    .line 1082
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    invoke-static {p1, p2, v0, v0}, Lyads/oz3;->a(Lyads/bz3;Lyads/vz2;ZZ)Lyads/oe3;

    move-result-object v2

    .line 1084
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1085
    invoke-static {v1, v0, v0}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 1086
    :cond_3
    iget v3, p2, Lyads/vz2;->F:I

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 1087
    :cond_4
    invoke-static {v4, v0, v0}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 1088
    :cond_5
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vy3;

    .line 1089
    invoke-virtual {v3, p2}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result v4

    if-nez v4, :cond_7

    move v5, v1

    .line 1090
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 1091
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/vy3;

    .line 1092
    invoke-virtual {v6, p2}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v2, v0

    move v4, v1

    move-object v3, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_3
    if-eqz v4, :cond_8

    const/4 v5, 0x4

    goto :goto_4

    :cond_8
    const/4 v5, 0x3

    .line 1093
    :goto_4
    invoke-virtual {v3, p2}, Lyads/vy3;->b(Lyads/vz2;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x10

    goto :goto_5

    :cond_9
    const/16 v6, 0x8

    .line 1094
    :goto_5
    iget-boolean v3, v3, Lyads/vy3;->g:Z

    if-eqz v3, :cond_a

    const/16 v3, 0x40

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_6
    if-eqz v2, :cond_b

    const/16 v2, 0x80

    goto :goto_7

    :cond_b
    move v2, v0

    :goto_7
    if-eqz v4, :cond_c

    .line 1095
    invoke-static {p1, p2, p0, v1}, Lyads/oz3;->a(Lyads/bz3;Lyads/vz2;ZZ)Lyads/oe3;

    move-result-object p0

    .line 1096
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1097
    invoke-static {p0, p2}, Lyads/jz3;->a(Lyads/oe3;Lyads/vz2;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1098
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vy3;

    .line 1099
    invoke-virtual {p0, p2}, Lyads/vy3;->a(Lyads/vz2;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1100
    invoke-virtual {p0, p2}, Lyads/vy3;->b(Lyads/vz2;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 v0, 0x20

    :cond_c
    or-int p0, v5, v6

    or-int/2addr p0, v0

    or-int/2addr p0, v3

    or-int/2addr p0, v2

    return p0
.end method

.method public final a(Lyads/bz3;Lyads/vz2;Z)Ljava/util/ArrayList;
    .locals 0

    .line 1101
    iget-boolean p0, p0, Lyads/oz3;->l1:Z

    .line 1102
    invoke-static {p1, p2, p3, p0}, Lyads/oz3;->a(Lyads/bz3;Lyads/vz2;ZZ)Lyads/oe3;

    move-result-object p0

    .line 1103
    invoke-static {p0, p2}, Lyads/jz3;->a(Lyads/oe3;Lyads/vz2;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/vy3;Lyads/vz2;Landroid/media/MediaCrypto;F)Lyads/ny3;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p4

    .line 1252
    iget-object v4, v0, Lyads/oz3;->Q0:Lyads/gv4;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v6, v4, Lyads/gv4;->b:Z

    iget-boolean v7, v1, Lyads/vy3;->f:Z

    if-eq v6, v7, :cond_1

    .line 1253
    iget-object v6, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-ne v6, v4, :cond_0

    .line 1254
    iput-object v5, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    .line 1255
    :cond_0
    invoke-virtual {v4}, Lyads/gv4;->release()V

    .line 1256
    iput-object v5, v0, Lyads/oz3;->Q0:Lyads/gv4;

    .line 1257
    :cond_1
    iget-object v4, v1, Lyads/vy3;->c:Ljava/lang/String;

    .line 1258
    iget-object v6, v0, Lyads/gs;->i:[Lyads/vz2;

    .line 1259
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1260
    iget v7, v3, Lyads/vz2;->r:I

    .line 1261
    iget v8, v3, Lyads/vz2;->s:I

    .line 1262
    invoke-static {v3, v1}, Lyads/oz3;->b(Lyads/vz2;Lyads/vy3;)I

    move-result v9

    .line 1263
    array-length v10, v6

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v10, v13, :cond_3

    if-eq v9, v11, :cond_2

    .line 1264
    invoke-static {v3, v1}, Lyads/oz3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result v6

    if-eq v6, v11, :cond_2

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1265
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1266
    :cond_2
    new-instance v6, Lyads/mz3;

    invoke-direct {v6, v7, v8, v9}, Lyads/mz3;-><init>(III)V

    move-object/from16 v16, v5

    move/from16 v17, v13

    goto/16 :goto_e

    .line 1267
    :cond_3
    array-length v10, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v10, :cond_8

    move-object/from16 v16, v5

    aget-object v5, v6, v14

    move/from16 v17, v13

    .line 1268
    iget-object v13, v3, Lyads/vz2;->y:Lyads/x20;

    if-eqz v13, :cond_4

    iget-object v13, v5, Lyads/vz2;->y:Lyads/x20;

    if-nez v13, :cond_4

    .line 1269
    new-instance v13, Lyads/uz2;

    invoke-direct {v13, v5}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 1270
    iget-object v5, v3, Lyads/vz2;->y:Lyads/x20;

    .line 1271
    iput-object v5, v13, Lyads/uz2;->w:Lyads/x20;

    .line 1272
    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v13}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 1273
    :cond_4
    invoke-virtual {v1, v3, v5}, Lyads/vy3;->a(Lyads/vz2;Lyads/vz2;)Lyads/oi0;

    move-result-object v13

    iget v13, v13, Lyads/oi0;->d:I

    if-eqz v13, :cond_7

    .line 1274
    iget v13, v5, Lyads/vz2;->r:I

    if-eq v13, v11, :cond_6

    iget v12, v5, Lyads/vz2;->s:I

    if-ne v12, v11, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move/from16 v12, v17

    :goto_2
    or-int/2addr v15, v12

    .line 1275
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1276
    iget v12, v5, Lyads/vz2;->s:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1277
    invoke-static {v5, v1}, Lyads/oz3;->b(Lyads/vz2;Lyads/vy3;)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move/from16 v13, v17

    goto :goto_0

    :cond_8
    move-object/from16 v16, v5

    move/from16 v17, v13

    if-eqz v15, :cond_16

    .line 1278
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Resolutions unknown. Codec max resolution: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecVideoRenderer"

    invoke-static {v6, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget v5, v3, Lyads/vz2;->s:I

    iget v6, v3, Lyads/vz2;->r:I

    if-le v5, v6, :cond_9

    move/from16 v10, v17

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_a

    move v11, v5

    goto :goto_4

    :cond_a
    move v11, v6

    :goto_4
    if-eqz v10, :cond_b

    move v5, v6

    :cond_b
    int-to-float v6, v5

    int-to-float v12, v11

    div-float/2addr v6, v12

    .line 1280
    sget-object v12, Lyads/oz3;->p1:[I

    const/4 v13, 0x0

    :goto_5
    const/16 v14, 0x9

    if-ge v13, v14, :cond_15

    aget v14, v12, v13

    int-to-float v15, v14

    mul-float/2addr v15, v6

    float-to-int v15, v15

    if-le v14, v11, :cond_15

    if-gt v15, v5, :cond_c

    goto/16 :goto_c

    :cond_c
    move/from16 v18, v5

    .line 1281
    sget v5, Lyads/u56;->a:I

    move/from16 v19, v6

    const/16 v6, 0x15

    if-lt v5, v6, :cond_11

    if-eqz v10, :cond_d

    move v5, v15

    goto :goto_6

    :cond_d
    move v5, v14

    :goto_6
    if-eqz v10, :cond_e

    goto :goto_7

    :cond_e
    move v14, v15

    .line 1282
    :goto_7
    iget-object v6, v1, Lyads/vy3;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v6, :cond_f

    goto :goto_8

    .line 1283
    :cond_f
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v6

    if-nez v6, :cond_10

    :goto_8
    move-object/from16 v5, v16

    goto :goto_9

    .line 1284
    :cond_10
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v15

    .line 1285
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v6

    move/from16 v20, v5

    .line 1286
    new-instance v5, Landroid/graphics/Point;

    add-int v20, v20, v15

    add-int/lit8 v20, v20, -0x1

    .line 1287
    div-int v20, v20, v15

    mul-int v15, v15, v20

    add-int/2addr v14, v6

    add-int/lit8 v14, v14, -0x1

    .line 1288
    div-int/2addr v14, v6

    mul-int/2addr v14, v6

    .line 1289
    invoke-direct {v5, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 1290
    :goto_9
    iget v6, v3, Lyads/vz2;->t:F

    .line 1291
    iget v14, v5, Landroid/graphics/Point;->x:I

    iget v15, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v5

    float-to-double v5, v6

    invoke-virtual {v1, v14, v15, v5, v6}, Lyads/vy3;->a(IID)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v5, v20

    goto :goto_d

    :cond_11
    add-int/lit8 v14, v14, 0xf

    .line 1292
    :try_start_0
    div-int/lit8 v14, v14, 0x10

    mul-int/lit8 v14, v14, 0x10

    add-int/lit8 v15, v15, 0xf

    .line 1293
    div-int/lit8 v15, v15, 0x10

    mul-int/lit8 v15, v15, 0x10

    mul-int v5, v14, v15

    .line 1294
    invoke-static {}, Lyads/jz3;->a()I

    move-result v6

    if-gt v5, v6, :cond_14

    .line 1295
    new-instance v5, Landroid/graphics/Point;

    if-eqz v10, :cond_12

    move v6, v15

    goto :goto_a

    :cond_12
    move v6, v14

    :goto_a
    if-eqz v10, :cond_13

    goto :goto_b

    :cond_13
    move v14, v15

    .line 1296
    :goto_b
    invoke-direct {v5, v6, v14}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lyads/ez3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :cond_14
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_5

    :catch_0
    :cond_15
    :goto_c
    move-object/from16 v5, v16

    :goto_d
    if-eqz v5, :cond_16

    .line 1297
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1298
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1299
    new-instance v5, Lyads/uz2;

    invoke-direct {v5, v3}, Lyads/uz2;-><init>(Lyads/vz2;)V

    .line 1300
    iput v7, v5, Lyads/uz2;->p:I

    .line 1301
    iput v8, v5, Lyads/uz2;->q:I

    .line 1302
    new-instance v6, Lyads/vz2;

    invoke-direct {v6, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 1303
    invoke-static {v6, v1}, Lyads/oz3;->a(Lyads/vz2;Lyads/vy3;)I

    move-result v5

    .line 1304
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1305
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Codec max resolution adjusted to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecVideoRenderer"

    invoke-static {v6, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_16
    new-instance v6, Lyads/mz3;

    invoke-direct {v6, v7, v8, v9}, Lyads/mz3;-><init>(III)V

    .line 1307
    :goto_e
    iput-object v6, v0, Lyads/oz3;->M0:Lyads/mz3;

    .line 1308
    iget-boolean v5, v0, Lyads/oz3;->L0:Z

    .line 1309
    iget-boolean v7, v0, Lyads/oz3;->l1:Z

    if-eqz v7, :cond_17

    iget v7, v0, Lyads/oz3;->m1:I

    goto :goto_f

    :cond_17
    const/4 v7, 0x0

    .line 1310
    :goto_f
    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    .line 1311
    const-string v9, "mime"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget v4, v3, Lyads/vz2;->r:I

    const-string v9, "width"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1313
    iget v4, v3, Lyads/vz2;->s:I

    const-string v9, "height"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1314
    iget-object v4, v3, Lyads/vz2;->o:Ljava/util/List;

    const/4 v9, 0x0

    .line 1315
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_18

    .line 1316
    const-string v10, "csd-"

    invoke-static {v9, v10}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1317
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1318
    :cond_18
    const-string v4, "frame-rate"

    iget v9, v3, Lyads/vz2;->t:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v11, v9, v10

    if-eqz v11, :cond_19

    .line 1319
    invoke-virtual {v8, v4, v9}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 1320
    :cond_19
    iget v4, v3, Lyads/vz2;->u:I

    const-string v9, "rotation-degrees"

    invoke-static {v8, v9, v4}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1321
    iget-object v4, v3, Lyads/vz2;->y:Lyads/x20;

    if-eqz v4, :cond_1a

    .line 1322
    iget v9, v4, Lyads/x20;->d:I

    const-string v11, "color-transfer"

    invoke-static {v8, v11, v9}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1323
    iget v9, v4, Lyads/x20;->b:I

    const-string v11, "color-standard"

    invoke-static {v8, v11, v9}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1324
    iget v9, v4, Lyads/x20;->c:I

    const-string v11, "color-range"

    invoke-static {v8, v11, v9}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1325
    const-string v9, "hdr-static-info"

    iget-object v4, v4, Lyads/x20;->e:[B

    if-eqz v4, :cond_1a

    .line 1326
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1327
    :cond_1a
    iget-object v4, v3, Lyads/vz2;->m:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1328
    invoke-static {v3}, Lyads/jz3;->b(Lyads/vz2;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 1329
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1330
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1331
    const-string v9, "profile"

    invoke-static {v8, v9, v4}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1332
    :cond_1b
    iget v4, v6, Lyads/mz3;->a:I

    const-string v9, "max-width"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1333
    iget v4, v6, Lyads/mz3;->b:I

    const-string v9, "max-height"

    invoke-virtual {v8, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1334
    iget v4, v6, Lyads/mz3;->c:I

    const-string v6, "max-input-size"

    invoke-static {v8, v6, v4}, Lyads/d04;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1335
    sget v4, Lyads/u56;->a:I

    const/16 v6, 0x17

    if-lt v4, v6, :cond_1c

    .line 1336
    const-string v4, "priority"

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    cmpl-float v4, v2, v10

    if-eqz v4, :cond_1c

    .line 1337
    const-string v4, "operating-rate"

    invoke-virtual {v8, v4, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1c
    if-eqz v5, :cond_1d

    .line 1338
    const-string v2, "no-post-process"

    move/from16 v4, v17

    invoke-virtual {v8, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1339
    const-string v2, "auto-frc"

    const/4 v6, 0x0

    invoke-virtual {v8, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_11

    :cond_1d
    move/from16 v4, v17

    const/4 v6, 0x0

    :goto_11
    if-eqz v7, :cond_1e

    .line 1340
    const-string v2, "tunneled-playback"

    invoke-virtual {v8, v2, v4}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 1341
    const-string v2, "audio-session-id"

    invoke-virtual {v8, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1342
    :cond_1e
    iget-object v2, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-nez v2, :cond_27

    .line 1343
    invoke-virtual/range {p0 .. p1}, Lyads/oz3;->b(Lyads/vy3;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1344
    iget-object v2, v0, Lyads/oz3;->Q0:Lyads/gv4;

    if-nez v2, :cond_26

    .line 1345
    iget-object v2, v0, Lyads/oz3;->G0:Landroid/content/Context;

    iget-boolean v4, v1, Lyads/vy3;->f:Z

    sget v5, Lyads/gv4;->e:I

    if-eqz v4, :cond_24

    .line 1346
    const-class v5, Lyads/gv4;

    monitor-enter v5

    .line 1347
    :try_start_1
    sget-boolean v7, Lyads/gv4;->f:Z

    if-nez v7, :cond_21

    .line 1348
    invoke-static {v2}, Lyads/k73;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1349
    invoke-static {}, Lyads/k73;->c()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    const/4 v2, 0x2

    goto :goto_12

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_20
    move v2, v6

    .line 1350
    :goto_12
    sput v2, Lyads/gv4;->e:I

    const/16 v17, 0x1

    .line 1351
    sput-boolean v17, Lyads/gv4;->f:Z

    goto :goto_13

    :cond_21
    const/16 v17, 0x1

    .line 1352
    :goto_13
    sget v2, Lyads/gv4;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_22

    move/from16 v13, v17

    goto :goto_14

    :cond_22
    move v13, v6

    :goto_14
    monitor-exit v5

    if-eqz v13, :cond_23

    goto :goto_16

    .line 1353
    :cond_23
    invoke-static {}, Lud;->g()V

    return-object v16

    :goto_15
    monitor-exit v5

    throw v0

    .line 1354
    :cond_24
    :goto_16
    new-instance v2, Lyads/fv4;

    invoke-direct {v2}, Lyads/fv4;-><init>()V

    if-eqz v4, :cond_25

    .line 1355
    sget v12, Lyads/gv4;->e:I

    goto :goto_17

    :cond_25
    move v12, v6

    :goto_17
    invoke-virtual {v2, v12}, Lyads/fv4;->a(I)Lyads/gv4;

    move-result-object v2

    .line 1356
    iput-object v2, v0, Lyads/oz3;->Q0:Lyads/gv4;

    .line 1357
    :cond_26
    iput-object v2, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    :cond_27
    move-object v4, v2

    goto :goto_18

    .line 1358
    :cond_28
    invoke-static {}, Lud;->g()V

    return-object v16

    .line 1359
    :goto_18
    new-instance v0, Lyads/ny3;

    move-object/from16 v5, p3

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lyads/ny3;-><init>(Lyads/vy3;Landroid/media/MediaFormat;Lyads/vz2;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    return-object v0
.end method

.method public final a(Lyads/a03;)Lyads/oi0;
    .locals 1

    .line 1396
    invoke-super {p0, p1}, Lyads/zy3;->a(Lyads/a03;)Lyads/oi0;

    move-result-object v0

    .line 1397
    iget-object p0, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object p1, p1, Lyads/a03;->b:Lyads/vz2;

    invoke-virtual {p0, p1, v0}, Lyads/ne6;->a(Lyads/vz2;Lyads/oi0;)V

    return-object v0
.end method

.method public final a(Lyads/vy3;Lyads/vz2;Lyads/vz2;)Lyads/oi0;
    .locals 8

    .line 1360
    invoke-virtual {p1, p2, p3}, Lyads/vy3;->a(Lyads/vz2;Lyads/vz2;)Lyads/oi0;

    move-result-object v0

    .line 1361
    iget v1, v0, Lyads/oi0;->e:I

    .line 1362
    iget v2, p3, Lyads/vz2;->r:I

    iget-object v3, p0, Lyads/oz3;->M0:Lyads/mz3;

    iget v4, v3, Lyads/mz3;->a:I

    if-gt v2, v4, :cond_0

    iget v2, p3, Lyads/vz2;->s:I

    iget v3, v3, Lyads/mz3;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 1363
    :cond_1
    invoke-static {p3, p1}, Lyads/oz3;->b(Lyads/vz2;Lyads/vy3;)I

    move-result v2

    iget-object p0, p0, Lyads/oz3;->M0:Lyads/mz3;

    iget p0, p0, Lyads/mz3;->c:I

    if-le v2, p0, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 1364
    new-instance v2, Lyads/oi0;

    iget-object v3, p1, Lyads/vy3;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p0, 0x0

    :goto_0
    move v6, p0

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    .line 1365
    :cond_3
    iget p0, v0, Lyads/oi0;->d:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Lyads/oi0;-><init>(Ljava/lang/String;Lyads/vz2;Lyads/vz2;II)V

    return-object v2
.end method

.method public final a(Ljava/lang/IllegalStateException;Lyads/vy3;)Lyads/uy3;
    .locals 1

    .line 1418
    new-instance v0, Lyads/lz3;

    iget-object p0, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, p0}, Lyads/lz3;-><init>(Ljava/lang/IllegalStateException;Lyads/vy3;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final a(FF)V
    .locals 0

    .line 1242
    iput p1, p0, Lyads/zy3;->I:F

    .line 1243
    iput p2, p0, Lyads/zy3;->J:F

    .line 1244
    iget-object p2, p0, Lyads/zy3;->L:Lyads/vz2;

    invoke-virtual {p0, p2}, Lyads/zy3;->c(Lyads/vz2;)Z

    .line 1245
    iget-object p0, p0, Lyads/oz3;->H0:Lyads/pd6;

    .line 1246
    iput p1, p0, Lyads/pd6;->i:F

    const-wide/16 p1, 0x0

    .line 1247
    iput-wide p1, p0, Lyads/pd6;->m:J

    const-wide/16 p1, -0x1

    .line 1248
    iput-wide p1, p0, Lyads/pd6;->p:J

    .line 1249
    iput-wide p1, p0, Lyads/pd6;->n:J

    const/4 p1, 0x0

    .line 1250
    invoke-virtual {p0, p1}, Lyads/pd6;->a(Z)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_c

    .line 1170
    :cond_0
    iget-object p0, p0, Lyads/oz3;->H0:Lyads/pd6;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1171
    iget p2, p0, Lyads/pd6;->j:I

    if-ne p2, p1, :cond_1

    goto/16 :goto_c

    .line 1172
    :cond_1
    iput p1, p0, Lyads/pd6;->j:I

    .line 1173
    invoke-virtual {p0, v0}, Lyads/pd6;->a(Z)V

    return-void

    .line 1174
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lyads/oz3;->S0:I

    .line 1175
    iget-object p0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz p0, :cond_1b

    .line 1176
    invoke-interface {p0, p1}, Lyads/qy3;->a(I)V

    return-void

    .line 1177
    :cond_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1178
    iget p2, p0, Lyads/oz3;->m1:I

    if-eq p2, p1, :cond_1b

    .line 1179
    iput p1, p0, Lyads/oz3;->m1:I

    .line 1180
    iget-boolean p1, p0, Lyads/oz3;->l1:Z

    if-eqz p1, :cond_1b

    .line 1181
    invoke-virtual {p0}, Lyads/zy3;->t()V

    return-void

    .line 1182
    :cond_4
    check-cast p2, Lyads/id6;

    iput-object p2, p0, Lyads/oz3;->o1:Lyads/id6;

    return-void

    .line 1183
    :cond_5
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    check-cast p2, Landroid/view/Surface;

    goto :goto_0

    :cond_6
    move-object p2, v1

    :goto_0
    const/4 p1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_f

    .line 1184
    iget-object v3, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eqz v3, :cond_7

    move-object p2, v3

    goto :goto_6

    .line 1185
    :cond_7
    iget-object v3, p0, Lyads/zy3;->R:Lyads/vy3;

    if-eqz v3, :cond_f

    .line 1186
    invoke-virtual {p0, v3}, Lyads/oz3;->b(Lyads/vy3;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1187
    iget-object p2, p0, Lyads/oz3;->G0:Landroid/content/Context;

    iget-boolean v3, v3, Lyads/vy3;->f:Z

    sget v4, Lyads/gv4;->e:I

    if-eqz v3, :cond_d

    .line 1188
    const-class v4, Lyads/gv4;

    monitor-enter v4

    .line 1189
    :try_start_0
    sget-boolean v5, Lyads/gv4;->f:Z

    if-nez v5, :cond_a

    .line 1190
    invoke-static {p2}, Lyads/k73;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1191
    invoke-static {}, Lyads/k73;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    move p2, v0

    goto :goto_1

    :cond_8
    move p2, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_9
    move p2, v2

    .line 1192
    :goto_1
    sput p2, Lyads/gv4;->e:I

    .line 1193
    sput-boolean v0, Lyads/gv4;->f:Z

    .line 1194
    :cond_a
    sget p2, Lyads/gv4;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_b

    move p2, v0

    goto :goto_2

    :cond_b
    move p2, v2

    :goto_2
    monitor-exit v4

    if-eqz p2, :cond_c

    goto :goto_4

    .line 1195
    :cond_c
    invoke-static {}, Lud;->g()V

    return-void

    :goto_3
    monitor-exit v4

    throw p0

    .line 1196
    :cond_d
    :goto_4
    new-instance p2, Lyads/fv4;

    invoke-direct {p2}, Lyads/fv4;-><init>()V

    if-eqz v3, :cond_e

    .line 1197
    sget v3, Lyads/gv4;->e:I

    goto :goto_5

    :cond_e
    move v3, v2

    :goto_5
    invoke-virtual {p2, v3}, Lyads/fv4;->a(I)Lyads/gv4;

    move-result-object p2

    .line 1198
    iput-object p2, p0, Lyads/oz3;->Q0:Lyads/gv4;

    .line 1199
    :cond_f
    :goto_6
    iget-object v3, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-eq v3, p2, :cond_19

    .line 1200
    iput-object p2, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    .line 1201
    iget-object v3, p0, Lyads/oz3;->H0:Lyads/pd6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    instance-of v4, p2, Lyads/gv4;

    if-eqz v4, :cond_10

    move-object v4, v1

    goto :goto_7

    :cond_10
    move-object v4, p2

    .line 1203
    :goto_7
    iget-object v5, v3, Lyads/pd6;->e:Landroid/view/Surface;

    if-ne v5, v4, :cond_11

    goto :goto_9

    .line 1204
    :cond_11
    sget v6, Lyads/u56;->a:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_13

    if-eqz v5, :cond_13

    iget v6, v3, Lyads/pd6;->j:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_13

    iget v6, v3, Lyads/pd6;->h:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_12

    goto :goto_8

    .line 1205
    :cond_12
    iput v7, v3, Lyads/pd6;->h:F

    .line 1206
    invoke-static {v5, v7}, Lyads/jd6;->a(Landroid/view/Surface;F)V

    .line 1207
    :cond_13
    :goto_8
    iput-object v4, v3, Lyads/pd6;->e:Landroid/view/Surface;

    .line 1208
    invoke-virtual {v3, v0}, Lyads/pd6;->a(Z)V

    .line 1209
    :goto_9
    iput-boolean v2, p0, Lyads/oz3;->R0:Z

    .line 1210
    iget v0, p0, Lyads/gs;->g:I

    .line 1211
    iget-object v2, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v2, :cond_15

    .line 1212
    sget v3, Lyads/u56;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v3, p0, Lyads/oz3;->N0:Z

    if-nez v3, :cond_14

    .line 1213
    invoke-interface {v2, p2}, Lyads/qy3;->a(Landroid/view/Surface;)V

    goto :goto_a

    .line 1214
    :cond_14
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 1215
    invoke-virtual {p0}, Lyads/zy3;->q()V

    :cond_15
    :goto_a
    if-eqz p2, :cond_18

    .line 1216
    iget-object v2, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eq p2, v2, :cond_18

    .line 1217
    iget-object p2, p0, Lyads/oz3;->k1:Lyads/ye6;

    if-eqz p2, :cond_16

    .line 1218
    iget-object v1, p0, Lyads/oz3;->I0:Lyads/ne6;

    invoke-virtual {v1, p2}, Lyads/ne6;->b(Lyads/ye6;)V

    .line 1219
    :cond_16
    invoke-virtual {p0}, Lyads/oz3;->y()V

    if-ne v0, p1, :cond_1b

    .line 1220
    iget-wide p1, p0, Lyads/oz3;->J0:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_17

    .line 1221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lyads/oz3;->J0:J

    add-long/2addr p1, v0

    goto :goto_b

    :cond_17
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1222
    :goto_b
    iput-wide p1, p0, Lyads/oz3;->X0:J

    return-void

    .line 1223
    :cond_18
    iput-object v1, p0, Lyads/oz3;->k1:Lyads/ye6;

    .line 1224
    invoke-virtual {p0}, Lyads/oz3;->y()V

    return-void

    :cond_19
    if-eqz p2, :cond_1b

    .line 1225
    iget-object p1, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eq p2, p1, :cond_1b

    .line 1226
    iget-object p1, p0, Lyads/oz3;->k1:Lyads/ye6;

    if-eqz p1, :cond_1a

    .line 1227
    iget-object p2, p0, Lyads/oz3;->I0:Lyads/ne6;

    invoke-virtual {p2, p1}, Lyads/ne6;->b(Lyads/ye6;)V

    .line 1228
    :cond_1a
    iget-boolean p1, p0, Lyads/oz3;->R0:Z

    if-eqz p1, :cond_1b

    .line 1229
    iget-object p1, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object p0, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Lyads/ne6;->a(Ljava/lang/Object;)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 1415
    invoke-super {p0, p1, p2}, Lyads/zy3;->a(J)V

    .line 1416
    iget-boolean p1, p0, Lyads/oz3;->l1:Z

    if-nez p1, :cond_0

    .line 1417
    iget p1, p0, Lyads/oz3;->b1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lyads/oz3;->b1:I

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 4

    .line 1116
    invoke-super {p0, p1, p2, p3}, Lyads/zy3;->a(JZ)V

    .line 1117
    invoke-virtual {p0}, Lyads/oz3;->y()V

    .line 1118
    iget-object p1, p0, Lyads/oz3;->H0:Lyads/pd6;

    const-wide/16 v0, 0x0

    .line 1119
    iput-wide v0, p1, Lyads/pd6;->m:J

    const-wide/16 v2, -0x1

    .line 1120
    iput-wide v2, p1, Lyads/pd6;->p:J

    .line 1121
    iput-wide v2, p1, Lyads/pd6;->n:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1122
    iput-wide p1, p0, Lyads/oz3;->c1:J

    .line 1123
    iput-wide p1, p0, Lyads/oz3;->W0:J

    const/4 v2, 0x0

    .line 1124
    iput v2, p0, Lyads/oz3;->a1:I

    if-eqz p3, :cond_1

    .line 1125
    iget-wide v2, p0, Lyads/oz3;->J0:J

    cmp-long p3, v2, v0

    if-lez p3, :cond_0

    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lyads/oz3;->J0:J

    add-long/2addr p1, v0

    .line 1127
    :cond_0
    iput-wide p1, p0, Lyads/oz3;->X0:J

    return-void

    .line 1128
    :cond_1
    iput-wide p1, p0, Lyads/oz3;->X0:J

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1393
    const-string v0, "Video codec error"

    .line 1394
    invoke-static {v0, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object p0, p0, Lyads/oz3;->I0:Lyads/ne6;

    invoke-virtual {p0, p1}, Lyads/ne6;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1392
    iget-object p0, p0, Lyads/oz3;->I0:Lyads/ne6;

    invoke-virtual {p0, p1}, Lyads/ne6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 1382
    iget-object v0, p0, Lyads/oz3;->I0:Lyads/ne6;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lyads/ne6;->a(Ljava/lang/String;JJ)V

    .line 1383
    invoke-static {v1}, Lyads/oz3;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lyads/oz3;->N0:Z

    .line 1384
    iget-object p1, p0, Lyads/zy3;->R:Lyads/vy3;

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1386
    invoke-virtual {p1}, Lyads/vy3;->a()Z

    move-result p1

    iput-boolean p1, p0, Lyads/oz3;->O0:Z

    .line 1387
    sget p1, Lyads/u56;->a:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    iget-boolean p1, p0, Lyads/oz3;->l1:Z

    if-eqz p1, :cond_0

    .line 1388
    new-instance p1, Lyads/nz3;

    .line 1389
    iget-object p2, p0, Lyads/zy3;->K:Lyads/qy3;

    .line 1390
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    invoke-direct {p1, p0, p2}, Lyads/nz3;-><init>(Lyads/oz3;Lyads/qy3;)V

    iput-object p1, p0, Lyads/oz3;->n1:Lyads/nz3;

    :cond_0
    return-void
.end method

.method public final a(Lyads/mi0;)V
    .locals 7

    .line 1398
    iget-boolean v0, p0, Lyads/oz3;->O0:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    iget-object p1, p1, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    .line 1400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 1402
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1403
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 1404
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1405
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1406
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 1407
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 1408
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1409
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1410
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1411
    iget-object p0, p0, Lyads/zy3;->K:Lyads/qy3;

    .line 1412
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1413
    const-string v1, "hdr10-plus-info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1414
    invoke-interface {p0, p1}, Lyads/qy3;->a(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lyads/vz2;Landroid/media/MediaFormat;)V
    .locals 7

    .line 1129
    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v0, :cond_0

    .line 1130
    iget v1, p0, Lyads/oz3;->S0:I

    invoke-interface {v0, v1}, Lyads/qy3;->a(I)V

    .line 1131
    :cond_0
    iget-boolean v0, p0, Lyads/oz3;->l1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1132
    iget p2, p1, Lyads/vz2;->r:I

    iput p2, p0, Lyads/oz3;->g1:I

    .line 1133
    iget p2, p1, Lyads/vz2;->s:I

    iput p2, p0, Lyads/oz3;->h1:I

    goto :goto_3

    .line 1134
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1135
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 1136
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1137
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1138
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 1139
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    .line 1140
    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lyads/oz3;->g1:I

    if-eqz v2, :cond_4

    .line 1141
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v6

    move p2, v0

    goto :goto_2

    .line 1142
    :cond_4
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    iput p2, p0, Lyads/oz3;->h1:I

    .line 1143
    :goto_3
    iget v0, p1, Lyads/vz2;->v:F

    iput v0, p0, Lyads/oz3;->j1:F

    .line 1144
    sget v2, Lyads/u56;->a:I

    .line 1145
    iget v3, p1, Lyads/vz2;->u:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_6

    const/16 v2, 0x5a

    if-eq v3, v2, :cond_5

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_7

    .line 1146
    :cond_5
    iget v2, p0, Lyads/oz3;->g1:I

    .line 1147
    iput p2, p0, Lyads/oz3;->g1:I

    .line 1148
    iput v2, p0, Lyads/oz3;->h1:I

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, v0

    .line 1149
    iput p2, p0, Lyads/oz3;->j1:F

    goto :goto_4

    .line 1150
    :cond_6
    iput v3, p0, Lyads/oz3;->i1:I

    .line 1151
    :cond_7
    :goto_4
    iget-object p0, p0, Lyads/oz3;->H0:Lyads/pd6;

    iget p1, p1, Lyads/vz2;->t:F

    .line 1152
    iput p1, p0, Lyads/pd6;->f:F

    .line 1153
    iget-object p1, p0, Lyads/pd6;->a:Lyads/lx2;

    .line 1154
    iget-object p2, p1, Lyads/lx2;->a:Lyads/kx2;

    const-wide/16 v2, 0x0

    .line 1155
    iput-wide v2, p2, Lyads/kx2;->d:J

    .line 1156
    iput-wide v2, p2, Lyads/kx2;->e:J

    .line 1157
    iput-wide v2, p2, Lyads/kx2;->f:J

    .line 1158
    iput v1, p2, Lyads/kx2;->h:I

    .line 1159
    iget-object p2, p2, Lyads/kx2;->g:[Z

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1160
    iget-object p2, p1, Lyads/lx2;->b:Lyads/kx2;

    .line 1161
    iput-wide v2, p2, Lyads/kx2;->d:J

    .line 1162
    iput-wide v2, p2, Lyads/kx2;->e:J

    .line 1163
    iput-wide v2, p2, Lyads/kx2;->f:J

    .line 1164
    iput v1, p2, Lyads/kx2;->h:I

    .line 1165
    iget-object p2, p2, Lyads/kx2;->g:[Z

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1166
    iput-boolean v1, p1, Lyads/lx2;->c:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1167
    iput-wide v2, p1, Lyads/lx2;->d:J

    .line 1168
    iput v1, p1, Lyads/lx2;->e:I

    .line 1169
    invoke-virtual {p0}, Lyads/pd6;->b()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1230
    new-instance v0, Lyads/ji0;

    invoke-direct {v0}, Lyads/ji0;-><init>()V

    iput-object v0, p0, Lyads/zy3;->B0:Lyads/ji0;

    .line 1231
    iget-object v0, p0, Lyads/gs;->d:Lyads/n65;

    .line 1232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1233
    iget-boolean v0, v0, Lyads/n65;->a:Z

    if-eqz v0, :cond_1

    .line 1234
    iget v1, p0, Lyads/oz3;->m1:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1235
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 1236
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lyads/oz3;->l1:Z

    if-eq v1, v0, :cond_2

    .line 1237
    iput-boolean v0, p0, Lyads/oz3;->l1:Z

    .line 1238
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 1239
    :cond_2
    iget-object v0, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v1, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v0, v1}, Lyads/ne6;->b(Lyads/ji0;)V

    .line 1240
    iput-boolean p1, p0, Lyads/oz3;->U0:Z

    const/4 p1, 0x0

    .line 1241
    iput-boolean p1, p0, Lyads/oz3;->V0:Z

    return-void
.end method

.method public final a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v0, Lyads/oz3;->W0:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iput-wide v1, v0, Lyads/oz3;->W0:J

    :cond_0
    iget-wide v7, v0, Lyads/oz3;->c1:J

    cmp-long v7, v5, v7

    const-wide/16 v15, 0x3e8

    const/4 v8, 0x0

    move-wide/from16 p8, v9

    if-eqz v7, :cond_9

    iget-object v7, v0, Lyads/oz3;->H0:Lyads/pd6;

    const-wide/16 v17, -0x1

    iget-wide v11, v7, Lyads/pd6;->n:J

    cmp-long v10, v11, v17

    if-eqz v10, :cond_1

    iput-wide v11, v7, Lyads/pd6;->p:J

    iget-wide v10, v7, Lyads/pd6;->o:J

    iput-wide v10, v7, Lyads/pd6;->q:J

    :cond_1
    iget-wide v10, v7, Lyads/pd6;->m:J

    const-wide/16 v19, 0x1

    add-long v10, v10, v19

    iput-wide v10, v7, Lyads/pd6;->m:J

    iget-object v10, v7, Lyads/pd6;->a:Lyads/lx2;

    mul-long v11, v5, v15

    move-wide/from16 v21, v15

    iget-object v15, v10, Lyads/lx2;->a:Lyads/kx2;

    invoke-virtual {v15, v11, v12}, Lyads/kx2;->a(J)V

    iget-object v15, v10, Lyads/lx2;->a:Lyads/kx2;

    invoke-virtual {v15}, Lyads/kx2;->a()Z

    move-result v15

    if-eqz v15, :cond_2

    iput-boolean v8, v10, Lyads/lx2;->c:Z

    goto :goto_4

    :cond_2
    iget-wide v8, v10, Lyads/lx2;->d:J

    cmp-long v8, v8, p8

    if-eqz v8, :cond_6

    iget-boolean v8, v10, Lyads/lx2;->c:Z

    if-eqz v8, :cond_5

    iget-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    const-wide/16 v23, 0x0

    iget-wide v13, v8, Lyads/kx2;->d:J

    cmp-long v9, v13, v23

    if-nez v9, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    iget-object v8, v8, Lyads/kx2;->g:[Z

    sub-long v13, v13, v19

    const-wide/16 v19, 0xf

    rem-long v13, v13, v19

    long-to-int v9, v13

    aget-boolean v8, v8, v9

    :goto_0
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v23, 0x0

    :goto_2
    iget-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    move-wide/from16 v13, v23

    iput-wide v13, v8, Lyads/kx2;->d:J

    iput-wide v13, v8, Lyads/kx2;->e:J

    iput-wide v13, v8, Lyads/kx2;->f:J

    const/4 v9, 0x0

    iput v9, v8, Lyads/kx2;->h:I

    iget-object v8, v8, Lyads/kx2;->g:[Z

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    iget-wide v13, v10, Lyads/lx2;->d:J

    invoke-virtual {v8, v13, v14}, Lyads/kx2;->a(J)V

    goto :goto_1

    :goto_3
    iput-boolean v15, v10, Lyads/lx2;->c:Z

    iget-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    invoke-virtual {v8, v11, v12}, Lyads/kx2;->a(J)V

    :cond_6
    :goto_4
    iget-boolean v8, v10, Lyads/lx2;->c:Z

    if-eqz v8, :cond_7

    iget-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    invoke-virtual {v8}, Lyads/kx2;->a()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v10, Lyads/lx2;->a:Lyads/kx2;

    iget-object v9, v10, Lyads/lx2;->b:Lyads/kx2;

    iput-object v9, v10, Lyads/lx2;->a:Lyads/kx2;

    iput-object v8, v10, Lyads/lx2;->b:Lyads/kx2;

    const/4 v9, 0x0

    iput-boolean v9, v10, Lyads/lx2;->c:Z

    :cond_7
    iput-wide v11, v10, Lyads/lx2;->d:J

    iget-object v8, v10, Lyads/lx2;->a:Lyads/kx2;

    invoke-virtual {v8}, Lyads/kx2;->a()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    iget v8, v10, Lyads/lx2;->e:I

    const/4 v15, 0x1

    add-int/2addr v8, v15

    :goto_5
    iput v8, v10, Lyads/lx2;->e:I

    invoke-virtual {v7}, Lyads/pd6;->b()V

    iput-wide v5, v0, Lyads/oz3;->c1:J

    goto :goto_6

    :cond_9
    move-wide/from16 v21, v15

    const-wide/16 v17, -0x1

    :goto_6
    iget-wide v7, v0, Lyads/zy3;->D0:J

    sub-long v26, v5, v7

    const-string v9, "skipVideoBuffer"

    if-eqz p12, :cond_a

    if-nez p13, :cond_a

    invoke-static {v9}, Lyads/b06;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-interface {v3, v4, v9}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    iget-object v0, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v1, v0, Lyads/ji0;->f:I

    const/4 v15, 0x1

    add-int/2addr v1, v15

    iput v1, v0, Lyads/ji0;->f:I

    return v15

    :cond_a
    iget v10, v0, Lyads/zy3;->I:F

    float-to-double v10, v10

    iget v12, v0, Lyads/gs;->g:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v13, v13, v21

    sub-long/2addr v5, v1

    long-to-double v5, v5

    div-double/2addr v5, v10

    double-to-long v5, v5

    if-eqz v12, :cond_c

    sub-long v10, v13, p3

    sub-long/2addr v5, v10

    :cond_c
    iget-object v10, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    iget-object v11, v0, Lyads/oz3;->Q0:Lyads/gv4;

    const-wide/16 v19, -0x7530

    if-ne v10, v11, :cond_e

    cmp-long v1, v5, v19

    if-gez v1, :cond_d

    invoke-static {v9}, Lyads/b06;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-interface {v3, v4, v9}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    iget-object v1, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v2, v1, Lyads/ji0;->f:I

    const/4 v15, 0x1

    add-int/2addr v2, v15

    iput v2, v1, Lyads/ji0;->f:I

    invoke-virtual {v0, v5, v6}, Lyads/oz3;->c(J)V

    return v15

    :cond_d
    const/4 v9, 0x0

    return v9

    :cond_e
    iget-wide v10, v0, Lyads/oz3;->d1:J

    sub-long/2addr v13, v10

    iget-boolean v10, v0, Lyads/oz3;->V0:Z

    if-nez v10, :cond_f

    if-nez v12, :cond_10

    iget-boolean v10, v0, Lyads/oz3;->U0:Z

    if-eqz v10, :cond_11

    goto :goto_8

    :cond_f
    iget-boolean v10, v0, Lyads/oz3;->T0:Z

    if-nez v10, :cond_11

    :cond_10
    :goto_8
    const/4 v10, 0x1

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    iget-wide v1, v0, Lyads/oz3;->X0:J

    cmp-long v1, v1, p8

    const/16 v2, 0x15

    const-string v11, "releaseOutputBuffer"

    if-nez v1, :cond_16

    cmp-long v1, p1, v7

    if-ltz v1, :cond_16

    if-nez v10, :cond_12

    if-eqz v12, :cond_16

    cmp-long v1, v5, v19

    if-gez v1, :cond_16

    const-wide/32 v7, 0x186a0

    cmp-long v1, v13, v7

    if-lez v1, :cond_16

    :cond_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    iget-object v1, v0, Lyads/oz3;->o1:Lyads/id6;

    if-eqz v1, :cond_13

    iget-object v7, v0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    move-object/from16 v30, p14

    move-object/from16 v25, v1

    move-object/from16 v31, v7

    invoke-interface/range {v25 .. v31}, Lyads/id6;->a(JJLyads/vz2;Landroid/media/MediaFormat;)V

    :cond_13
    move-wide/from16 v7, v28

    sget v1, Lyads/u56;->a:I

    if-lt v1, v2, :cond_14

    invoke-virtual {v0}, Lyads/oz3;->A()V

    invoke-static {v11}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4, v7, v8}, Lyads/qy3;->a(IJ)V

    invoke-static {}, Lyads/b06;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long v1, v1, v21

    iput-wide v1, v0, Lyads/oz3;->d1:J

    iget-object v1, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v2, v1, Lyads/ji0;->e:I

    const/4 v15, 0x1

    add-int/2addr v2, v15

    iput v2, v1, Lyads/ji0;->e:I

    const/4 v9, 0x0

    iput v9, v0, Lyads/oz3;->a1:I

    iput-boolean v15, v0, Lyads/oz3;->V0:Z

    iget-boolean v1, v0, Lyads/oz3;->T0:Z

    if-nez v1, :cond_15

    iput-boolean v15, v0, Lyads/oz3;->T0:Z

    iget-object v1, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v2, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean v15, v0, Lyads/oz3;->R0:Z

    goto :goto_a

    :cond_14
    const/4 v15, 0x1

    invoke-virtual {v0}, Lyads/oz3;->A()V

    invoke-static {v11}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4, v15}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long v1, v1, v21

    iput-wide v1, v0, Lyads/oz3;->d1:J

    iget-object v1, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v2, v1, Lyads/ji0;->e:I

    add-int/2addr v2, v15

    iput v2, v1, Lyads/ji0;->e:I

    const/4 v9, 0x0

    iput v9, v0, Lyads/oz3;->a1:I

    iput-boolean v15, v0, Lyads/oz3;->V0:Z

    iget-boolean v1, v0, Lyads/oz3;->T0:Z

    if-nez v1, :cond_15

    iput-boolean v15, v0, Lyads/oz3;->T0:Z

    iget-object v1, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v2, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean v15, v0, Lyads/oz3;->R0:Z

    :cond_15
    :goto_a
    invoke-virtual {v0, v5, v6}, Lyads/oz3;->c(J)V

    return v15

    :cond_16
    if-eqz v12, :cond_17

    iget-wide v7, v0, Lyads/oz3;->W0:J

    cmp-long v1, p1, v7

    if-nez v1, :cond_18

    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    mul-long v5, v5, v21

    add-long/2addr v5, v7

    iget-object v1, v0, Lyads/oz3;->H0:Lyads/pd6;

    iget-wide v12, v1, Lyads/pd6;->p:J

    cmp-long v10, v12, v17

    if-eqz v10, :cond_1c

    iget-object v10, v1, Lyads/pd6;->a:Lyads/lx2;

    iget-object v10, v10, Lyads/lx2;->a:Lyads/kx2;

    invoke-virtual {v10}, Lyads/kx2;->a()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, v1, Lyads/pd6;->a:Lyads/lx2;

    iget-object v12, v10, Lyads/lx2;->a:Lyads/kx2;

    invoke-virtual {v12}, Lyads/kx2;->a()Z

    move-result v12

    if-eqz v12, :cond_1a

    iget-object v10, v10, Lyads/lx2;->a:Lyads/kx2;

    iget-wide v12, v10, Lyads/kx2;->e:J

    const-wide/16 v23, 0x0

    cmp-long v14, v12, v23

    if-nez v14, :cond_19

    const-wide/16 v13, 0x0

    goto :goto_b

    :cond_19
    iget-wide v2, v10, Lyads/kx2;->f:J

    div-long v13, v2, v12

    goto :goto_b

    :cond_1a
    move-wide/from16 v13, p8

    :goto_b
    iget-wide v2, v1, Lyads/pd6;->q:J

    move-wide/from16 v28, v2

    iget-wide v2, v1, Lyads/pd6;->m:J

    move-wide/from16 v30, v2

    iget-wide v2, v1, Lyads/pd6;->p:J

    sub-long v2, v30, v2

    mul-long/2addr v2, v13

    long-to-float v2, v2

    iget v3, v1, Lyads/pd6;->i:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    add-long v2, v28, v2

    sub-long v12, v5, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v28, 0x1312d00

    cmp-long v10, v12, v28

    if-gtz v10, :cond_1b

    move-wide v5, v2

    goto :goto_c

    :cond_1b
    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lyads/pd6;->m:J

    move-wide/from16 v2, v17

    iput-wide v2, v1, Lyads/pd6;->p:J

    iput-wide v2, v1, Lyads/pd6;->n:J

    :cond_1c
    :goto_c
    iget-wide v2, v1, Lyads/pd6;->m:J

    iput-wide v2, v1, Lyads/pd6;->n:J

    iput-wide v5, v1, Lyads/pd6;->o:J

    iget-object v2, v1, Lyads/pd6;->c:Lyads/od6;

    if-eqz v2, :cond_21

    iget-wide v12, v1, Lyads/pd6;->k:J

    cmp-long v3, v12, p8

    if-nez v3, :cond_1d

    goto :goto_f

    :cond_1d
    iget-wide v2, v2, Lyads/od6;->b:J

    cmp-long v10, v2, p8

    if-nez v10, :cond_1e

    goto :goto_f

    :cond_1e
    iget-wide v12, v1, Lyads/pd6;->k:J

    sub-long v16, v5, v2

    div-long v16, v16, v12

    mul-long v16, v16, v12

    add-long v16, v16, v2

    cmp-long v2, v5, v16

    if-gtz v2, :cond_1f

    sub-long v2, v16, v12

    goto :goto_d

    :cond_1f
    add-long v12, v16, v12

    move-wide/from16 v2, v16

    move-wide/from16 v16, v12

    :goto_d
    sub-long v12, v16, v5

    sub-long/2addr v5, v2

    cmp-long v5, v12, v5

    if-gez v5, :cond_20

    goto :goto_e

    :cond_20
    move-wide/from16 v16, v2

    :goto_e
    iget-wide v1, v1, Lyads/pd6;->l:J

    sub-long v5, v16, v1

    :cond_21
    :goto_f
    move-wide/from16 v28, v5

    sub-long v1, v28, v7

    div-long v1, v1, v21

    iget-wide v5, v0, Lyads/oz3;->X0:J

    cmp-long v3, v5, p8

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    :goto_10
    const-wide/32 v5, -0x7a120

    cmp-long v5, v1, v5

    if-gez v5, :cond_23

    if-nez p13, :cond_23

    iget-object v5, v0, Lyads/gs;->h:Lyads/mc5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v0, Lyads/gs;->j:J

    sub-long v6, p1, v6

    invoke-interface {v5, v6, v7}, Lyads/mc5;->b(J)I

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    const/4 v5, 0x0

    goto :goto_12

    :cond_24
    iget-object v1, v0, Lyads/zy3;->B0:Lyads/ji0;

    if-eqz v3, :cond_26

    iget v2, v1, Lyads/ji0;->d:I

    add-int/2addr v2, v5

    iput v2, v1, Lyads/ji0;->d:I

    iget v2, v1, Lyads/ji0;->f:I

    iget v3, v0, Lyads/oz3;->b1:I

    add-int/2addr v2, v3

    iput v2, v1, Lyads/ji0;->f:I

    :cond_25
    const/4 v5, 0x0

    goto :goto_11

    :cond_26
    iget v2, v1, Lyads/ji0;->j:I

    const/4 v15, 0x1

    add-int/2addr v2, v15

    iput v2, v1, Lyads/ji0;->j:I

    iget v2, v0, Lyads/oz3;->b1:I

    iget v3, v1, Lyads/ji0;->h:I

    add-int/2addr v3, v5

    iput v3, v1, Lyads/ji0;->h:I

    add-int/2addr v5, v2

    iget v2, v1, Lyads/ji0;->g:I

    add-int/2addr v2, v5

    iput v2, v1, Lyads/ji0;->g:I

    iget v2, v0, Lyads/oz3;->Z0:I

    add-int/2addr v2, v5

    iput v2, v0, Lyads/oz3;->Z0:I

    iget v2, v0, Lyads/oz3;->a1:I

    add-int/2addr v2, v5

    iput v2, v0, Lyads/oz3;->a1:I

    iget v3, v1, Lyads/ji0;->i:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lyads/ji0;->i:I

    iget v1, v0, Lyads/oz3;->K0:I

    if-lez v1, :cond_25

    iget v2, v0, Lyads/oz3;->Z0:I

    if-lt v2, v1, :cond_25

    if-lez v2, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lyads/oz3;->Y0:J

    sub-long v3, v1, v3

    iget-object v5, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget v6, v0, Lyads/oz3;->Z0:I

    invoke-virtual {v5, v6, v3, v4}, Lyads/ne6;->a(IJ)V

    const/4 v5, 0x0

    iput v5, v0, Lyads/oz3;->Z0:I

    iput-wide v1, v0, Lyads/oz3;->Y0:J

    :goto_11
    invoke-virtual {v0}, Lyads/zy3;->o()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lyads/zy3;->q()V

    :cond_27
    return v5

    :goto_12
    cmp-long v6, v1, v19

    if-gez v6, :cond_2a

    if-nez p13, :cond_2a

    if-eqz v3, :cond_28

    invoke-static {v9}, Lyads/b06;->a(Ljava/lang/String;)V

    move-object/from16 v3, p5

    invoke-interface {v3, v4, v5}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    iget-object v3, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v4, v3, Lyads/ji0;->f:I

    const/4 v15, 0x1

    add-int/2addr v4, v15

    iput v4, v3, Lyads/ji0;->f:I

    goto :goto_13

    :cond_28
    move-object/from16 v3, p5

    const/4 v15, 0x1

    const-string v6, "dropVideoBuffer"

    invoke-static {v6}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    iget-object v3, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v4, v3, Lyads/ji0;->h:I

    iput v4, v3, Lyads/ji0;->h:I

    iget v4, v3, Lyads/ji0;->g:I

    add-int/2addr v4, v15

    iput v4, v3, Lyads/ji0;->g:I

    iget v4, v0, Lyads/oz3;->Z0:I

    add-int/2addr v4, v15

    iput v4, v0, Lyads/oz3;->Z0:I

    iget v4, v0, Lyads/oz3;->a1:I

    add-int/2addr v4, v15

    iput v4, v0, Lyads/oz3;->a1:I

    iget v5, v3, Lyads/ji0;->i:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lyads/ji0;->i:I

    iget v3, v0, Lyads/oz3;->K0:I

    if-lez v3, :cond_29

    iget v4, v0, Lyads/oz3;->Z0:I

    if-lt v4, v3, :cond_29

    if-lez v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lyads/oz3;->Y0:J

    sub-long v5, v3, v5

    iget-object v7, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget v8, v0, Lyads/oz3;->Z0:I

    invoke-virtual {v7, v8, v5, v6}, Lyads/ne6;->a(IJ)V

    const/4 v9, 0x0

    iput v9, v0, Lyads/oz3;->Z0:I

    iput-wide v3, v0, Lyads/oz3;->Y0:J

    :cond_29
    :goto_13
    invoke-virtual {v0, v1, v2}, Lyads/oz3;->c(J)V

    const/4 v15, 0x1

    return v15

    :cond_2a
    move-object/from16 v3, p5

    sget v5, Lyads/u56;->a:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2e

    const-wide/32 v5, 0xc350

    cmp-long v5, v1, v5

    if-gez v5, :cond_2d

    iget-object v5, v0, Lyads/oz3;->o1:Lyads/id6;

    if-eqz v5, :cond_2b

    iget-object v6, v0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    move-object/from16 v30, p14

    move-object/from16 v25, v5

    move-object/from16 v31, v6

    invoke-interface/range {v25 .. v31}, Lyads/id6;->a(JJLyads/vz2;Landroid/media/MediaFormat;)V

    :cond_2b
    move-wide/from16 v5, v28

    invoke-virtual {v0}, Lyads/oz3;->A()V

    invoke-static {v11}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5, v6}, Lyads/qy3;->a(IJ)V

    invoke-static {}, Lyads/b06;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long v3, v3, v21

    iput-wide v3, v0, Lyads/oz3;->d1:J

    iget-object v3, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v4, v3, Lyads/ji0;->e:I

    const/4 v15, 0x1

    add-int/2addr v4, v15

    iput v4, v3, Lyads/ji0;->e:I

    const/4 v9, 0x0

    iput v9, v0, Lyads/oz3;->a1:I

    iput-boolean v15, v0, Lyads/oz3;->V0:Z

    iget-boolean v3, v0, Lyads/oz3;->T0:Z

    if-nez v3, :cond_2c

    iput-boolean v15, v0, Lyads/oz3;->T0:Z

    iget-object v3, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v4, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean v15, v0, Lyads/oz3;->R0:Z

    :cond_2c
    invoke-virtual {v0, v1, v2}, Lyads/oz3;->c(J)V

    return v15

    :cond_2d
    const/4 v9, 0x0

    goto :goto_15

    :cond_2e
    move-wide/from16 v5, v28

    const-wide/16 v7, 0x7530

    cmp-long v7, v1, v7

    if-gez v7, :cond_2d

    const-wide/16 v7, 0x2af8

    cmp-long v7, v1, v7

    if-lez v7, :cond_2f

    const-wide/16 v7, 0x2710

    sub-long v7, v1, v7

    :try_start_0
    div-long v7, v7, v21

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v9, 0x0

    return v9

    :cond_2f
    :goto_14
    iget-object v7, v0, Lyads/oz3;->o1:Lyads/id6;

    if-eqz v7, :cond_30

    iget-object v8, v0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    move-object/from16 v30, p14

    move-wide/from16 v28, v5

    move-object/from16 v25, v7

    move-object/from16 v31, v8

    invoke-interface/range {v25 .. v31}, Lyads/id6;->a(JJLyads/vz2;Landroid/media/MediaFormat;)V

    :cond_30
    invoke-virtual {v0}, Lyads/oz3;->A()V

    invoke-static {v11}, Lyads/b06;->a(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-interface {v3, v4, v15}, Lyads/qy3;->a(IZ)V

    invoke-static {}, Lyads/b06;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long v3, v3, v21

    iput-wide v3, v0, Lyads/oz3;->d1:J

    iget-object v3, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v4, v3, Lyads/ji0;->e:I

    add-int/2addr v4, v15

    iput v4, v3, Lyads/ji0;->e:I

    const/4 v9, 0x0

    iput v9, v0, Lyads/oz3;->a1:I

    iput-boolean v15, v0, Lyads/oz3;->V0:Z

    iget-boolean v3, v0, Lyads/oz3;->T0:Z

    if-nez v3, :cond_31

    iput-boolean v15, v0, Lyads/oz3;->T0:Z

    iget-object v3, v0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v4, v0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean v15, v0, Lyads/oz3;->R0:Z

    :cond_31
    invoke-virtual {v0, v1, v2}, Lyads/oz3;->c(J)V

    return v15

    :goto_15
    return v9
.end method

.method public final a(Lyads/vy3;)Z
    .locals 1

    .line 1251
    iget-object v0, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lyads/oz3;->b(Lyads/vy3;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lyads/mi0;)V
    .locals 4

    .line 71
    iget-boolean v0, p0, Lyads/oz3;->l1:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 72
    iget v2, p0, Lyads/oz3;->b1:I

    add-int/2addr v2, v1

    iput v2, p0, Lyads/oz3;->b1:I

    .line 73
    :cond_0
    sget v2, Lyads/u56;->a:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    if-eqz v0, :cond_2

    .line 74
    iget-wide v2, p1, Lyads/mi0;->f:J

    .line 75
    invoke-virtual {p0, v2, v3}, Lyads/zy3;->b(J)V

    .line 76
    invoke-virtual {p0}, Lyads/oz3;->A()V

    .line 77
    iget-object p1, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget v0, p1, Lyads/ji0;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Lyads/ji0;->e:I

    .line 78
    iput-boolean v1, p0, Lyads/oz3;->V0:Z

    .line 79
    iget-boolean p1, p0, Lyads/oz3;->T0:Z

    if-nez p1, :cond_1

    .line 80
    iput-boolean v1, p0, Lyads/oz3;->T0:Z

    .line 81
    iget-object p1, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v0, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lyads/ne6;->a(Ljava/lang/Object;)V

    .line 82
    iput-boolean v1, p0, Lyads/oz3;->R0:Z

    .line 83
    :cond_1
    invoke-virtual {p0, v2, v3}, Lyads/oz3;->a(J)V

    :cond_2
    return-void
.end method

.method public final b(Lyads/vy3;)Z
    .locals 3

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Lyads/oz3;->l1:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lyads/vy3;->a:Ljava/lang/String;

    invoke-static {v0}, Lyads/oz3;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean p1, p1, Lyads/vy3;->f:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lyads/oz3;->G0:Landroid/content/Context;

    const-class p1, Lyads/gv4;

    monitor-enter p1

    :try_start_0
    sget-boolean v1, Lyads/gv4;->f:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Lyads/k73;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lyads/k73;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p0, v2

    :goto_0
    sput p0, Lyads/gv4;->e:I

    sput-boolean v0, Lyads/gv4;->f:Z

    :cond_2
    sget p0, Lyads/gv4;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    move p0, v0

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    monitor-exit p1

    if-eqz p0, :cond_5

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p0

    :cond_4
    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 25
    const-string p0, "MediaCodecVideoRenderer"

    return-object p0
.end method

.method public final c(J)V
    .locals 3

    iget-object v0, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget-wide v1, v0, Lyads/ji0;->k:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lyads/ji0;->k:J

    iget v1, v0, Lyads/ji0;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lyads/ji0;->l:I

    iget-wide v0, p0, Lyads/oz3;->e1:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lyads/oz3;->e1:J

    iget p1, p0, Lyads/oz3;->f1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyads/oz3;->f1:I

    return-void
.end method

.method public final f()Z
    .locals 9

    invoke-super {p0}, Lyads/zy3;->f()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lyads/oz3;->T0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lyads/oz3;->l1:Z

    if-eqz v0, :cond_2

    :cond_1
    iput-wide v2, p0, Lyads/oz3;->X0:J

    return v1

    :cond_2
    iget-wide v4, p0, Lyads/oz3;->X0:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lyads/oz3;->X0:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Lyads/oz3;->X0:J

    return v4
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/oz3;->k1:Lyads/ye6;

    invoke-virtual {p0}, Lyads/oz3;->y()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/oz3;->R0:Z

    iput-object v0, p0, Lyads/oz3;->n1:Lyads/nz3;

    :try_start_0
    iput-object v0, p0, Lyads/zy3;->B:Lyads/vz2;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lyads/zy3;->C0:J

    iput-wide v2, p0, Lyads/zy3;->D0:J

    iput v1, p0, Lyads/zy3;->E0:I

    invoke-virtual {p0}, Lyads/zy3;->o()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v0, p0}, Lyads/ne6;->a(Lyads/ji0;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object p0, p0, Lyads/zy3;->B0:Lyads/ji0;

    invoke-virtual {v1, p0}, Lyads/ne6;->a(Lyads/ji0;)V

    throw v0
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lyads/zy3;->m0:Z

    iget-object v2, p0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {v2}, Lyads/us;->b()V

    iget-object v2, p0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v2}, Lyads/mi0;->b()V

    iput-boolean v0, p0, Lyads/zy3;->l0:Z

    iput-boolean v0, p0, Lyads/zy3;->k0:Z

    invoke-virtual {p0}, Lyads/zy3;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-static {v0, v1}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v1, p0, Lyads/zy3;->E:Lyads/eo2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    :cond_0
    invoke-virtual {v0}, Lyads/gv4;->release()V

    iput-object v1, p0, Lyads/oz3;->Q0:Lyads/gv4;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-static {v2, v1}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v1, p0, Lyads/zy3;->E:Lyads/eo2;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v2, p0, Lyads/oz3;->Q0:Lyads/gv4;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    iput-object v1, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    :cond_2
    invoke-virtual {v2}, Lyads/gv4;->release()V

    iput-object v1, p0, Lyads/oz3;->Q0:Lyads/gv4;

    :cond_3
    throw v0
.end method

.method public final i()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lyads/oz3;->Z0:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lyads/oz3;->Y0:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lyads/oz3;->d1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyads/oz3;->e1:J

    iput v0, p0, Lyads/oz3;->f1:I

    iget-object p0, p0, Lyads/oz3;->H0:Lyads/pd6;

    invoke-virtual {p0}, Lyads/pd6;->a()V

    return-void
.end method

.method public final j()V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/oz3;->X0:J

    iget v0, p0, Lyads/oz3;->Z0:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lyads/oz3;->Y0:J

    sub-long v4, v2, v4

    iget-object v0, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget v6, p0, Lyads/oz3;->Z0:I

    invoke-virtual {v0, v6, v4, v5}, Lyads/ne6;->a(IJ)V

    iput v1, p0, Lyads/oz3;->Z0:I

    iput-wide v2, p0, Lyads/oz3;->Y0:J

    :cond_0
    iget v0, p0, Lyads/oz3;->f1:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-wide v3, p0, Lyads/oz3;->e1:J

    invoke-virtual {v2, v0, v3, v4}, Lyads/ne6;->c(IJ)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lyads/oz3;->e1:J

    iput v1, p0, Lyads/oz3;->f1:I

    :cond_1
    iget-object p0, p0, Lyads/oz3;->H0:Lyads/pd6;

    iput-boolean v1, p0, Lyads/pd6;->d:Z

    iget-object v0, p0, Lyads/pd6;->b:Lyads/ld6;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lyads/ld6;->a()V

    iget-object v0, p0, Lyads/pd6;->c:Lyads/od6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/od6;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lyads/pd6;->e:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget v1, p0, Lyads/pd6;->j:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    iget v1, p0, Lyads/pd6;->h:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iput v2, p0, Lyads/pd6;->h:F

    invoke-static {v0, v2}, Lyads/jd6;->a(Landroid/view/Surface;F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean p0, p0, Lyads/oz3;->l1:Z

    if-eqz p0, :cond_0

    sget p0, Lyads/u56;->a:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()V
    .locals 0

    invoke-virtual {p0}, Lyads/oz3;->y()V

    return-void
.end method

.method public final v()V
    .locals 1

    invoke-super {p0}, Lyads/zy3;->v()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/oz3;->b1:I

    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/oz3;->T0:Z

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lyads/oz3;->l1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v0, :cond_0

    new-instance v1, Lyads/nz3;

    invoke-direct {v1, p0, v0}, Lyads/nz3;-><init>(Lyads/oz3;Lyads/qy3;)V

    iput-object v1, p0, Lyads/oz3;->n1:Lyads/nz3;

    :cond_0
    return-void
.end method
