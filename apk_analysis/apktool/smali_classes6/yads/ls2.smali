.class public abstract Lyads/ls2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/as2;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 72
    instance-of p0, p0, Lyads/xr2;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lyads/as2;Lyads/as2;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_4

    instance-of v0, p0, Lyads/xr2;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    instance-of v0, p1, Lyads/xr2;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lyads/as2;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Lyads/ds2;Lyads/ds2;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 73
    instance-of v1, p0, Lyads/y50;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 74
    instance-of v1, p1, Lyads/y50;

    if-eqz v1, :cond_1

    .line 75
    check-cast p0, Lyads/y50;

    .line 76
    iget-object p0, p0, Lyads/y50;->a:Ljava/util/List;

    .line 77
    check-cast p1, Lyads/y50;

    .line 78
    iget-object p1, p1, Lyads/y50;->a:Ljava/util/List;

    .line 79
    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
