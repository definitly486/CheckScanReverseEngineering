.class public final Lyads/r50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/zu3;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final a(Lyads/zu3;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1, p2}, Lyads/av3;->b(Ljava/lang/String;Z)V

    return-void

    .line 25
    :cond_0
    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lyads/zu3;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p2, p1}, Lyads/av3;->b(ILjava/lang/String;)V

    return-void

    .line 27
    :cond_0
    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lyads/zu3;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lyads/av3;->a(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final c(Lyads/zu3;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lyads/av3;->b(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
