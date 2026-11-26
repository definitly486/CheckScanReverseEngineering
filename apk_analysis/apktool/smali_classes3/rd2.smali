.class public final Lrd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd2$a;
    }
.end annotation


# direct methods
.method public static final a(IILt18;Lmd7;Lt18;)J
    .locals 2

    sget-object v0, Lt18;->c:Lt18;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lt18;->a:Lhn2;

    invoke-static {p0, p3}, Lrd2;->c(Lhn2;Lmd7;)I

    move-result p0

    iget-object p1, p2, Lt18;->b:Lhn2;

    invoke-static {p1, p3}, Lrd2;->c(Lhn2;Lmd7;)I

    move-result p1

    :goto_0
    iget-object p2, p4, Lt18;->a:Lhn2;

    iget-object p3, p4, Lt18;->b:Lhn2;

    instance-of p4, p2, Lhn2$a;

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    if-eqz p4, :cond_2

    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p2, Lhn2$a;

    iget p2, p2, Lhn2$a;->a:I

    if-le p0, p2, :cond_2

    move p0, p2

    :cond_2
    :goto_1
    instance-of p2, p3, Lhn2$a;

    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lhn2$a;

    iget p2, p3, Lhn2$a;->a:I

    if-le p1, p2, :cond_4

    move p1, p2

    :cond_4
    :goto_2
    int-to-long p2, p0

    const/16 p0, 0x20

    shl-long/2addr p2, p0

    int-to-long p0, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static final b(IIIILmd7;Lt18;)D
    .locals 5

    int-to-double v0, p2

    int-to-double v2, p0

    div-double/2addr v0, v2

    int-to-double p2, p3

    int-to-double p0, p1

    div-double/2addr p2, p0

    sget-object v4, Lrd2$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v4, p4

    const/4 v4, 0x1

    if-eq p4, v4, :cond_1

    const/4 v4, 0x2

    if-ne p4, v4, :cond_0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    :goto_0
    iget-object p4, p5, Lt18;->a:Lhn2;

    instance-of v0, p4, Lhn2$a;

    if-eqz v0, :cond_2

    check-cast p4, Lhn2$a;

    iget p4, p4, Lhn2$a;->a:I

    int-to-double v0, p4

    div-double/2addr v0, v2

    cmpl-double p4, p2, v0

    if-lez p4, :cond_2

    move-wide p2, v0

    :cond_2
    iget-object p4, p5, Lt18;->b:Lhn2;

    instance-of p5, p4, Lhn2$a;

    if-eqz p5, :cond_3

    check-cast p4, Lhn2$a;

    iget p4, p4, Lhn2$a;->a:I

    int-to-double p4, p4

    div-double/2addr p4, p0

    cmpl-double p0, p2, p4

    if-lez p0, :cond_3

    return-wide p4

    :cond_3
    return-wide p2
.end method

.method public static c(Lhn2;Lmd7;)I
    .locals 1

    instance-of v0, p0, Lhn2$a;

    if-eqz v0, :cond_0

    check-cast p0, Lhn2$a;

    iget p0, p0, Lhn2$a;->a:I

    return p0

    :cond_0
    sget-object p0, Lrd2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/high16 p0, -0x80000000

    return p0
.end method
