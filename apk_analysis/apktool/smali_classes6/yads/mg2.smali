.class public abstract Lyads/mg2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/uf2;Lyads/gs2;)Lyads/u66;
    .locals 2

    instance-of v0, p0, Lyads/mf2;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/n66;

    check-cast p0, Lyads/mf2;

    iget-object p0, p0, Lyads/mf2;->a:Lyads/pu;

    iget-object v1, p0, Lyads/pu;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/pu;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lyads/n66;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lyads/pf2;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/r66;

    check-cast p0, Lyads/pf2;

    iget-object p0, p0, Lyads/pf2;->a:Lyads/pm3;

    iget-object v1, p0, Lyads/pm3;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/pm3;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-direct {v0, v1, p0, p1}, Lyads/r66;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lyads/qf2;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/q66;

    check-cast p0, Lyads/qf2;

    iget-object p0, p0, Lyads/qf2;->a:Lyads/yo4;

    iget-object v1, p0, Lyads/yo4;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/yo4;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-direct {v0, v1, p0, p1}, Lyads/q66;-><init>(Ljava/lang/String;D)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lyads/sf2;

    if-eqz v0, :cond_3

    new-instance v0, Lyads/s66;

    check-cast p0, Lyads/sf2;

    iget-object p0, p0, Lyads/sf2;->a:Lyads/ur5;

    iget-object v1, p0, Lyads/ur5;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/ur5;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lyads/s66;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lyads/nf2;

    if-eqz v0, :cond_4

    new-instance v0, Lyads/o66;

    check-cast p0, Lyads/nf2;

    iget-object p0, p0, Lyads/nf2;->a:Lyads/t30;

    iget-object v1, p0, Lyads/t30;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/t30;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lyads/o66;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lyads/tf2;

    if-eqz v0, :cond_5

    new-instance v0, Lyads/t66;

    check-cast p0, Lyads/tf2;

    iget-object p0, p0, Lyads/tf2;->a:Lyads/k56;

    iget-object v1, p0, Lyads/k56;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/k56;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lyads/t66;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Lyads/of2;

    if-eqz v0, :cond_6

    new-instance v0, Lyads/p66;

    check-cast p0, Lyads/of2;

    iget-object p0, p0, Lyads/of2;->a:Lyads/cp0;

    iget-object v1, p0, Lyads/cp0;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/cp0;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p0}, Lyads/p66;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Lyads/lf2;

    if-eqz v0, :cond_7

    new-instance v0, Lyads/m66;

    check-cast p0, Lyads/lf2;

    iget-object p0, p0, Lyads/lf2;->a:Lyads/jj;

    iget-object v1, p0, Lyads/jj;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/jj;->b:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    invoke-direct {v0, v1, p0}, Lyads/m66;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object v0

    :cond_7
    instance-of p0, p0, Lyads/rf2;

    if-nez p0, :cond_8

    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Support property variables"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
