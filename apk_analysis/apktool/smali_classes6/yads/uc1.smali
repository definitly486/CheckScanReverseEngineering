.class public final Lyads/uc1;
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

    iput-object p1, p0, Lyads/uc1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shape_drawable"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/tc1;

    iget-object p0, p0, Lyads/uc1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h02;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/g02;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "color"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    move-object v4, v3

    iget-object p2, p0, Lyads/h02;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->N6:Lcl4;

    const-string v3, "shape"

    invoke-static {v2, v4, v3, p2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/f02;

    iget-object p0, p0, Lyads/h02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string v3, "stroke"

    invoke-static {v2, v4, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v1, p1, p2, p0}, Lyads/g02;-><init>(Lyads/as2;Lyads/f02;Lyads/l42;)V

    invoke-direct {v0, v1}, Lyads/tc1;-><init>(Lyads/g02;)V

    return-object v0

    :cond_0
    move-object v2, p1

    move-object v4, p2

    invoke-interface {v2}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Lyads/xc1;

    if-eqz p2, :cond_1

    check-cast p1, Lyads/xc1;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lyads/uc1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wc1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lyads/tc1;

    iget-object p0, p0, Lyads/wc1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/j02;

    iget-object p1, p1, Lyads/xc1;->a:Lyads/k02;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/g02;

    iget-object v3, p1, Lyads/k02;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    const-string v5, "color"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v3, p1, Lyads/k02;->b:Lyads/zw2;

    iget-object v5, p0, Lyads/j02;->a:Lyads/tq3;

    iget-object v6, v5, Lyads/tq3;->P6:Lcl4;

    iget-object v7, v5, Lyads/tq3;->N6:Lcl4;

    const-string v5, "shape"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lyads/f02;

    iget-object v3, p1, Lyads/k02;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/j02;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->F7:Lcl4;

    iget-object v7, p0, Lyads/tq3;->D7:Lcl4;

    const-string v5, "stroke"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v0, v1, v8, p0}, Lyads/g02;-><init>(Lyads/as2;Lyads/f02;Lyads/l42;)V

    invoke-direct {p2, v0}, Lyads/tc1;-><init>(Lyads/g02;)V

    return-object p2

    :cond_2
    const-string p0, "type"

    invoke-static {v4, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0, v4}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
