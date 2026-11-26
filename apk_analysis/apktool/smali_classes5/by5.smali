.class public final synthetic Lby5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liv7;
.implements Lmm3;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby5;->b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Liv7;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmm3;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lby5;->getFunctionDelegate()Lcm3;

    move-result-object p0

    check-cast p1, Lmm3;

    invoke-interface {p1}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFunctionDelegate()Lcm3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm3<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lqm3;

    const-string v5, "onMorePromocodesClicked()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lby5;->b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-string v4, "onMorePromocodesClicked"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lby5;->getFunctionDelegate()Lcm3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onMoreClick()V
    .locals 0

    iget-object p0, p0, Lby5;->b:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->onMorePromocodesClicked()V

    return-void
.end method
