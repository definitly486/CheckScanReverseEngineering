.class public final Lyads/y02;
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

    iput-object p1, p0, Lyads/y02;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5cee774

    if-eq v1, v2, :cond_4

    const v2, 0x1476c184

    const-string v3, "min_size"

    const-string v4, "max_size"

    if-eq v1, v2, :cond_2

    const v2, 0x529e9464

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "match_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lyads/v02;

    iget-object p0, p0, Lyads/y02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->S4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qp1;

    new-instance v1, Lyads/pp1;

    iget-object v2, p0, Lyads/qp1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->Q6:Lcl4;

    invoke-static {p1, p2, v4, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/h12;

    iget-object p0, p0, Lyads/qp1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q6:Lcl4;

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    sget-object v6, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/tp1;->a:Lyads/l66;

    const/4 v9, 0x0

    const-string v5, "weight"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, v2, p0, p1}, Lyads/pp1;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/v02;-><init>(Lyads/pp1;)V

    return-object v0

    :cond_2
    const-string v1, "wrap_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lyads/w02;

    iget-object p0, p0, Lyads/y02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fj2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/ej2;

    sget-object v2, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    const-string v6, "constrained"

    invoke-static {p1, p2, v6, v2, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v2

    iget-object v5, p0, Lyads/fj2;->a:Lyads/tq3;

    iget-object v5, v5, Lyads/tq3;->Q6:Lcl4;

    invoke-static {p1, p2, v4, v5}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/h12;

    iget-object p0, p0, Lyads/fj2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q6:Lcl4;

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    invoke-direct {v1, v4, p0, v2}, Lyads/ej2;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    return-object v0

    :cond_4
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_0
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v2, v1, Lyads/e12;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/e12;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget-object p0, p0, Lyads/y02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->V6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/a12;

    invoke-virtual {p0, p1, v1, p2}, Lyads/a12;->a(Lyads/ys4;Lyads/e12;Lorg/json/JSONObject;)Lyads/x02;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_8
    new-instance v0, Lyads/u02;

    iget-object p0, p0, Lyads/y02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bf1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/bf1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/u02;-><init>(Lyads/af1;)V

    return-object v0
.end method
