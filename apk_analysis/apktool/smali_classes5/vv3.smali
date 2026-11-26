.class public final Lvv3;
.super Lk15;
.source "SourceFile"


# virtual methods
.method public final b(C)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    const/4 p1, 0x6

    const-string v1, "0123456789ABCDEF"

    invoke-static {p0, v0, p1, v1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final c(C)C
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0
.end method
