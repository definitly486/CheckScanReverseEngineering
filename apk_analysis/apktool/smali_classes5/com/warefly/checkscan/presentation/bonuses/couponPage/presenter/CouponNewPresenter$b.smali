.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->initHotsPaginator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lmz7<",
        "Ljava/util/List<",
        "+",
        "Lyw3;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->access$getCouponsInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)Lq42;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->access$getCouponId$p(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)J

    move-result-wide v1

    iget-object p0, v0, Lq42;->a:Lt42;

    invoke-interface {p0, p1, v1, v2}, Lt42;->e(IJ)Lp08;

    move-result-object p0

    new-instance p1, Lp42;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lp42;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp5;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lp5;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {p1, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
