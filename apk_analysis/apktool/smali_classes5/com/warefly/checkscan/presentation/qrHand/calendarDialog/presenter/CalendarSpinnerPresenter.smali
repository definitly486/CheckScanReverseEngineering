.class public final Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;",
        ">;",
        "Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$a;"
    }
.end annotation


# instance fields
.field private selectedDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApproveClick()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;->selectedDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;->approveDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public final onCloseClick()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;->dismissBottomSheet()V

    :cond_0
    return-void
.end method

.method public onDateChanged(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;->selectedDate:Ljava/util/Date;

    return-void
.end method
