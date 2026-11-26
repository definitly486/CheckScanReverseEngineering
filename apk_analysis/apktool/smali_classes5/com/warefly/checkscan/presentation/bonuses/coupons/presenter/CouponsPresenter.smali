.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final admitadId:J

.field private final admitadPartnerInteractor:Lx9;

.field private final couponsInteractor:Lq42;

.field private final router:Luf3;


# direct methods
.method public constructor <init>(Luf3;JLx9;Lq42;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->router:Luf3;

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->admitadId:J

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->admitadPartnerInteractor:Lx9;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->couponsInteractor:Lq42;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->loadCoupons$lambda$1(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->loadCoupons$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private static final loadCoupons$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadCoupons$lambda$1(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;->showLoading(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final loadCoupons()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->admitadPartnerInteractor:Lx9;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->admitadId:J

    iget-object v3, v0, Lx9;->a:Laa;

    invoke-interface {v3, v1, v2}, Laa;->g(J)Lmz7;

    move-result-object v1

    new-instance v2, Lx46;

    invoke-direct {v2, v0}, Lx46;-><init>(Lx9;)V

    new-instance v0, Lq9;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lq9;-><init>(Ljava/lang/Object;I)V

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

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V

    new-instance v2, Lhv;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lhv;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lr42;

    invoke-direct {v0, p0}, Lr42;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->router:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCouponCLick(J)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->router:Luf3;

    new-instance v0, Lgg7;

    invoke-direct {v0, p1, p2}, Lgg7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->loadCoupons()V

    return-void
.end method

.method public final setFavouriteCoupon(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->couponsInteractor:Lq42;

    iget-object v0, v0, Lq42;->a:Lt42;

    new-instance v1, Lh63;

    invoke-direct {v1, p3, p1, p2}, Lh63;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lt42;->f(Lh63;)Lqp1;

    move-result-object p1

    sget-object p2, Lne7;->c:Lhe7;

    invoke-virtual {p1, p2}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$d;

    invoke-direct {p2, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;Z)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;

    invoke-direct {v0, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;Z)V

    invoke-static {p1, v0, p2}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final tryAgainClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;->loadCoupons()V

    return-void
.end method
