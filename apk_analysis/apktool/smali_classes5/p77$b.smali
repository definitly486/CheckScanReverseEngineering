.class public final Lp77$b;
.super Ly14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp77;->b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lc31;

.field public final synthetic p:Lp77;

.field public final synthetic q:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic r:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc31;Lp77;Lnl3;Lll3;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp77$b;->o:Lc31;

    iput-object p2, p0, Lp77$b;->p:Lp77;

    iput-object p3, p0, Lp77$b;->q:Lnl3;

    iput-object p4, p0, Lp77$b;->r:Lll3;

    iput-object p5, p0, Lp77$b;->s:Lll3;

    return-void
.end method


# virtual methods
.method public final onAdDismissed()V
    .locals 2

    iget-object v0, p0, Lp77$b;->p:Lp77;

    iget-boolean v1, v0, Lp77;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lp77$b;->q:Lnl3;

    const-string v1, "YANDEX"

    invoke-interface {p0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp77$b;->r:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    iput-object p0, v0, Lp77;->b:Lcom/yandex/mobile/ads/rewarded/RewardedAdLoader;

    iget-object v1, v0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/yandex/mobile/ads/rewarded/RewardedAd;->setAdEventListener(Lcom/yandex/mobile/ads/rewarded/RewardedAdEventListener;)V

    :cond_1
    iput-object p0, v0, Lp77;->a:Lcom/yandex/mobile/ads/rewarded/RewardedAd;

    return-void
.end method

.method public final onAdFailedToShow(Lcom/yandex/mobile/ads/common/AdError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lp77$b;->o:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAdShown()V
    .locals 1

    iget-object v0, p0, Lp77$b;->s:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lp77$b;->o:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onRewarded(Lcom/yandex/mobile/ads/rewarded/Reward;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lp77$b;->p:Lp77;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp77;->c:Z

    return-void
.end method
