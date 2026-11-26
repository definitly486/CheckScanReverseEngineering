.class public final Lyads/hx0;
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

    iput-object p1, p0, Lyads/hx0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/kx0;

    new-instance v0, Lyads/xw0;

    iget-object v2, p2, Lyads/kx0;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/hx0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->X0:Lcl4;

    iget-object v6, p0, Lyads/tq3;->V0:Lcl4;

    const-string v4, "headers"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    iget-object v2, p2, Lyads/kx0;->b:Lyads/zw2;

    sget-object v5, Lyads/ix0;->b:Lyads/m36;

    sget-object v6, Lyads/ww0;->d:Lnl3;

    sget-object v7, Lyads/ix0;->a:Lyads/xr2;

    const-string v4, "method"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    iget-object v2, p2, Lyads/kx0;->c:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, p0, v7, p1}, Lyads/xw0;-><init>(Ljava/util/List;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
