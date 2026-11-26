.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->setCouponInfo(Lm32;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

.field public final synthetic g:Lm32;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lm32;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;->g:Lm32;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;->g:Lm32;

    iget-object p0, p0, Lm32;->f:Lj32;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lj32;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->onOpenUrl(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
