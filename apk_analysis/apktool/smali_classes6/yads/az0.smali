.class public abstract Lyads/az0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lyads/ry0;Lyads/vh2;Lyads/fs2;Lyads/nc1;)Z
    .locals 4

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    :cond_0
    instance-of v0, p2, Lyads/vq0;

    if-nez v0, :cond_1

    return p4

    :cond_1
    instance-of v0, p1, Lyads/ey0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lyads/ey0;

    iget-object p0, p1, Lyads/ey0;->a:Lyads/bu0;

    check-cast p2, Lyads/vq0;

    iget-object p0, p0, Lyads/bu0;->c:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lyads/mc1;

    invoke-direct {p1}, Lyads/mc1;-><init>()V

    iget-object p3, p2, Lyads/vq0;->n:Lyads/nq0;

    iget-object p3, p3, Lyads/nq0;->c:Lyads/c81;

    iget-object p3, p3, Lyads/c81;->i:Lyads/sc1;

    check-cast p3, Lf2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0, p1}, Lyads/sc1;->b(Lyads/vq0;Ljava/lang/String;Lyads/mc1;)Lyads/du3;

    move-result-object p0

    invoke-virtual {p2, p0}, Lyads/vq0;->a(Lyads/du3;)V

    return v1

    :cond_2
    check-cast p2, Lyads/vq0;

    iget-object v0, p2, Lyads/vq0;->n:Lyads/nq0;

    iget-object v0, v0, Lyads/nq0;->a:Lyads/bo1;

    iget-object v0, v0, Lyads/bo1;->i:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/zy0;

    iget-object v0, v0, Lyads/zy0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/yy0;

    invoke-interface {v3, p0, p1, p2, p3}, Lyads/yy0;->a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    move p4, v1

    :cond_5
    if-nez p4, :cond_6

    sget p0, Lyads/cr3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    :cond_6
    return p4
.end method
