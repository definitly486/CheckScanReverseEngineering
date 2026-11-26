.class public final Lex3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$m<",
        "Lyw3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex3;->a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Ljava/util/List;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lex3;->a:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->setHotItemsInfo(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 0

    return-void
.end method

.method public final h(Z)V
    .locals 0

    return-void
.end method
