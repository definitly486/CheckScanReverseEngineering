.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;",
        ">;"
    }
.end annotation


# instance fields
.field private final chequesInteractor:Lxd1;

.field private dateFrom:Ljava/lang/String;

.field private dateTo:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private final flowRouter:Luf3;

.field private final preferences:Ljf6;

.field private final validator:Li3;


# direct methods
.method public constructor <init>(Ljf6;Lxd1;Li3;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->chequesInteractor:Lxd1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->validator:Li3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->flowRouter:Luf3;

    return-void
.end method

.method private final checkDateField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateFrom:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateTo:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz v1, :cond_0

    const/16 v2, 0x2d

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->setDateRangeText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showInvalidDateError(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showInvalidDateError(Z)V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showEnableButton(Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->checkFields()V

    return-void
.end method

.method private final checkEmailField(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->validator:Li3;

    invoke-virtual {v1, p1}, Li3;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->email:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showInvalidEmailError(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showInvalidEmailError(Z)V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showEnableButton(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->checkFields()V

    return-void
.end method

.method private final checkFields()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->showEnableButton(Z)V

    :cond_0
    return-void
.end method

.method private final setEmailToField()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->validator:Li3;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    invoke-interface {v1}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li3;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->email:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->preferences:Ljf6;

    invoke-interface {p0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportView;->assignUserEmail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onDateRangeSelected(JJ)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateFrom:Ljava/lang/String;

    sget-object v0, Lpb2;->a:Lpb2;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lpb2;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lpb2;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->checkDateField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onEmailChanged(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->email:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->checkEmailField(Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->setEmailToField()V

    return-void
.end method

.method public final unloadCheques()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->dateTo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->chequesInteractor:Lxd1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lxd1;->a:Lcf1;

    invoke-interface {v3, v0, v1, v2}, Lcf1;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;)V

    invoke-static {v0, v2, v1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
