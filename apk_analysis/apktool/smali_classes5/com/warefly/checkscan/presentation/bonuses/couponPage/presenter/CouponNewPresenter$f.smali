.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadCouponInfo()V
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

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$f;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm32;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$f;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->access$applyCouponInfo(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Lm32;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
