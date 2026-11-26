.class public final Lcom/monetization/ads/mediation/appopenad/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o03;


# instance fields
.field public final a:Lyads/m24;

.field public final b:Lcom/monetization/ads/mediation/appopenad/d;

.field public final c:Lnl3;

.field public final d:Lyads/l34;

.field public e:Lcom/monetization/ads/mediation/appopenad/a;


# direct methods
.method public constructor <init>(Lyads/m24;Lcom/monetization/ads/mediation/appopenad/d;Lnl3;Lyads/l34;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lyads/m24;

    iput-object p2, p0, Lcom/monetization/ads/mediation/appopenad/b;->b:Lcom/monetization/ads/mediation/appopenad/d;

    iput-object p3, p0, Lcom/monetization/ads/mediation/appopenad/b;->c:Lnl3;

    iput-object p4, p0, Lcom/monetization/ads/mediation/appopenad/b;->d:Lyads/l34;

    return-void
.end method

.method public static final a(Lcom/monetization/ads/mediation/appopenad/b;Lyads/q74;)Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/monetization/ads/mediation/appopenad/b;->c:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/monetization/ads/mediation/appopenad/a;

    iput-object v0, p0, Lcom/monetization/ads/mediation/appopenad/b;->e:Lcom/monetization/ads/mediation/appopenad/a;

    check-cast p1, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;

    return-object p1
.end method


# virtual methods
.method public final a(Lyads/d13;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/monetization/ads/mediation/appopenad/b;->b:Lcom/monetization/ads/mediation/appopenad/d;

    iget-object v0, v0, Lcom/monetization/ads/mediation/appopenad/d;->a:Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/monetization/ads/mediation/appopenad/b;->e:Lcom/monetization/ads/mediation/appopenad/a;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/monetization/ads/mediation/appopenad/a;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lyads/m24;

    invoke-virtual {p1}, Lyads/m24;->a()V

    invoke-virtual {v0, p2}, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;->showAppOpenAd(Landroid/app/Activity;)V

    :cond_1
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lyads/m24;

    iget-object v1, v1, Lyads/m24;->a:Lyads/l24;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "exception_in_adapter"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "reason"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/monetization/ads/mediation/appopenad/b;->d:Lyads/l34;

    iget-object v5, v1, Lyads/l24;->b:Lyads/x54;

    iget-object p0, v1, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lyads/e75;->e:Lyads/e75;

    invoke-virtual/range {v2 .. v7}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lyads/m24;

    .line 101
    iget-object p0, p0, Lyads/m24;->c:Lyads/w74;

    .line 102
    invoke-virtual {p0, p1}, Lyads/w74;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;)V
    .locals 2

    .line 96
    iget-object p2, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lyads/m24;

    new-instance v0, Lca2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lca2;-><init>(Ljava/lang/Object;I)V

    .line 97
    iget-object p0, p2, Lyads/m24;->c:Lyads/w74;

    .line 98
    invoke-virtual {p0, p1, v0}, Lyads/w74;->a(Landroid/content/Context;Lnl3;)V

    return-void
.end method
