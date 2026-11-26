.class public final Lru/tinkoff/decoro/slots/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/tinkoff/decoro/slots/Slot$b;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lru/tinkoff/decoro/slots/d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0xdc08

    return p0
.end method

.method public final l(C)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
