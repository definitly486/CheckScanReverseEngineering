.class public abstract Lyads/s03;
.super Lyads/z93;
.source "SourceFile"


# instance fields
.field public final A:Lyads/y03;

.field public final B:Lyads/ah4;

.field public final C:Lyads/q03;

.field public D:Lyads/o03;

.field public E:Lyads/o03;

.field public F:Lyads/d13;

.field public final z:Lyads/t03;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t03;Lyads/t5;Lyads/y03;Lyads/ah4;)V
    .locals 1

    new-instance v0, Lyads/q03;

    invoke-direct {v0, p3}, Lyads/q03;-><init>(Lyads/bf5;)V

    invoke-direct {p0, p1, p2, p5, p3}, Lyads/z93;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    iput-object p4, p0, Lyads/s03;->z:Lyads/t03;

    iput-object p6, p0, Lyads/s03;->A:Lyads/y03;

    iput-object p7, p0, Lyads/s03;->B:Lyads/ah4;

    iput-object v0, p0, Lyads/s03;->C:Lyads/q03;

    sget-object p1, Lyads/v9;->a:Lyads/r70;

    iget-object p1, p1, Lyads/r70;->a:Lyads/sl5;

    iget-object p0, p0, Lyads/pp;->c:Lyads/e4;

    invoke-virtual {p0, p1}, Lyads/e4;->a(Lyads/sl5;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/p03;)Lyads/o03;
.end method

.method public a(Lyads/d9;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/pp;->b:Lyads/t5;

    sget-object v1, Lyads/s5;->u:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iput-object p1, p0, Lyads/pp;->w:Lyads/d9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lyads/s03;->B:Lyads/ah4;

    iput-object p1, v0, Lyads/ah4;->d:Lyads/d9;

    iget-object v0, p0, Lyads/s03;->C:Lyads/q03;

    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lyads/d9;->q:Lyads/o54;

    if-eqz v2, :cond_0

    new-instance v0, Lyads/w34;

    invoke-direct {v0, v1, p1, v2}, Lyads/w34;-><init>(Landroid/content/Context;Lyads/d9;Lyads/o54;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/pg5;

    iget-object v0, v0, Lyads/q03;->a:Lyads/bf5;

    invoke-direct {v2, v1, v0}, Lyads/pg5;-><init>(Landroid/content/Context;Lyads/bf5;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lyads/s03;->a(Lyads/p03;)Lyads/o03;

    move-result-object v0

    iget-object v1, p0, Lyads/s03;->E:Lyads/o03;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lyads/pp;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lyads/o03;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lyads/s03;->D:Lyads/o03;

    iput-object v1, p0, Lyads/s03;->E:Lyads/o03;

    iput-object v0, p0, Lyads/s03;->D:Lyads/o03;

    iget-object v1, p0, Lyads/s03;->A:Lyads/y03;

    iget-object v2, p0, Lyads/pp;->c:Lyads/e4;

    invoke-interface {v1, p1, v2, v0}, Lyads/y03;->a(Lyads/d9;Lyads/e4;Lyads/o03;)Lyads/d13;

    move-result-object v1

    iput-object v1, p0, Lyads/s03;->F:Lyads/d13;

    invoke-static {}, Lyads/s1;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    :goto_1
    invoke-interface {v0, v1, p1}, Lyads/o03;->a(Landroid/content/Context;Lyads/d9;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lyads/m4;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lyads/s03;->z:Lyads/t03;

    invoke-interface {p0, p1}, Lyads/t03;->onAdFailedToLoad(Lyads/m4;)V

    return-void
.end method

.method public final c()V
    .locals 7

    invoke-static {p0}, Lyads/ya;->a(Lyads/nz;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/s03;->F:Lyads/d13;

    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/s03;->E:Lyads/o03;

    iget-object v3, p0, Lyads/s03;->D:Lyads/o03;

    const/4 v4, 0x2

    new-array v5, v4, [Lyads/o03;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v2, v5, v6

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lyads/o03;->a(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lyads/s03;->E:Lyads/o03;

    iput-object v0, p0, Lyads/s03;->D:Lyads/o03;

    invoke-super {p0}, Lyads/pp;->c()V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lyads/o8;->h:Lyads/m4;

    iget-object p0, p0, Lyads/s03;->z:Lyads/t03;

    invoke-interface {p0, v0}, Lyads/t03;->onAdFailedToLoad(Lyads/m4;)V

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/s03;->F:Lyads/d13;

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/s03;->F:Lyads/d13;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lyads/s03;->z:Lyads/t03;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v1, v0}, Lyads/t03;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lyads/o8;->b:Lyads/m4;

    invoke-interface {v1, v0}, Lyads/t03;->onAdFailedToLoad(Lyads/m4;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
