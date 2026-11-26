.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field private final rangeAvailable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;->rangeAvailable:Z

    return-void
.end method


# virtual methods
.method public final handleShowButtonEnabled(Ldy0;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->showButtonEnabled(ZLdy0;)V

    :cond_1
    return-void
.end method

.method public final handleShowButtonEnabled(Ldy0;Ldy0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->showButtonEnabled(ZLdy0;Ldy0;)V

    :cond_1
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;->rangeAvailable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->setTitle()V

    :cond_0
    return-void
.end method
