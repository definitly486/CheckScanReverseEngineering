.class public final Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/core/ui/databinding/DialogCalendarSpinnerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public presenter:Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogCalendarSpinnerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog;->d:[Lze4;

    return-void
.end method


# virtual methods
.method public final approveDate(Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog;->d:[Lze4;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;-><init>()V

    return-object p0
.end method
