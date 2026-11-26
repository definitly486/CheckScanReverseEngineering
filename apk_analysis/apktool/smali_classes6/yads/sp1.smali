.class public final Lyads/sp1;
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

    iput-object p1, p0, Lyads/sp1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Lyads/up1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/sp1;->a(Lyads/ys4;Lyads/up1;Lorg/json/JSONObject;)Lyads/pp1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/up1;Lorg/json/JSONObject;)Lyads/pp1;
    .locals 8

    new-instance v0, Lyads/pp1;

    iget-object v2, p2, Lyads/up1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/sp1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->S6:Lcl4;

    iget-object v6, v1, Lyads/tq3;->Q6:Lcl4;

    const-string v4, "max_size"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/h12;

    iget-object v2, p2, Lyads/up1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/sp1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->S6:Lcl4;

    iget-object v6, p0, Lyads/tq3;->Q6:Lcl4;

    const-string v4, "min_size"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    iget-object v2, p2, Lyads/up1;->c:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/tp1;->a:Lyads/l66;

    const-string v4, "weight"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {v0, p1, p0, p2}, Lyads/pp1;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    return-object v0
.end method
