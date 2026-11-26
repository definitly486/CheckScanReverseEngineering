.class public final Lyads/hj1;
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

    iput-object p1, p0, Lyads/hj1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lyads/ej1;

    iget-object p0, p0, Lyads/hj1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vb1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/ub1;

    iget-object p0, p0, Lyads/vb1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    const-string v2, "space_between_centers"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_0

    sget-object p0, Lyads/yb1;->a:Lyads/af1;

    :cond_0
    invoke-direct {v1, p0}, Lyads/ub1;-><init>(Lyads/af1;)V

    invoke-direct {v0, v1}, Lyads/ej1;-><init>(Lyads/ub1;)V

    return-object v0

    :cond_1
    const-string v1, "stretch"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lyads/fj1;

    iget-object p0, p0, Lyads/hj1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/f42;

    iget-object p0, p0, Lyads/g42;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    const-string v2, "item_spacing"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_2

    sget-object p0, Lyads/j42;->a:Lyads/af1;

    :cond_2
    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/j42;->c:Lyads/l66;

    sget-object v8, Lyads/j42;->b:Lyads/xr2;

    const-string v4, "max_visible_items"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v8, p1

    :goto_0
    invoke-direct {v1, p0, v8}, Lyads/f42;-><init>(Lyads/af1;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/fj1;-><init>(Lyads/f42;)V

    return-object v0

    :cond_4
    move-object v2, p1

    move-object v3, p2

    invoke-interface {v2}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of p2, p1, Lyads/mj1;

    if-eqz p2, :cond_5

    check-cast p1, Lyads/mj1;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/hj1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->b4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jj1;

    invoke-virtual {p0, v2, p1, v3}, Lyads/jj1;->a(Lyads/ys4;Lyads/mj1;Lorg/json/JSONObject;)Lyads/gj1;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "type"

    invoke-static {v3, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {v0, v3}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
