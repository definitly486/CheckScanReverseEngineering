.class public abstract Lcom/monetization/ads/mediation/appopenad/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/s03;Lyads/m24;Lyads/q74;)Lcom/monetization/ads/mediation/appopenad/a;
    .locals 1

    .line 60
    new-instance v0, Lcom/monetization/ads/mediation/appopenad/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/monetization/ads/mediation/appopenad/a;-><init>(Lyads/s03;Lyads/m24;Lyads/q74;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lyads/dh;Lyads/d9;Lyads/o54;Lyads/dp;)Lcom/monetization/ads/mediation/appopenad/b;
    .locals 10

    iget-object v2, p4, Lyads/dp;->b:Lyads/e4;

    iget-object v3, p4, Lyads/dp;->c:Lyads/bf5;

    new-instance v6, Lyads/v34;

    invoke-direct {v6, v2}, Lyads/v34;-><init>(Lyads/e4;)V

    new-instance v7, Lyads/l34;

    invoke-direct {v7, v2, v3, p2}, Lyads/l34;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance v4, Lyads/x24;

    iget-object v5, p3, Lyads/o54;->b:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-direct/range {v4 .. v9}, Lyads/x24;-><init>(Ljava/util/ArrayList;Lyads/v34;Lyads/l34;Lyads/f34;I)V

    new-instance v8, Lyads/m34;

    invoke-direct {v8, v4}, Lyads/m34;-><init>(Lyads/x24;)V

    iget-object v5, p4, Lyads/dp;->a:Lyads/t5;

    new-instance v9, Lyads/mt4;

    invoke-direct {v9, p1, p3}, Lyads/mt4;-><init>(Lyads/pp;Lyads/o54;)V

    new-instance v6, Lcom/monetization/ads/mediation/appopenad/d;

    invoke-direct {v6}, Lcom/monetization/ads/mediation/appopenad/d;-><init>()V

    new-instance v0, Lyads/m24;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lyads/m24;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/t5;Lyads/v24;Lyads/l34;Lyads/n24;Lyads/mt4;)V

    new-instance p0, Lag1;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v0}, Lag1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/monetization/ads/mediation/appopenad/b;

    invoke-direct {p1, v0, v6, p0, v7}, Lcom/monetization/ads/mediation/appopenad/b;-><init>(Lyads/m24;Lcom/monetization/ads/mediation/appopenad/d;Lnl3;Lyads/l34;)V

    return-object p1
.end method
