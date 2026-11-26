.class public Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SetHourCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetHourCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final hour:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "setHour"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SetHourCommand;->hour:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SetHourCommand;->hour:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;->setHour(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView$$State$SetHourCommand;->apply(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;)V

    return-void
.end method
