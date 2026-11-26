.class public final synthetic Lyads/xl0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# direct methods
.method public constructor <init>(Lyads/n13;)V
    .locals 7

    const-string v5, "preload(Lcom/monetization/ads/common/AdRequestData;Lcom/monetization/ads/fullscreen/cache/FullscreenFormat;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lyads/n13;

    const-string v4, "preload"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v2, p1

    check-cast v2, Lyads/n8;

    move-object v3, p2

    check-cast v3, Lyads/g13;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lyads/n13;

    iget-object p0, v1, Lyads/n13;->b:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lyads/ar;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lyads/n13;->a:Ly22;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    new-instance v0, Lyads/m13;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lyads/m13;-><init>(Lyads/n13;Lyads/n8;Lyads/g13;Lyads/ar;Le02;)V

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
