.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;",
        ">;"
    }
.end annotation


# instance fields
.field private final couponId:J

.field private final couponsInteractor:Lq42;

.field private hotsPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lyw3;",
            ">;"
        }
    .end annotation
.end field

.field private promoCodeShowed:Z

.field private final repository:Ljf6;

.field private final router:Luf3;


# direct methods
.method public constructor <init>(JLq42;Luf3;Ljf6;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->router:Luf3;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->repository:Ljf6;

    return-void
.end method

.method public static final synthetic access$applyCouponInfo(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Lm32;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->applyCouponInfo(Lm32;)V

    return-void
.end method

.method public static final synthetic access$getCouponId$p(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    return-wide v0
.end method

.method public static final synthetic access$getCouponsInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)Lq42;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    return-object p0
.end method

.method public static final synthetic access$revealCode(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Ljava/lang/String;Lc42;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->revealCode(Ljava/lang/String;Lc42;Ljava/lang/String;)V

    return-void
.end method

.method private final applyCouponInfo(Lm32;)V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->setCouponInfo(Lm32;)V

    :cond_0
    iget-object v0, p1, Lm32;->h:Lb54;

    iget-object p1, p1, Lm32;->h:Lb54;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lb54;->b:Lc42;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lb54;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showImageCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lb54;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showQrCode(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lb54;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showBarCode(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lb54;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showPromocode(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lb54;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showPromocode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadRequestInfo$lambda$4(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$k;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadRequestInfo$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadCouponInfo$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadCouponInfo$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final loadCouponInfo()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    iget-object v3, v0, Lq42;->a:Lt42;

    invoke-interface {v3, v1, v2}, Lt42;->b(J)Lmz7;

    move-result-object v1

    new-instance v2, Lo42;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lo42;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lvd0;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lvd0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v2, Lpp;

    invoke-direct {v2, v1, v3}, Lpp;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lx32;

    invoke-direct {v0, p0}, Lx32;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$e;

    invoke-static {v2, v1, v0}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadCouponInfo$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadCouponInfo$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final loadDescription()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    iget-object v0, v0, Lq42;->a:Lt42;

    invoke-interface {v0, v1, v2}, Lt42;->a(J)Lmz7;

    move-result-object v0

    sget-object v1, Luf1;->h:Luf1;

    new-instance v2, Lo5;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lo5;-><init>(Lnl3;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$h;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$g;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$g;

    invoke-static {v0, v2, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadOnlineShopSteps()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    iget-object v0, v0, Lq42;->a:Lt42;

    invoke-interface {v0, v1, v2}, Lt42;->d(J)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$i;->f:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$i;

    invoke-static {v0, v2, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadRequestInfo()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    iget-object v3, v0, Lq42;->a:Lt42;

    invoke-interface {v3, v1, v2}, Lt42;->c(J)Lmz7;

    move-result-object v1

    new-instance v2, Lvf1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lvf1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lud0;

    invoke-direct {v0, v2}, Lud0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$k;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v2, Lv32;

    invoke-direct {v2, v1}, Lv32;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$k;)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lw32;

    invoke-direct {v0, p0}, Lw32;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$l;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$m;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$m;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadRequestInfo$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadRequestInfo$lambda$4(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showActionButtonLoading(Z)V

    :cond_0
    return-void
.end method

.method private final revealCode(Ljava/lang/String;Lc42;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lc42;->PROMOCODE:Lc42;

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->promoCodeShowed:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->promoCodeShowed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showPromocodeCopied(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->copyCode(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->openCouponUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final sendButtonClickedEvents()V
    .locals 5

    new-instance v0, Lkd$e$b$a;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int v1, v1

    const-string v2, "Button"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$e$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lld;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int p0, v3

    invoke-direct {v0, p0, v2}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    return-void
.end method


# virtual methods
.method public final initHotsPaginator()V
    .locals 4

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    new-instance v2, Lex3;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    invoke-direct {v2, v3}, Lex3;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->hotsPaginator:Ls26;

    invoke-virtual {v0}, Ls26;->c()V

    return-void
.end method

.method public final loadNextHots()Lj59;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->hotsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAdultConfirmedClick()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->repository:Ljf6;

    invoke-interface {v0}, Ljf6;->k()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->hotsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->c()V

    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->router:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCopyClick(Ljava/lang/String;Lc42;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->sendButtonClickedEvents()V

    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->revealCode(Ljava/lang/String;Lc42;Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadCouponInfo()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadDescription()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadOnlineShopSteps()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->initHotsPaginator()V

    return-void
.end method

.method public final onGoToAllOperationsClicked()V
    .locals 4

    new-instance v0, Lkd$e$b$d;

    const-string v1, "Operations"

    invoke-direct {v0, v1}, Lkd$e$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lod;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int v2, v2

    invoke-direct {v0, v2, v1}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->router:Luf3;

    new-instance v0, Lnh7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onGoToShopClick(Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$b$c$a;

    const-string v1, "Go to item"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Hot items"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lkd$e$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lnd;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int v2, v2

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v2, v1}, Lkd$e$a$a$c;-><init>(ILjava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->openHotItemUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onOpenUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->openCouponUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRequestPromocodeClick()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->sendButtonClickedEvents()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->loadRequestInfo()V

    return-void
.end method

.method public final onShareCardClicked(Lm32;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$b$e;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int v1, v1

    const-string v2, "Share"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$e$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lsd;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    long-to-int v1, v3

    invoke-direct {v0, v1, v2}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponId:J

    invoke-direct {v1, v2, v3}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;-><init>(J)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/presentation/Deeplink;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lm32;->c:Ljava/lang/String;

    iget-object v3, p1, Lm32;->e:Ljava/lang/String;

    const-string v4, " "

    invoke-static {v2, v4, v3}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->repository:Ljf6;

    invoke-interface {p0}, Ljf6;->d()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lm32;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0, p1}, Ljs7;->shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final promoCodeShowed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->promoCodeShowed:Z

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->copyCode(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->openCouponUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setFavouriteCoupon(JZ)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->couponsInteractor:Lq42;

    iget-object v0, v0, Lq42;->a:Lt42;

    new-instance v1, Lh63;

    invoke-direct {v1, p3, p1, p2}, Lh63;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lt42;->f(Lh63;)Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$n;

    invoke-direct {v1, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$n;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;Z)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;

    invoke-direct {v2, p3, p1, p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter$o;-><init>(ZJLcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;)V

    invoke-static {v0, v2, v1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setFloatingButtonVisibility(II)V
    .locals 0

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->setFloatingButtonVisibility(Z)V

    :cond_1
    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showLoadingDialog(Z)V

    :cond_0
    return-void
.end method
