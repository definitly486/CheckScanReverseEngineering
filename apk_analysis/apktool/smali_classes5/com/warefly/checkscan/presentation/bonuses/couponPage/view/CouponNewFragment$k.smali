.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->showPromocodeCopied(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->d:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->promoCodeShowed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->d:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;->tvPromocode:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
