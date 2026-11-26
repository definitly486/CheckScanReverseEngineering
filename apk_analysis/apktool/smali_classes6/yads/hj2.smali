.class public final Lyads/hj2;
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

    iput-object p1, p0, Lyads/hj2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/ij2;

    new-instance v0, Lyads/ej2;

    iget-object v2, p2, Lyads/ij2;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    const-string v4, "constrained"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/ij2;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/hj2;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->S6:Lcl4;

    iget-object v6, p3, Lyads/tq3;->Q6:Lcl4;

    const-string v4, "max_size"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/h12;

    iget-object v2, p2, Lyads/ij2;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/hj2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->S6:Lcl4;

    iget-object v6, p0, Lyads/tq3;->Q6:Lcl4;

    const-string v4, "min_size"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    invoke-direct {v0, p3, p0, p1}, Lyads/ej2;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    return-object v0
.end method
