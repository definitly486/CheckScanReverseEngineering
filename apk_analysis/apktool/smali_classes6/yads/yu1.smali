.class public final Lyads/yu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yu1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    const-string v1, "type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_1
    :try_start_0
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v4

    invoke-static {p2, v1, v2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v4, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    invoke-interface {p1}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p2, v1, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v2

    invoke-interface {v0, v2}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    const-string v0, "pivot-fixed"

    if-nez v2, :cond_2

    move-object v2, v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/pu1;

    iget-object p0, p0, Lyads/yu1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/tu1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/su1;

    sget-object v4, Lyads/wu1;->b:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/wu1;->a:Lyads/xr2;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "unit"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    move-object p2, v1

    move-object v4, v2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, p1

    :goto_3
    sget-object p1, Lyads/w36;->b:Lyads/s36;

    sget-object v1, Lyads/bt4;->e:Lnl3;

    const-string v2, "value"

    invoke-static {p2, v4, v2, p1, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Lyads/su1;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/pu1;-><init>(Lyads/su1;)V

    goto :goto_4

    :cond_4
    move-object v4, p2

    move-object p2, p1

    const-string p1, "pivot-percentage"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance v0, Lyads/qu1;

    iget-object p0, p0, Lyads/yu1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->L5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cv1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/bv1;

    move-object v2, v4

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object p1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/bv1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/qu1;-><init>(Lyads/bv1;)V

    goto :goto_4

    :cond_5
    invoke-interface {p2}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v2}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_8

    instance-of v0, p1, Lyads/iv1;

    if-eqz v0, :cond_6

    move-object v3, p1

    check-cast v3, Lyads/iv1;

    :cond_6
    if-eqz v3, :cond_7

    iget-object p0, p0, Lyads/yu1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/av1;

    invoke-virtual {p0, p2, v3, v4}, Lyads/av1;->a(Lyads/ys4;Lyads/iv1;Lorg/json/JSONObject;)Lyads/ru1;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_7
    invoke-static {v4, v1, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {v2, v4}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
