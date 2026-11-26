.class public final Lyads/wc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wc1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/xc1;

    if-eqz p2, :cond_0

    new-instance v0, Lyads/tc1;

    iget-object p0, p0, Lyads/wc1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/j02;

    iget-object p2, p2, Lyads/xc1;->a:Lyads/k02;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/g02;

    iget-object v3, p2, Lyads/k02;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    const-string v5, "color"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v3, p2, Lyads/k02;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/j02;->a:Lyads/tq3;

    iget-object v6, p3, Lyads/tq3;->P6:Lcl4;

    iget-object v7, p3, Lyads/tq3;->N6:Lcl4;

    const-string v5, "shape"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/f02;

    iget-object v3, p2, Lyads/k02;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/j02;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->F7:Lcl4;

    iget-object v7, p0, Lyads/tq3;->D7:Lcl4;

    const-string v5, "stroke"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v1, p1, p3, p0}, Lyads/g02;-><init>(Lyads/as2;Lyads/f02;Lyads/l42;)V

    invoke-direct {v0, v1}, Lyads/tc1;-><init>(Lyads/g02;)V

    return-object v0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
