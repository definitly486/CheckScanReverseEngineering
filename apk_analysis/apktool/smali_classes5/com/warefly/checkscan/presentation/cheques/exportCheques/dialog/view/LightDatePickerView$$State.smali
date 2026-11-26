.class public Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$SetTitleCommand;,
        Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabledCommand;,
        Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;,
        Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh5;-><init>()V

    return-void
.end method


# virtual methods
.method public openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

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

.method public setTitle()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$SetTitleCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$SetTitleCommand;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->setTitle()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showButtonEnabled(ZLdy0;)V
    .locals 3

    .line 61
    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;ZLdy0;)V

    .line 62
    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    .line 63
    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    .line 64
    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    .line 65
    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 66
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

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    .line 67
    invoke-interface {v2, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->showButtonEnabled(ZLdy0;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    .line 69
    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    .line 70
    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showButtonEnabled(ZLdy0;Ldy0;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabledCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabledCommand;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;ZLdy0;Ldy0;)V

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

    check-cast v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    invoke-interface {v2, p1, p2, p3}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->showButtonEnabled(ZLdy0;Ldy0;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
