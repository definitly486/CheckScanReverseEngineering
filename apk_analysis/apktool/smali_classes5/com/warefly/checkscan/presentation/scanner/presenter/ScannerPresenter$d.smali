.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$onFirstViewAttach$1"
    f = "ScannerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$d;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleMessageVisibility(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showLoadButton()V

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$isShowAllCheques$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    invoke-static {p1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getInfoByQr(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showLastChequeInfo(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showLastChequeInfo(Ljava/lang/String;)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
