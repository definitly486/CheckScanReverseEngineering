.class public final Lzr4;
.super Lk15;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Character;


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lzr4;->a:Ljava/lang/Character;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(C)Z
    .locals 0

    iget-object p0, p0, Lzr4;->a:Ljava/lang/Character;

    if-eqz p0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final c(C)C
    .locals 0

    iget-object p0, p0, Lzr4;->a:Ljava/lang/Character;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    :cond_0
    return p1
.end method
