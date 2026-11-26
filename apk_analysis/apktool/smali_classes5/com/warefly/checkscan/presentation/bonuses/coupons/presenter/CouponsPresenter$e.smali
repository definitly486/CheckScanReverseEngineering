.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->setFavouriteCoupon(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;->g:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;->g:Z

    invoke-interface {v1, v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;->showFavoriteStatusIsChanged(ZZ)V

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->loadCoupons()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
