.class public abstract Lyads/ul5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lyads/d9;Lyads/wx2;Lyads/ao;Lyads/sl5;)Z
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Lyads/wx2;->c(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p0}, Lyads/wx2;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p3, :cond_0

    if-lez v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-boolean p1, p1, Lyads/d9;->z:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p4, p0}, Lyads/sl5;->c(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p4, p0}, Lyads/sl5;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, p0}, Lyads/wx2;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2, p0}, Lyads/wx2;->a(Landroid/content/Context;)I

    move-result v5

    invoke-interface {p4}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_3

    if-eq p4, v2, :cond_2

    const/4 v6, 0x2

    if-eq p4, v6, :cond_4

    const/4 v6, 0x3

    if-ne p4, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_2
    :goto_1
    if-gt v4, v0, :cond_5

    if-lez v0, :cond_5

    if-le v5, v3, :cond_4

    if-nez v3, :cond_5

    goto :goto_2

    :cond_3
    if-gt v4, v0, :cond_5

    if-lez v0, :cond_5

    if-gt v5, v3, :cond_5

    :cond_4
    :goto_2
    move p4, v2

    goto :goto_3

    :cond_5
    move p4, v1

    :goto_3
    invoke-static {p0}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, p0}, Lyads/wx2;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2, p0}, Lyads/wx2;->a(Landroid/content/Context;)I

    move-result p0

    if-gt v4, v0, :cond_6

    if-gt p0, v3, :cond_6

    move p0, v2

    goto :goto_4

    :cond_6
    move p0, v1

    :goto_4
    if-eqz p4, :cond_7

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_5

    :cond_7
    move p0, v1

    :goto_5
    if-nez p1, :cond_9

    if-eqz p3, :cond_8

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    return v1

    :cond_9
    :goto_6
    return v2
.end method
