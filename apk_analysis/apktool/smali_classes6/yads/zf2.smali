.class public final Lyads/zf2;
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

    iput-object p1, p0, Lyads/zf2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/zf2;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/uf2;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/uf2;
    .locals 9

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "value"

    const-string v3, "name"

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object v2, p1

    move-object v3, p2

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/pf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->E9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qm3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pm3;

    invoke-static {v3, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "value"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/pm3;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/pf2;-><init>(Lyads/pm3;)V

    return-object v0

    :sswitch_1
    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    const-string p2, "color"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p2, Lyads/nf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/u30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/t30;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "value"

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyads/t30;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/nf2;-><init>(Lyads/t30;)V

    return-object p2

    :sswitch_2
    move-object v8, v2

    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v8

    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lyads/lf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jj;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lyads/w36;->g:Lyads/t36;

    invoke-static {v2, v3, p2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/jj;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/lf2;-><init>(Lyads/jj;)V

    return-object v0

    :sswitch_3
    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    const-string p2, "boolean"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance p2, Lyads/mf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pu;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "value"

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyads/pu;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/mf2;-><init>(Lyads/pu;)V

    return-object p2

    :sswitch_4
    move-object v8, v2

    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v8

    const-string v1, "dict"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lyads/of2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->B:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dp0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/cp0;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lyads/w36;->h:Lyads/q36;

    invoke-static {v2, v3, p2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/cp0;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/of2;-><init>(Lyads/cp0;)V

    return-object v0

    :sswitch_5
    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    const-string p2, "url"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance p2, Lyads/tf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->fa:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l56;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/k56;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "value"

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyads/k56;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/tf2;-><init>(Lyads/k56;)V

    return-object p2

    :sswitch_6
    move-object v8, v2

    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v8

    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lyads/sf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vr5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ur5;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    invoke-static {v2, v3, p2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/ur5;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/sf2;-><init>(Lyads/ur5;)V

    return-object v0

    :sswitch_7
    move-object v2, p1

    move-object v3, p2

    const-string p1, "property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lyads/rf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g25;

    invoke-virtual {p0, v2, v3}, Lyads/g25;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/f25;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/rf2;-><init>(Lyads/f25;)V

    return-object p1

    :sswitch_8
    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    const-string p2, "number"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    :goto_1
    invoke-interface {v2}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_a

    instance-of p2, p1, Lyads/lg2;

    if-eqz p2, :cond_8

    check-cast p1, Lyads/lg2;

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_9

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bg2;

    invoke-virtual {p0, v2, p1, v3}, Lyads/bg2;->a(Lyads/ys4;Lyads/lg2;Lorg/json/JSONObject;)Lyads/uf2;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "type"

    invoke-static {v3, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_a
    invoke-static {v0, v3}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_b
    new-instance p2, Lyads/qf2;

    iget-object p0, p0, Lyads/zf2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zo4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/yo4;

    invoke-static {p1, v3}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "value"

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyads/yo4;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/qf2;-><init>(Lyads/yo4;)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        -0x3b32222b -> :sswitch_7
        -0x352a9fef -> :sswitch_6
        0x1c56f -> :sswitch_5
        0x2f0bb6 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method
