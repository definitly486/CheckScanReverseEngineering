.class public abstract Lyads/n51;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/l42;Lyads/fs2;Landroid/util/DisplayMetrics;)F
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/l42;->c:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g12;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lyads/m51;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/l42;->d:Lyads/as2;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object p0, p0, Lyads/l42;->d:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_4
    iget-object p0, p0, Lyads/l42;->d:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p2}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Lyads/l42;->d:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p2}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
