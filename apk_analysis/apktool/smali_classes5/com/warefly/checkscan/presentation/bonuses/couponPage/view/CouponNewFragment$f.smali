.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;
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

.field public final synthetic g:Lb54;

.field public final synthetic h:Lm32;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lb54;Lm32;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->g:Lb54;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->h:Lm32;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->g:Lb54;

    iget-object v1, v0, Lb54;->a:Ljava/lang/String;

    iget-object v0, v0, Lb54;->b:Lc42;

    if-nez v0, :cond_0

    sget-object v0, Lc42;->PROMOCODE:Lc42;

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;->h:Lm32;

    iget-object p0, p0, Lm32;->f:Lj32;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lj32;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->onCopyClick(Ljava/lang/String;Lc42;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
