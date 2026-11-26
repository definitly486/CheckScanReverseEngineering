.class public final Lyads/zy4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/fz4;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/sl5;

.field public final synthetic f:Lyads/x54;

.field public final synthetic g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;


# direct methods
.method public constructor <init>(Lyads/fz4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/zy4;->c:Lyads/fz4;

    iput-object p2, p0, Lyads/zy4;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/zy4;->e:Lyads/sl5;

    iput-object p4, p0, Lyads/zy4;->f:Lyads/x54;

    iput-object p5, p0, Lyads/zy4;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7

    new-instance v0, Lyads/zy4;

    iget-object v1, p0, Lyads/zy4;->c:Lyads/fz4;

    iget-object v2, p0, Lyads/zy4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/zy4;->e:Lyads/sl5;

    iget-object v4, p0, Lyads/zy4;->f:Lyads/x54;

    iget-object v5, p0, Lyads/zy4;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/zy4;-><init>(Lyads/fz4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/zy4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/zy4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/zy4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zy4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/zy4;->c:Lyads/fz4;

    iget-object p1, p1, Lyads/fz4;->d:Lyads/uy4;

    iget-object v1, p0, Lyads/zy4;->d:Landroid/content/Context;

    iget-object v4, p0, Lyads/zy4;->e:Lyads/sl5;

    iget-object v5, p0, Lyads/zy4;->f:Lyads/x54;

    iget-object v6, p0, Lyads/zy4;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    iput v3, p0, Lyads/zy4;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v7, v3, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v7}, Lc31;->u()V

    :try_start_0
    invoke-static {}, Lyads/s1;->a()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2

    move-object v1, p0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    iget-object v3, v5, Lyads/x54;->c:Ljava/util/Map;

    invoke-direct {p0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz v4, :cond_3

    const-string v3, "width"

    invoke-interface {v4}, Lyads/sl5;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "height"

    invoke-interface {v4}, Lyads/sl5;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v3, Lyads/ty4;

    invoke-direct {v3, p1, v5, v7}, Lyads/ty4;-><init>(Lyads/uy4;Lyads/x54;Lc31;)V

    invoke-interface {v6, v1, p0, v3}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->prefetchAd(Landroid/content/Context;Ljava/util/Map;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v7}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_7

    invoke-interface {v6}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    move-object v2, p0

    :cond_4
    if-nez v2, :cond_6

    :cond_5
    const-string v2, "Prefetch failed with exception"

    :cond_6
    iget-object p0, v5, Lyads/x54;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/Integer;

    const/16 v1, 0x3ec

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v2, p1}, Lyads/ry4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lyads/qy4;

    move-result-object p0

    invoke-virtual {v7, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-virtual {v7}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    return-object p0
.end method
