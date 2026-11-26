.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->setFavouriteCoupon(JZ)V
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
.field public final synthetic f:Z

.field public final synthetic g:J

.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;


# direct methods
.method public constructor <init>(ZJLcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->f:Z

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->g:J

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->h:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->g:J

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->f:Z

    if-eqz v2, :cond_0

    new-instance v3, Lkd$e$b$b;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Lkd$e$b$b;-><init>(I)V

    invoke-virtual {v3}, Lkd;->a()V

    new-instance v1, Lmd;

    invoke-direct {v1, v0}, Lmd;-><init>(I)V

    invoke-virtual {v1}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance v3, Lkd$e$b$f;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Lkd$e$b$f;-><init>(I)V

    invoke-virtual {v3}, Lkd;->a()V

    new-instance v1, Ltd;

    invoke-direct {v1, v0}, Ltd;-><init>(I)V

    invoke-virtual {v1}, Lkd;->a()V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;->h:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showFavoriteStatus(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-interface {p0, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showFavoriteStatusIsChanged(ZZ)V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
