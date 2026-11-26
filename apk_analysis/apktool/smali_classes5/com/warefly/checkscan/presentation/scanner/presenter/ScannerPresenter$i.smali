.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter$showSomeSecondsErrorMessage$1"
    f = "ScannerPresenter.kt"
    l = {
        0x96
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->showSomeSecondsErrorMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

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
            "Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->m:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleErrorMessage(Z)V

    :cond_2
    invoke-static {v4}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getChequesFlow$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;

    move-result-object p1

    invoke-interface {p1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleMessageVisibility(Z)V

    :cond_3
    iput v3, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$i;->l:I

    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleErrorMessage(Z)V

    :cond_5
    invoke-static {v4}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getChequesFlow$p(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Lxg5;

    move-result-object p0

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleMessageVisibility(Z)V

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
