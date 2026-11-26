.class public final Lyads/t61;
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

    iput-object p1, p0, Lyads/t61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p2, Lyads/v61;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t61;->a(Lyads/ys4;Lyads/v61;Lorg/json/JSONObject;)Lyads/q61;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/v61;Lorg/json/JSONObject;)Lyads/q61;
    .locals 7

    new-instance v0, Lyads/q61;

    iget-object v2, p2, Lyads/v61;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "background_color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/v61;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/t61;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->x3:Lcl4;

    iget-object v6, p3, Lyads/tq3;->v3:Lcl4;

    const-string v4, "radius"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/af1;

    if-nez p3, :cond_0

    sget-object p3, Lyads/u61;->a:Lyads/af1;

    :cond_0
    iget-object v2, p2, Lyads/v61;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/t61;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->F7:Lcl4;

    iget-object v6, p0, Lyads/tq3;->D7:Lcl4;

    const-string v4, "stroke"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v0, p1, p3, p0}, Lyads/q61;-><init>(Lyads/as2;Lyads/af1;Lyads/l42;)V

    return-object v0
.end method
