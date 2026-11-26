.class public Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowButtonEnabled1Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final date:Ldy0;

.field public final enabled:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State;ZLdy0;)V
    .locals 1

    const-string p1, "showButtonEnabled"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;->enabled:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;->date:Ldy0;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;->enabled:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;->date:Ldy0;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;->showButtonEnabled(ZLdy0;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView$$State$ShowButtonEnabled1Command;->apply(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;)V

    return-void
.end method
