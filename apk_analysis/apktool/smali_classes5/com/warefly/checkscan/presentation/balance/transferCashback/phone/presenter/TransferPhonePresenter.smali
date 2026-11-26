.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cashBackInteractor:Lp51;

.field private final interactor:Lnz8;

.field private final maskStringUtil:Ln15;

.field private transferInfo:Lsz8;

.field private final transferSumRegex:Lg17;


# direct methods
.method public constructor <init>(Lnz8;Lp51;Ln15;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->interactor:Lnz8;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->cashBackInteractor:Lp51;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->maskStringUtil:Ln15;

    new-instance p1, Lg17;

    const-string p2, "([0-9]+[,.]?[0-9]?[0-9]?)"

    invoke-direct {p1, p2}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferSumRegex:Lg17;

    return-void
.end method

.method public static final synthetic access$getMaskStringUtil$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)Ln15;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->maskStringUtil:Ln15;

    return-object p0
.end method

.method public static final synthetic access$processTransferResult(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;Ljava/lang/String;Lxz8;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->processTransferResult(Ljava/lang/String;Lxz8;)V

    return-void
.end method

.method public static final synthetic access$setTransferInfo$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;Lsz8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferInfo:Lsz8;

    return-void
.end method

.method private final checkSum(I)Z
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferInfo:Lsz8;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v2, v0, Lsz8;->a:I

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showWrongTransferSum()V

    :cond_0
    return v1

    :cond_1
    iget v2, v0, Lsz8;->b:I

    if-le p1, v2, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showWrongTransferSum()V

    :cond_2
    return v1

    :cond_3
    iget v0, v0, Lsz8;->c:I

    if-le p1, v0, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showWrongTransferSum()V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->hideErrors()V

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method private final checkSum(Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->parseSum(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->checkSum(I)Z

    move-result p0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showInvalidTransferSumError()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$13(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$7(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$12(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$11(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$8(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo$lambda$9(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final loadInfo()V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showLoadingInfo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->interactor:Lnz8;

    iget-object v2, v0, Lnz8;->a:Lb09;

    invoke-interface {v2}, Lb09;->c()Lmz7;

    move-result-object v2

    new-instance v3, Lxg1;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lxg1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lyp0;

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5}, Lyp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, v2, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v2

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v2

    new-instance v3, Lz26;

    invoke-direct {v3, p0, v1}, Lz26;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Luz7;

    invoke-direct {v5, v2, v3}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    new-instance v3, Lxk0;

    invoke-direct {v3, v2, v4}, Lxk0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    new-instance v4, Luz8;

    invoke-direct {v4, v2}, Luz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$c;)V

    invoke-virtual {v5, v3, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->interactor:Lnz8;

    iget-object v4, v2, Lnz8;->b:Lu51;

    iget-object v2, v2, Lnz8;->c:Ljf6;

    invoke-interface {v2}, Ljf6;->O0()I

    move-result v2

    invoke-interface {v4, v2}, Lu51;->b(I)Lmz7;

    move-result-object v2

    sget-object v4, Leq0;->h:Leq0;

    new-instance v5, Laq0;

    invoke-direct {v5, v4, v1}, Laq0;-><init>(Lnl3;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lp08;

    invoke-direct {v4, v2, v5}, Lp08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v4, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lvz8;

    invoke-direct {v2, p0}, Lvz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    new-instance v4, Luz7;

    invoke-direct {v4, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    new-instance v2, Lza3;

    invoke-direct {v2, v0, v1}, Lza3;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    new-instance v5, Lal0;

    invoke-direct {v5, v0, v1}, Lal0;-><init>(Lgh4;I)V

    invoke-virtual {v4, v2, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadInfo$lambda$11(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showLoadingInfo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferInfo:Lsz8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v1, :cond_1

    iget v0, v0, Lsz8;->c:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->checkSum(I)Z

    move-result p0

    invoke-interface {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->setTransferEnabled(Z)V

    :cond_1
    return-void
.end method

.method private static final loadInfo$lambda$12(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$13(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$7(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showLoadingInfo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferInfo:Lsz8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v1, :cond_1

    iget v0, v0, Lsz8;->c:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->checkSum(I)Z

    move-result p0

    invoke-interface {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->setTransferEnabled(Z)V

    :cond_1
    return-void
.end method

.method private static final loadInfo$lambda$8(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$9(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final parseSum(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferSumRegex:Lg17;

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string p0, ","

    const-string v1, "."

    invoke-static {p1, p0, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqa8;->m(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private final processTransferResult(Ljava/lang/String;Lxz8;)V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferringMoney(Z)V

    iget-object v1, p2, Lxz8;->a:Lxz8$b;

    sget-object v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->cashBackInteractor:Lp51;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp51;->i:Lct6;

    sget-object p2, Lp51$a;->ToPhone:Lp51$a;

    invoke-virtual {p0, p2}, Lct6;->onNext(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferMoneySuccess(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p2, Lxz8;->f:Lxz8$a;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferFailedBottomSheet(Lxz8$a;)V

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    iget-object p0, p2, Lxz8;->e:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferMoneyError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onRetryLoadInfo()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showErrorInfoNotLoaded(ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo()V

    return-void
.end method

.method public final onShown()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo()V

    return-void
.end method

.method public final declared-synchronized onTransferClicked(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->parseSum(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->checkSum(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferringMoney(Z)V

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->transferInfo:Lsz8;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->interactor:Lnz8;

    iget-object v1, v1, Lsz8;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lnz8;->a:Lb09;

    new-instance v5, Lwz8;

    invoke-direct {v5, v2, v1, v0}, Lwz8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Lb09;->b(Lwz8;)Lmz7;

    move-result-object v0

    sget-object v1, Lgq0;->i:Lgq0;

    new-instance v4, Lxp0;

    invoke-direct {v4, v1, v3}, Lxp0;-><init>(Lnl3;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v4}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$f;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$f;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$g;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$g;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1, v2, v3, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onTransferCoupon(I)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->startTransferToCoupon(I)V

    :cond_0
    return-void
.end method

.method public final onTransferSumChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->checkSum(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->setTransferEnabled(Z)V

    :cond_0
    return-void
.end method
