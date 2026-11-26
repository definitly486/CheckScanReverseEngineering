.class public final Lyads/xd1;
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

    iput-object p1, p0, Lyads/xd1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blur"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/ud1;

    iget-object p0, p0, Lyads/xd1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/a51;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/z41;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/d51;->a:Lyads/l66;

    const-string v3, "radius"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/z41;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/ud1;-><init>(Lyads/z41;)V

    return-object v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    const-string p1, "rtl_mirror"

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lyads/vd1;

    iget-object p0, p0, Lyads/xd1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/be1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ae1;

    invoke-direct {p0}, Lyads/ae1;-><init>()V

    invoke-direct {p1, p0}, Lyads/vd1;-><init>(Lyads/ae1;)V

    return-object p1

    :cond_1
    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p2, p1, Lyads/he1;

    if-eqz p2, :cond_2

    check-cast p1, Lyads/he1;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/xd1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zd1;

    invoke-virtual {p0, v1, p1, v2}, Lyads/zd1;->a(Lyads/ys4;Lyads/he1;Lorg/json/JSONObject;)Lyads/wd1;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
