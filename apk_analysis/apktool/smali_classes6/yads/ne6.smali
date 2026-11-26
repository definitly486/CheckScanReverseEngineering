.class public final Lyads/ne6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lyads/bq2;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lyads/bq2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ne6;->a:Landroid/os/Handler;

    iput-object p2, p0, Lyads/ne6;->b:Lyads/bq2;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 2

    .line 21
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22
    new-instance v1, Lf3a;

    invoke-direct {v1, p1, p2, p3, p0}, Lf3a;-><init>(IJLyads/ne6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 1

    .line 23
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    .line 24
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 25
    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p3, p1, p2}, Lyads/cj0;->b(IJ)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 36
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    .line 37
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 38
    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p1}, Lyads/cj0;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lyads/ne6;->a:Landroid/os/Handler;

    new-instance v3, Lg3a;

    invoke-direct {v3, p0, p1, v0, v1}, Lg3a;-><init>(Lyads/ne6;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;J)V
    .locals 1

    .line 29
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    invoke-virtual {p0, p1, p2, p3}, Lyads/bq2;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Le3a;

    invoke-direct {v1, p0, p1}, Le3a;-><init>(Lyads/ne6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8

    .line 27
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lc3a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lc3a;-><init>(Lyads/ne6;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lyads/ji0;)V
    .locals 3

    .line 32
    monitor-enter p1

    .line 33
    monitor-exit p1

    .line 34
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Llt2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Llt2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lyads/vz2;Lyads/oi0;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Lsh8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lsh8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lyads/ye6;)V
    .locals 1

    .line 26
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    invoke-virtual {p0, p1}, Lyads/bq2;->a(Lyads/ye6;)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    .line 24
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    .line 25
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 26
    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/cj0;->a(IJ)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lot2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lot2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    .line 30
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 31
    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p1}, Lyads/cj0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 6

    .line 19
    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    .line 20
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    .line 21
    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    move-object v0, p0

    check-cast v0, Lyads/cj0;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lyads/cj0;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final b(Lyads/ji0;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lh11;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lyads/vz2;Lyads/oi0;)V
    .locals 1

    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p1, p2}, Lyads/cj0;->b(Lyads/vz2;Lyads/oi0;)V

    return-void
.end method

.method public final b(Lyads/ye6;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Ld3a;

    invoke-direct {v1, p0, p1}, Ld3a;-><init>(Lyads/ne6;Lyads/ye6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(IJ)V
    .locals 2

    .line 26
    iget-object v0, p0, Lyads/ne6;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Lh3a;

    invoke-direct {v1, p1, p2, p3, p0}, Lh3a;-><init>(IJLyads/ne6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lyads/ji0;)V
    .locals 1

    monitor-enter p1

    monitor-exit p1

    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v0, v0, Lyads/eq2;->p:Lyads/ge;

    check-cast v0, Lyads/cj0;

    invoke-virtual {v0, p1}, Lyads/cj0;->c(Lyads/ji0;)V

    iget-object p1, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Lyads/ji0;)V
    .locals 1

    iget-object p0, p0, Lyads/ne6;->b:Lyads/bq2;

    sget v0, Lyads/u56;->a:I

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->p:Lyads/ge;

    check-cast p0, Lyads/cj0;

    invoke-virtual {p0, p1}, Lyads/cj0;->d(Lyads/ji0;)V

    return-void
.end method
