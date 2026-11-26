.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cardId:J

.field private final cashBackInteractor:Lp51;

.field private final interactor:Lnz8;

.field private transferInfo:Laz8;

.field private final transferSumRegex:Lg17;


# direct methods
.method public constructor <init>(JLnz8;Lp51;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->cardId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->interactor:Lnz8;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->cashBackInteractor:Lp51;

    new-instance p1, Lg17;

    const-string p2, "([0-9]+[,.]?[0-9]?[0-9]?)"

    invoke-direct {p1, p2}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->transferSumRegex:Lg17;

    return-void
.end method

.method public static final synthetic access$getCashBackInteractor$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)Lp51;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->cashBackInteractor:Lp51;

    return-object p0
.end method

.method public static final synthetic access$setTransferInfo$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;Laz8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->transferInfo:Laz8;

    return-void
.end method

.method private final checkSum(I)Z
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->transferInfo:Laz8;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v2, v0, Laz8;->a:I

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showMinTransferSumNotReached(I)V

    :cond_0
    return v1

    :cond_1
    iget v2, v0, Laz8;->b:I

    if-le p1, v2, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showMaxTransferSumExceeded()V

    :cond_2
    return v1

    :cond_3
    iget v0, v0, Laz8;->c:I

    if-le p1, v0, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showMaxTransferSumExceeded()V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->hideErrors()V

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method private final checkSum(Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->parseSum(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->checkSum(I)Z

    move-result p0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showInvalidTransferSumError()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$6(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$7(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$2(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo$lambda$5(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    return-void
.end method

.method private final loadInfo()V
    .locals 7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showLoadingInfo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->interactor:Lnz8;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->cardId:J

    iget-object v4, v0, Lnz8;->a:Lb09;

    invoke-interface {v4, v2, v3}, Lb09;->f(J)Lmz7;

    move-result-object v2

    new-instance v3, Lol6;

    invoke-direct {v3, v0, v1}, Lol6;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lzp0;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lzp0;-><init>(Ljava/lang/Object;I)V

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

    new-instance v3, Lcz8;

    invoke-direct {v3, p0}, Lcz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v5, Luz7;

    invoke-direct {v5, v2, v3}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v3, Luk1;

    invoke-direct {v3, v2, v4}, Luk1;-><init>(Lgh4;I)V

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v4, Lvk1;

    const/4 v6, 0x4

    invoke-direct {v4, v2, v6}, Lvk1;-><init>(Lgh4;I)V

    invoke-virtual {v5, v3, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->interactor:Lnz8;

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

    new-instance v2, Ldz8;

    invoke-direct {v2, p0}, Ldz8;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v4, Luz7;

    invoke-direct {v4, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v2, Lk34;

    invoke-direct {v2, v0, v1}, Lk34;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v5, Ll34;

    invoke-direct {v5, v0, v1}, Ll34;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v2, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadInfo$lambda$2(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showLoadingInfo(Z)V

    :cond_0
    return-void
.end method

.method private static final loadInfo$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$5(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showLoadingInfo(Z)V

    :cond_0
    return-void
.end method

.method private static final loadInfo$lambda$6(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadInfo$lambda$7(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final parseSum(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->transferSumRegex:Lg17;

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


# virtual methods
.method public final onRetryLoadInfo()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showErrorInfoNotLoaded(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo()V

    return-void
.end method

.method public final onShown()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->loadInfo()V

    return-void
.end method

.method public final declared-synchronized onTransferClicked(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->parseSum(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->checkSum(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showTransferringMoney(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->interactor:Lnz8;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->cardId:J

    iget-object v5, v0, Lnz8;->a:Lb09;

    new-instance v6, Lez8;

    invoke-direct {v6, v3, v4, p1}, Lez8;-><init>(JI)V

    invoke-interface {v5, v6}, Lb09;->a(Lez8;)Lmz7;

    move-result-object p1

    new-instance v3, Lvc1;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lvc1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lwp0;

    invoke-direct {v0, v3, v4}, Lwp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, p1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v3, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$f;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;)V

    invoke-virtual {p0, p1, v0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V
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

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->startTransferToCoupon(I)V

    :cond_0
    return-void
.end method

.method public final onTransferSumChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->checkSum(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->setTransferEnabled(Z)V

    :cond_0
    return-void
.end method
