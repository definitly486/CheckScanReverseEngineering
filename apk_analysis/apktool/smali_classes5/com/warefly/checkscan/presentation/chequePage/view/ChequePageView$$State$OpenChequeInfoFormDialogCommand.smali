.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChequeInfoFormDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chequeId:I

.field public final phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;ILjava/lang/String;)V
    .locals 1

    const-string p1, "openChequeInfoFormDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;->chequeId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;->chequeId:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;->phone:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->openChequeInfoFormDialog(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$OpenChequeInfoFormDialogCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
