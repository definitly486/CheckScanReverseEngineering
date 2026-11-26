.class public Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State$ApproveDateCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApproveDateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State;Ljava/util/Date;)V
    .locals 1

    const-string p1, "approveDate"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State$ApproveDateCommand;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State$ApproveDateCommand;->date:Ljava/util/Date;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;->approveDate(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView$$State$ApproveDateCommand;->apply(Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerView;)V

    return-void
.end method
