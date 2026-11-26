.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lzu6;
.implements Lg86$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;",
        ">;",
        "Lzu6;",
        "Lg86$a;"
    }
.end annotation


# instance fields
.field private final args:Lvd7;

.field private final chequeRequestQueueInteractor:Lyg1;

.field private final chequesFlow:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final isShowAllCheques:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Ljf6;

.field private final resourceProvider:Ls47;

.field private final subscriptionInteractor:Lic8;

.field private final zeroScanned:Z


# direct methods
.method public constructor <init>(Luf3;Ls47;Ljf6;Lyg1;Lvd7;Lic8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->resourceProvider:Ls47;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->preferences:Ljf6;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequeRequestQueueInteractor:Lyg1;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->args:Lvd7;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->subscriptionInteractor:Lic8;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->isShowAllCheques:Lxg5;

    invoke-interface {p3}, Ljf6;->f()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->zeroScanned:Z

    return-void
.end method

.method public static final synthetic access$getChequesFlow$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getInfoByQr(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->getInfoByQr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionInteractor$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lic8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->subscriptionInteractor:Lic8;

    return-object p0
.end method

.method public static final synthetic access$isShowAllCheques$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->isShowAllCheques:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$showSomeSecondsErrorMessage(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->showSomeSecondsErrorMessage()V

    return-void
.end method

.method private final getInfoByQr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lwu6;->a:Lwu6;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->args:Lvd7;

    iget-wide v1, v1, Lvd7;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->args:Lvd7;

    iget-object v2, v2, Lvd7;->c:Ljava/lang/String;

    new-instance v3, Lb36;

    invoke-direct {v3, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lwu6;->a(Ljava/lang/String;Lb36;)Lwu6$a;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {p1}, Lwu6$a;->a()Lhv6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyg1;->a(Lhv6;)V

    :try_start_0
    invoke-virtual {p1}, Lwu6$a;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lpb2;->a:Lpb2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lpb2;->f:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
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

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lwu6$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->resourceProvider:Ls47;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ls47;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n\u043e\u0442 "

    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :goto_1
    return-object p0
.end method

.method private final loadCheques(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    sget-object v3, Lwu6;->a:Lwu6;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->args:Lvd7;

    iget-wide v4, v4, Lvd7;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->args:Lvd7;

    iget-object v5, v5, Lvd7;->c:Ljava/lang/String;

    new-instance v6, Lb36;

    invoke-direct {v6, v4, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Lwu6;->a(Ljava/lang/String;Lb36;)Lwu6$a;

    move-result-object v1

    invoke-virtual {v1}, Lwu6$a;->a()Lhv6;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v3, Lk57$a;

    invoke-direct {v3, v1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_1
    nop

    instance-of v3, v1, Lk57$a;

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_2
    check-cast v2, Lhv6;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {v1, v2}, Lyg1;->c(Lhv6;)Lzp1;

    move-result-object v1

    goto :goto_3

    :cond_1
    sget-object v1, Laq1;->b:Laq1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lup1;

    invoke-direct {p1, v0}, Lup1;-><init>(Ljava/util/ArrayList;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V

    const/4 v1, 0x1

    invoke-static {p1, v2, v0, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const-string v0, "sendChequeRequest"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final showSomeSecondsErrorMessage()V
    .locals 3

    sget-object v0, Lqo2;->a:Loi2;

    sget-object v0, Luy4;->a:Lhu3;

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method


# virtual methods
.method public final onBrandlinkClick()V
    .locals 9

    sget-object v0, Lkd$h$b$a;->e:Lkd$h$b$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->preferences:Ljf6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljf6;->Q0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    new-instance v0, Lgk6;

    sget-object v3, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;->b:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;

    invoke-direct {v0, v3}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    const/4 v3, 0x2

    new-array v4, v3, [Llk3;

    sget-object v5, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldf7;

    invoke-virtual {p0, v0}, Lo87;->f([Ldf7;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->Z()Z

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/warefly/checkscan/presentation/f;

    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$ProductsDeeplink;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop$ProductsDeeplink;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void

    :cond_1
    new-instance v3, Ltf7;

    const/4 v8, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Ltf7;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Llk3;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onChequeClick()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->isShowAllCheques:Lxg5;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCropError()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showCropError()V

    :cond_0
    return-void
.end method

.method public final onExitClicked()V
    .locals 2

    new-instance v0, Lkd$g$a$f;

    const-string v1, "QR_CODE_READ_CANCELLED"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->zeroScanned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->resourceProvider:Ls47;

    const v2, 0x7f14058a

    invoke-interface {v1, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->setLoadButtonText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->isShowAllCheques:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$e;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;

    invoke-direct {v0, v3}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;-><init>(Ldf3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c;

    invoke-direct {v1, v0, p0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$f;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showBrandlinkButton()V

    :cond_1
    return-void
.end method

.method public final onGalleryClick()V
    .locals 3

    new-instance v0, Lkd$g$a$e;

    const-string v1, "PICTURE_FROM_GALLERY_CLICKED"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->openGallery()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lbi7;->a:Lbi7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onInfoClicked()V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lzh7;->a:Lzh7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onMainButtonClick()V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Ldf7;

    sget-object v1, Lyg7;->a:Lyg7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lo87;->f([Ldf7;)V

    return-void
.end method

.method public final onManualQrClicked()V
    .locals 3

    new-instance v0, Lkd$g$a$g;

    const-string v1, "QR_MANUAL_ACTIVITY"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lah7;->a:Lah7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onQrCodesDetectedOnCroppedImage(Lhd3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$h;

    invoke-direct {p1, p0, v1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    new-instance v0, Lde3;

    invoke-direct {v0, v2, p1}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onQrsDetected(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->loadCheques(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->chequesFlow:Lxg5;

    invoke-interface {v1, v0}, Lxg5;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lkd$m0;

    const-string v1, "qr_code"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CQ_ADDED"

    invoke-direct {v0, v1, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    const-string v5, "paramLabel: "

    const-string v6, "trackUserLocation"

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", params: List<str>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->vibrate()V

    :cond_7
    :goto_3
    return-void
.end method
