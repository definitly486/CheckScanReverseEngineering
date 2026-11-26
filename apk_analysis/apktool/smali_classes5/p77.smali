.class public final Lp77;
.super Ld8;
.source "SourceFile"


# instance fields
.field public a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

.field public b:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

.field public c:Z


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lp77;->b:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->cancelLoading()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp77;->b:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    iget-object v1, p0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/rewarded/RewardedAd;->setAdEventListener(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V

    :cond_1
    iput-object v0, p0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    return-void
.end method

.method public final b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p5

    instance-of v3, v1, Lp77$a;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lp77$a;

    iget v4, v3, Lp77$a;->r:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lp77$a;->r:I

    goto :goto_0

    :cond_0
    new-instance v3, Lp77$a;

    check-cast v1, Lf02;

    invoke-direct {v3, p0, v1}, Lp77$a;-><init>(Lp77;Lf02;)V

    :goto_0
    iget-object v1, v3, Lp77$a;->p:Ljava/lang/Object;

    sget-object v6, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v3, Lp77$a;->r:I

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v3, Lp77$a;->o:Lll3;

    check-cast v0, Lll3;

    iget-object v0, v3, Lp77$a;->n:Lll3;

    check-cast v0, Lll3;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, v3, Lp77$a;->o:Lll3;

    check-cast v0, Lll3;

    iget-object v4, v3, Lp77$a;->n:Lll3;

    check-cast v4, Lll3;

    iget-object v8, v3, Lp77$a;->m:Lnl3;

    iget-object v9, v3, Lp77$a;->l:Landroid/app/Activity;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lp77;->b:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    new-instance v4, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    const-string v8, "R-M-16692974-2"

    invoke-direct {v4, v8}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v4

    iput-object p1, v3, Lp77$a;->l:Landroid/app/Activity;

    iput-object p2, v3, Lp77$a;->m:Lnl3;

    move-object v9, p3

    check-cast v9, Lll3;

    iput-object v9, v3, Lp77$a;->n:Lll3;

    move-object v9, p4

    check-cast v9, Lll3;

    iput-object v9, v3, Lp77$a;->o:Lll3;

    iput v7, v3, Lp77$a;->r:I

    invoke-virtual {v1, v4, v3}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p1

    move-object v8, p2

    move-object v4, p3

    move-object v0, p4

    :goto_1
    check-cast v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult;

    instance-of v10, v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;

    if-eqz v10, :cond_8

    iput-object v9, v3, Lp77$a;->l:Landroid/app/Activity;

    iput-object v8, v3, Lp77$a;->m:Lnl3;

    move-object v10, v4

    check-cast v10, Lll3;

    iput-object v10, v3, Lp77$a;->n:Lll3;

    move-object v10, v0

    check-cast v10, Lll3;

    iput-object v10, v3, Lp77$a;->o:Lll3;

    check-cast v1, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;

    iput v5, v3, Lp77$a;->r:I

    move-object v5, v1

    new-instance v1, Lc31;

    invoke-static {v3}, Lzya;->b(Le02;)Le02;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v1}, Lc31;->u()V

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/rewarded/RewardedAdLoadResult$Success;->getAd()Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    move-result-object v7

    iput-object v7, p0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    if-eqz v7, :cond_5

    move-object v5, v4

    move-object v4, v0

    new-instance v0, Lp77$b;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lp77$b;-><init>(Lc31;Lp77;Lnl3;Lll3;Lll3;)V

    invoke-interface {v7, v0}, Lcom/yandex/mobile/ads/rewarded/RewardedAd;->setAdEventListener(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V

    :cond_5
    iget-object v0, p0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_6

    invoke-interface {v0, v9}, Lcom/yandex/mobile/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;)V

    :cond_6
    new-instance v0, Lp77$c;

    invoke-direct {v0, p0}, Lp77$c;-><init>(Lp77;)V

    invoke-virtual {v1, v0}, Lc31;->n(Lnl3;)V

    invoke-virtual {v1}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_7

    :goto_2
    return-object v6

    :cond_7
    return-object v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
