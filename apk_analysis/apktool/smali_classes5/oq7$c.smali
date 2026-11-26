.class public final Loq7$c;
.super Loq7$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loq7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# virtual methods
.method public final a(Loq7;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget p0, p1, Loq7;->d:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    iput p0, p1, Loq7;->d:I

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Loq7;)V
    .locals 0

    monitor-enter p1

    const/4 p0, 0x0

    :try_start_0
    iput p0, p1, Loq7;->d:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
