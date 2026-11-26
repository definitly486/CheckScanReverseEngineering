.class public final Lsn2$e;
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

    if-eqz p1, :cond_0

    sget-object p0, Ly82;->DATA_DISK_CACHE:Ly82;

    if-eq p2, p0, :cond_1

    :cond_0
    sget-object p0, Ly82;->LOCAL:Ly82;

    if-ne p2, p0, :cond_2

    :cond_1
    sget-object p0, Lrx2;->TRANSFORMED:Lrx2;

    if-ne p3, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
