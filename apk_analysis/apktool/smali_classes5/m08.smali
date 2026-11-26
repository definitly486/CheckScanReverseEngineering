.class public final Lm08;
.super Ld64;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld64<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Lz37;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz37;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lm08;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ld64;->a(Lz37;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm08;->b:Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Single instance created couldn\'t return value"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld64;->a:Lgi0;

    iget-object v0, v0, Lgi0;->g:Lxy0;

    iget-object v0, v0, Lxy0;->a:Lnl3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lm08;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lm08;->b:Ljava/lang/Object;

    return-void
.end method

.method public final c(Lz37;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz37;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lm08;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm08;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lm08;->a(Lz37;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lm08;->b:Ljava/lang/Object;

    :cond_2
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_1
    iget-object p0, p0, Lm08;->b:Ljava/lang/Object;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "Single instance created couldn\'t return value"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
