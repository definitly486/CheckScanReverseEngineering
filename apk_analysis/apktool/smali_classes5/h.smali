.class public final Lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Lh;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh;->b:Lh;

    return-void
.end method

.method public static final a(III[B[B)Z
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, v1, p0

    aget-byte v2, p3, v2

    add-int v3, v1, p1

    aget-byte v3, p4, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size="

    const-string v2, " offset="

    invoke-static {p0, p1, v1, v2}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " byteCount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lnl3;)Ltc5;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ltc5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltc5;-><init>(I)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final d(I)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final e(B)Ljava/lang/String;
    .locals 3

    sget-object v0, Lc;->b:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final f(I)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    sget-object v0, Lc;->b:[C

    shr-int/lit8 v1, p0, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    shr-int/lit8 v3, p0, 0x14

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    shr-int/lit8 v4, p0, 0x10

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    shr-int/lit8 v5, p0, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    shr-int/lit8 v6, p0, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    shr-int/lit8 v7, p0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    const/16 v0, 0x8

    new-array v8, v0, [C

    const/4 v9, 0x0

    aput-char v1, v8, v9

    const/4 v1, 0x1

    aput-char v2, v8, v1

    const/4 v1, 0x2

    aput-char v3, v8, v1

    const/4 v1, 0x3

    aput-char v4, v8, v1

    const/4 v1, 0x4

    aput-char v5, v8, v1

    const/4 v1, 0x5

    aput-char v6, v8, v1

    const/4 v1, 0x6

    aput-char v7, v8, v1

    const/4 v1, 0x7

    aput-char p0, v8, v1

    :goto_0
    if-ge v9, v0, :cond_1

    aget-char p0, v8, v9

    const/16 v1, 0x30

    if-ne p0, v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v8, v9, v0}, Lra8;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lf02;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object v0

    invoke-static {v0}, Lqb4;->e(Lo22;)V

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    instance-of v1, p0, Lfo2;

    if-eqz v1, :cond_0

    check-cast p0, Lfo2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    move-object v4, p0

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Lfo2;->e:Lr22;

    invoke-static {v1, v0}, Lgo2;->h(Lr22;Lo22;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lj59;->a:Lj59;

    iput-object v2, p0, Lfo2;->g:Ljava/lang/Object;

    iput v3, p0, Lio2;->d:I

    invoke-virtual {v1, v0, p0}, Lr22;->dispatchYield(Lo22;Ljava/lang/Runnable;)V

    move-object p0, v2

    goto :goto_5

    :cond_2
    new-instance v2, Lcm9;

    invoke-direct {v2}, Lcm9;-><init>()V

    invoke-interface {v0, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    sget-object v4, Lj59;->a:Lj59;

    iput-object v4, p0, Lfo2;->g:Ljava/lang/Object;

    iput v3, p0, Lio2;->d:I

    invoke-virtual {v1, v0, p0}, Lr22;->dispatchYield(Lo22;Ljava/lang/Runnable;)V

    iget-boolean v0, v2, Lcm9;->c:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lpt8;->a()Lb13;

    move-result-object v0

    iget-object v1, v0, Lb13;->e:Lfr;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lb13;->c:J

    const-wide v5, 0x100000000L

    cmp-long v1, v1, v5

    if-ltz v1, :cond_5

    iput-object v4, p0, Lfo2;->g:Ljava/lang/Object;

    iput v3, p0, Lio2;->d:I

    invoke-virtual {v0, p0}, Lb13;->n0(Lio2;)V

    sget-object p0, La32;->COROUTINE_SUSPENDED:La32;

    goto :goto_6

    :cond_5
    invoke-virtual {v0, v3}, Lb13;->q0(Z)V

    :try_start_0
    invoke-virtual {p0}, Lio2;->run()V

    :cond_6
    invoke-virtual {v0}, Lb13;->u0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {v0, v3}, Lb13;->k0(Z)V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, v1}, Lio2;->g(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v3}, Lb13;->k0(Z)V

    throw p0

    :cond_7
    move-object p0, v4

    :goto_5
    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    move-object v4, p0

    move-object p0, v0

    :goto_6
    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, v0, :cond_8

    return-object p0

    :cond_8
    return-object v4
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzai()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
