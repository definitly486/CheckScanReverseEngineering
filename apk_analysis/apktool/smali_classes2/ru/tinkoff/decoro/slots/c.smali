.class public Lru/tinkoff/decoro/slots/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/tinkoff/decoro/slots/Slot$b;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lru/tinkoff/decoro/slots/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const p0, -0xdc09

    return p0
.end method

.method public l(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method
