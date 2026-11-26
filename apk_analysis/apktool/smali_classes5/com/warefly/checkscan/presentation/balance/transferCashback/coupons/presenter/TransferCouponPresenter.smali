.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;",
        ">;"
    }
.end annotation


# instance fields
.field private final interactor:Lp51;

.field private programIdPres:I

.field private transferInfo:Lgq6$a;


# direct methods
.method public constructor <init>(Lp51;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->interactor:Lp51;

    const/4 p1, -0x1

    iput p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->programIdPres:I

    return-void
.end method

.method public static final synthetic access$loadInfo(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo()V

    return-void
.end method

.method public static final synthetic access$onTransferClicked(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;Le09;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->onTransferClicked(Le09;)V

    return-void
.end method

.method public static final synthetic access$setTransferInfo$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;Lgq6$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->transferInfo:Lgq6$a;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->onClickTransfer$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo$lambda$0(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->onClickTransfer$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final loadInfo()V
    .locals 5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showLoadingInfo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->interactor:Lp51;

    iget v2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->programIdPres:I

    iget-object v0, v0, Lp51;->a:Lu51;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lu51;->b(I)Lmz7;

    move-result-object v0

    new-instance v3, Ls51;

    invoke-direct {v3, v2}, Ls51;-><init>(I)V

    new-instance v2, La9;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, La9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Llg1;

    invoke-direct {v2, p0, v1}, Llg1;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V

    new-instance v2, Ljz8;

    invoke-direct {v2, v0}, Ljz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$a;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V

    new-instance v4, Lkz8;

    invoke-direct {v4, v0}, Lkz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$b;)V

    invoke-virtual {v3, v2, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadInfo$lambda$0(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showLoadingInfo(Z)V

    :cond_0
    return-void
.end method

.method private static final loadInfo$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClickTransfer$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClickTransfer$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onTransferClicked(Le09;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showTransferringMoney(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showTransferMoneySuccess(Le09;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onClickTransfer(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->interactor:Lp51;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->programIdPres:I

    iget-object v0, v0, Lp51;->a:Lu51;

    invoke-interface {v0, p1, v1}, Lu51;->e(II)Lmz7;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V

    new-instance v1, Llz8;

    invoke-direct {v1, v0}, Llz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$c;)V

    new-instance v0, Lmz8;

    sget-object v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$d;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter$d;

    invoke-direct {v0, v2}, Lmz8;-><init>(Lnl3;)V

    invoke-virtual {p1, v1, v0}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCopyPromoCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showPopupCopied(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onFLowToFullRules()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->transferInfo:Lgq6$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgq6$a;->d()Lgq6$a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgq6$a$a;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onRetryLoadInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo()V

    return-void
.end method

.method public final onShown(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->programIdPres:I

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->loadInfo()V

    return-void
.end method
