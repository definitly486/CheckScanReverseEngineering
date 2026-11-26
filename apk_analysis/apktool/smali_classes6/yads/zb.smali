.class public final Lyads/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w0;


# instance fields
.field public final a:Lyads/sc;

.field public final b:Lyads/rn1;

.field public final c:Lyads/ea;

.field public final d:Lyads/l00;


# direct methods
.method public constructor <init>(Lyads/sc;Lyads/rn1;Lyads/ea;Lyads/l00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zb;->a:Lyads/sc;

    iput-object p2, p0, Lyads/zb;->b:Lyads/rn1;

    iput-object p3, p0, Lyads/zb;->c:Lyads/ea;

    iput-object p4, p0, Lyads/zb;->d:Lyads/l00;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/u0;Lyads/c1;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Lyads/rp;

    invoke-interface {p2}, Lyads/rp;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lyads/zb;->c:Lyads/ea;

    sget-object v2, Lyads/i16;->b:Lyads/i16;

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v1, v0, v2, v3, v4}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lyads/yb;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lyads/zb;->a:Lyads/sc;

    check-cast p2, Lyads/yb;

    invoke-virtual {p3, p1, p2}, Lyads/sc;->a(Landroid/view/View;Lyads/yb;)V

    goto :goto_1

    :cond_1
    instance-of p3, p2, Lyads/nn1;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lyads/zb;->b:Lyads/rn1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Lyads/nn1;

    invoke-static {}, Lcom/monetization/ads/core/divkit/DivKitFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lyads/rn1;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p3, Lyads/rn1;->b:Lyads/qn1;

    invoke-virtual {v0, p1, p2}, Lyads/qn1;->a(Landroid/content/Context;Lyads/nn1;)Lyads/vq0;

    move-result-object p1

    invoke-virtual {p3, p1}, Lyads/rn1;->a(Lyads/vq0;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lyads/zb;->d:Lyads/l00;

    sget-object p1, Lyads/e75;->i:Lyads/e75;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lyads/l00;->a(Lyads/e75;Ljava/util/Map;)Lyads/g75;

    move-result-object p1

    iget-object p0, p0, Lyads/l00;->d:Lyads/q84;

    invoke-virtual {p0, p1}, Lyads/q84;->a(Lyads/g75;)V

    new-instance p0, Lyads/m83;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lyads/m83;-><init>(Z)V

    return-object p0
.end method
