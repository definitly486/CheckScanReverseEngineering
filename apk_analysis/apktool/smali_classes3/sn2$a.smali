.class public final Lsn2$a;
.super Lsn2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Ly82;)Z
    .locals 0

    sget-object p0, Ly82;->REMOTE:Ly82;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(ZLy82;Lrx2;)Z
    .locals 0

    sget-object p0, Ly82;->RESOURCE_DISK_CACHE:Ly82;

    if-eq p2, p0, :cond_0

    sget-object p0, Ly82;->MEMORY_CACHE:Ly82;

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
