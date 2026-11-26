.class public Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendSelectedTimeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final hour:I

.field public final minute:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State;II)V
    .locals 1

    const-string p1, "sendSelectedTime"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;->hour:I

    iput p3, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;->minute:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;->hour:I

    iget p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;->minute:I

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;->sendSelectedTime(II)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SendSelectedTimeCommand;->apply(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;)V

    return-void
.end method
