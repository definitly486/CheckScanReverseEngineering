.class public final Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;",
        ">;"
    }
.end annotation


# instance fields
.field private addChequeModel:Lp8;

.field private final authDisposables:Lfu1;

.field private final chequeRequestId:J

.field private final chequeRequestQueueInteractor:Lyg1;

.field private final flowRouter:Luf3;

.field private final reason:Lfi7;

.field private final waitingQueueReceiptQr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luf3;Ljava/lang/String;Lfi7;Lyg1;Lfu1;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->waitingQueueReceiptQr:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->reason:Lfi7;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestQueueInteractor:Lyg1;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->authDisposables:Lfu1;

    iput-wide p6, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestId:J

    return-void
.end method

.method public static final synthetic access$onChequeViewIsShowed(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->onChequeViewIsShowed()V

    return-void
.end method

.method public static final synthetic access$openReceivedCheque(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->openReceivedCheque(I)V

    return-void
.end method

.method public static final synthetic access$setAddChequeModel$p(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;Lp8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->addChequeModel:Lp8;

    return-void
.end method

.method public static final synthetic access$toReceiptData(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;Lp8;)Lgw6;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->toReceiptData(Lp8;)Lgw6;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteCheque$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->deleteCheque$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final onChequeViewIsShowed()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->reason:Lfi7;

    sget-object v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showNoShopReceived()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showChequeInvalid()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showFnsNotResponding()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showChequeNotCorrectFormat()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showChequeAlreadyWasScanned()V

    :cond_5
    :goto_0
    return-void
.end method

.method private final openReceivedCheque(I)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->waitingQueueReceiptQr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0, v1}, Lzg1;->a(Ljava/lang/String;)Lrp1;

    move-result-object v0

    new-instance v1, Lnq1;

    invoke-direct {v1, v0}, Lnq1;-><init>(Lqp1;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-virtual {v0}, Lqp1;->g()Lcp2;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->authDisposables:Lfu1;

    invoke-virtual {v1, v0}, Lfu1;->b(Lcp2;)Z

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->flowRouter:Luf3;

    invoke-virtual {v0}, Luf3;->i()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->flowRouter:Luf3;

    new-instance v0, Lyf7;

    invoke-direct {v0, p1}, Lyf7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method private final toReceiptData(Lp8;)Lgw6;
    .locals 10

    iget-object v0, p1, Lp8;->d:Lgf9;

    iget-object p1, p1, Lp8;->c:Liv6;

    invoke-virtual {v0}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget-object v0, Lwu6;->a:Lwu6;

    invoke-static {v0, v2}, Lwu6;->b(Lwu6;Ljava/lang/String;)Lwu6$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    nop

    instance-of v1, v0, Lk57$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v0, v3

    :cond_0
    check-cast v0, Lwu6$a;

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Lgw6;

    move-object v4, v3

    iget-object v3, v0, Lwu6$a;->c:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lwu6$a;->e:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lwu6$a;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Liv6;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->reason:Lfi7;

    sget-object v8, Lfi7;->NoShopReceived:Lfi7;

    if-ne p0, v8, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Liv6;->d()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_2
    move-object v6, v7

    move-object v7, p0

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lwu6$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_3
    invoke-direct/range {v1 .. v7}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-object v1
.end method


# virtual methods
.method public final deleteCheque()V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->waitingQueueReceiptQr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0, v1}, Lzg1;->a(Ljava/lang/String;)Lrp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;)V

    new-instance v5, Lq8;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lq8;-><init>(Lgh4;I)V

    new-instance v2, Loq1;

    sget-object v4, Lrm3;->d:Lrm3$e;

    sget-object v6, Lrm3;->c:Lrm3$d;

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    invoke-virtual {v2}, Lqp1;->g()Lcp2;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->authDisposables:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final editCheque()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->deleteCheque()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->flowRouter:Luf3;

    sget-object v0, Lah7;->a:Lah7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestId:J

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0, v1, v2}, Lzg1;->c(J)Lhd3;

    move-result-object v0

    invoke-static {v0}, Lzd3;->c(Lhd3;)Lhd3;

    move-result-object v0

    new-instance v1, Lng1;

    invoke-direct {v1, v0}, Lng1;-><init>(Lhd3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const-string v0, "getChequeByRequestId"

    const/4 v1, 0x2

    invoke-static {v3, v0, v2, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final requestChequeAgain()V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->addChequeModel:Lp8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->loadUpdatingFNSStatus()V

    :cond_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v2, v0, Lp8;->b:Lhv6;

    invoke-virtual {v2}, Lhv6;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lp8;->d:Lgf9;

    invoke-virtual {v0}, Lgf9;->f()Lnz6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->chequeRequestId:J

    long-to-int v3, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lyg1;->a:Lzg1;

    invoke-interface {v4, v2, v0}, Lzg1;->b(Ljava/lang/String;Ljava/lang/String;)Lqp1;

    move-result-object v5

    invoke-interface {v4, v2}, Lzg1;->f(Ljava/lang/String;)Lp08;

    move-result-object v6

    invoke-virtual {v5, v6}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v5

    new-instance v6, Ltg1;

    invoke-direct {v6, v1, v3, v0}, Ltg1;-><init>(Lyg1;ILjava/lang/String;)V

    new-instance v0, Lmg1;

    invoke-direct {v0, v6}, Lmg1;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lh08;

    invoke-direct {v1, v5, v0}, Lh08;-><init>(Lmz7;Lxl3;)V

    invoke-interface {v4, v2}, Lzg1;->i(Ljava/lang/String;)Lp08;

    move-result-object v0

    invoke-virtual {v1, v0}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
