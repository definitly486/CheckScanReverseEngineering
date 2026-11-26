.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowLoadingInfoCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowErrorInfoNotLoadedCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInfoCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferringMoneyCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneyErrorCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$SetTransferEnabledCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInvalidTransferSumErrorCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$HideErrorsCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowMinTransferSumNotReachedCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowWrongTransferSumCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$StartTransferToCouponCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowPromocodesCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferFailedBottomSheetCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh5;-><init>()V

    return-void
.end method


# virtual methods
.method public hideErrors()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$HideErrorsCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$HideErrorsCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->hideErrors()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrlInCustomTab(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setTransferEnabled(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$SetTransferEnabledCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$SetTransferEnabledCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->setTransferEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showErrorInfoNotLoaded(ZZ)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowErrorInfoNotLoadedCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowErrorInfoNotLoadedCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;ZZ)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showErrorInfoNotLoaded(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showInfo(Lsz8;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInfoCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInfoCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Lsz8;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showInfo(Lsz8;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showInvalidTransferSumError()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInvalidTransferSumErrorCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowInvalidTransferSumErrorCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showInvalidTransferSumError()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showLoadingInfo(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowLoadingInfoCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowLoadingInfoCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showLoadingInfo(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showMinTransferSumNotReached(I)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowMinTransferSumNotReachedCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowMinTransferSumNotReachedCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;I)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showMinTransferSumNotReached(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showPromocodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzj9;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowPromocodesCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowPromocodesCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/util/List;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showPromocodes(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTransferFailedBottomSheet(Lxz8$a;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferFailedBottomSheetCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferFailedBottomSheetCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Lxz8$a;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferFailedBottomSheet(Lxz8$a;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTransferMoneyError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneyErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneyErrorCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferMoneyError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTransferMoneySuccess(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferMoneySuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTransferringMoney(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferringMoneyCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferringMoneyCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferringMoney(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showWrongTransferSum()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowWrongTransferSumCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowWrongTransferSumCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showWrongTransferSum()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public startTransferToCoupon(I)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$StartTransferToCouponCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$StartTransferToCouponCommand;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;I)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->startTransferToCoupon(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
