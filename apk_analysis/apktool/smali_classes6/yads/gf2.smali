.class public abstract Lyads/gf2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/tf1;Ljava/lang/Integer;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lyads/ff2;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/16 p0, 0x190

    return p0

    :cond_2
    const/16 p0, 0x2bc

    return p0

    :cond_3
    const/16 p0, 0x1f4

    return p0

    :cond_4
    const/16 p0, 0x12c

    return p0
.end method

.method public static final a(Lyads/tf1;Ljava/lang/Integer;Lyads/cf2;)Landroid/graphics/Typeface;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;)I

    move-result p0

    .line 41
    invoke-interface {p2, p0}, Lyads/cf2;->a(I)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    return-object p0
.end method
