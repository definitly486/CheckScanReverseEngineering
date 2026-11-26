.class public final Lyads/l02;
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

    iput-object p1, p0, Lyads/l02;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rounded_rectangle"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/e02;

    iget-object p0, p0, Lyads/l02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hy1;

    invoke-virtual {p0, p1, p2}, Lyads/hy1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gy1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/e02;-><init>(Lyads/gy1;)V

    return-object v0

    :cond_0
    const-string v1, "circle"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lyads/d02;

    iget-object p0, p0, Lyads/l02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/r61;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/q61;

    sget-object v2, Lyads/w36;->f:Lyads/p36;

    sget-object v3, Lyads/bt4;->a:Lnl3;

    const-string v4, "background_color"

    invoke-static {p1, p2, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v2

    iget-object v3, p0, Lyads/r61;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->v3:Lcl4;

    const-string v4, "radius"

    invoke-static {p1, p2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/af1;

    if-nez v3, :cond_1

    sget-object v3, Lyads/u61;->a:Lyads/af1;

    :cond_1
    iget-object p0, p0, Lyads/r61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string v4, "stroke"

    invoke-static {p1, p2, v4, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v1, v2, v3, p0}, Lyads/q61;-><init>(Lyads/as2;Lyads/af1;Lyads/l42;)V

    invoke-direct {v0, v1}, Lyads/d02;-><init>(Lyads/q61;)V

    return-object v0

    :cond_2
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v2, v1, Lyads/q02;

    if-eqz v2, :cond_3

    check-cast v1, Lyads/q02;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object p0, p0, Lyads/l02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->P6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n02;

    invoke-virtual {p0, p1, v1, p2}, Lyads/n02;->a(Lyads/ys4;Lyads/q02;Lorg/json/JSONObject;)Lyads/f02;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
