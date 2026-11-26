.class public final Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;",
        ">;"
    }
.end annotation


# instance fields
.field private endSum:Ljava/lang/String;

.field private startSum:Ljava/lang/String;

.field private final transferSumRegex:Lg17;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    new-instance v0, Lg17;

    const-string v1, "([0-9]+[,.]?[0-9]?[0-9]?)"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->transferSumRegex:Lg17;

    return-void
.end method


# virtual methods
.method public final onDataSumEndChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->endSum:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lvp2;->a(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->transferSumRegex:Lg17;

    invoke-virtual {v2, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->endSum:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showEndSumError(Z)V

    :cond_0
    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->startSum:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lvp2;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lvp2;->c(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Lvp2;->c(Ljava/lang/String;)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showEndSumError(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showEndSumError(Z)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    :cond_5
    return-void
.end method

.method public final onDataSumStartChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->startSum:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lvp2;->a(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->transferSumRegex:Lg17;

    invoke-virtual {v2, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->startSum:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showStartSumError(Z)V

    :cond_0
    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->endSum:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lvp2;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lvp2;->c(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Lvp2;->c(Ljava/lang/String;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showStartSumError(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->showStartSumError(Z)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    :cond_5
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->enableSortButton(Z)V

    :cond_0
    return-void
.end method

.method public final onShow()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->startSum:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->endSum:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "2147483647"

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, v1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->onSort(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
