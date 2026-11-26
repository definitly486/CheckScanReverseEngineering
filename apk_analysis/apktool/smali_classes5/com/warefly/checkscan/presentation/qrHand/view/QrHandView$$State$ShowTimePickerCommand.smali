.class public Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTimePickerCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;",
        ">;"
    }
.end annotation


# instance fields
.field public final maxHour:I

.field public final maxMinutes:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;II)V
    .locals 1

    const-string p1, "showTimePicker"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;->maxHour:I

    iput p3, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;->maxMinutes:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;->maxHour:I

    iget p0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;->maxMinutes:I

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->showTimePicker(II)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$ShowTimePickerCommand;->apply(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;)V

    return-void
.end method
