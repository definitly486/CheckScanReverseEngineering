.class public final Lyads/ki2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lyads/vh2;Lyads/fs2;Lyads/jp0;)Lyads/li2;
    .locals 1

    check-cast p1, Lyads/vq0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lyads/cy1;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/cy1;

    iget-object v0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object v0, v0, Lyads/xh1;->c:Lyads/br0;

    check-cast v0, Lyads/wp0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/wp0;->a:Lyads/og1;

    iget-object v0, v0, Lyads/og1;->C:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/lg1;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lyads/fi2;

    invoke-direct {p2, p0, p3}, Lyads/fi2;-><init>(Lyads/cy1;Lyads/jp0;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object p1

    :cond_2
    new-instance p2, Lyads/hi2;

    invoke-direct {p2, p0, p3}, Lyads/hi2;-><init>(Lyads/cy1;Lyads/jp0;)V

    goto :goto_0

    :cond_3
    instance-of p2, p0, Lyads/et1;

    if-eqz p2, :cond_4

    new-instance p2, Lyads/gi2;

    check-cast p0, Lyads/et1;

    invoke-direct {p2, p0}, Lyads/gi2;-><init>(Lyads/et1;)V

    goto :goto_0

    :cond_4
    instance-of p2, p0, Lyads/m62;

    if-eqz p2, :cond_5

    new-instance p2, Lyads/ii2;

    check-cast p0, Lyads/m62;

    invoke-direct {p2, p0}, Lyads/ii2;-><init>(Lyads/m62;)V

    goto :goto_0

    :cond_5
    move-object p2, p1

    :goto_0
    if-nez p2, :cond_6

    :goto_1
    return-object p1

    :cond_6
    new-instance p0, Lyads/li2;

    invoke-direct {p0, p2}, Lyads/li2;-><init>(Lyads/ji2;)V

    return-object p0
.end method
