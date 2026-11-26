.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$m;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadRequestInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lm32;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$m;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lm32;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$m;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->access$applyCouponInfo(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Lm32;)V

    iget-object v0, p1, Lm32;->h:Lb54;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lb54;->a:Ljava/lang/String;

    iget-object v0, v0, Lb54;->b:Lc42;

    if-nez v0, :cond_0

    sget-object v0, Lc42;->PROMOCODE:Lc42;

    :cond_0
    iget-object p1, p1, Lm32;->f:Lj32;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lj32;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v1, v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->access$revealCode(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Ljava/lang/String;Lc42;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
