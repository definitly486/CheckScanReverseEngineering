.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowTransferFailedBottomSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransferFailedBottomSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;",
        ">;"
    }
.end annotation


# instance fields
.field public final result:Lxz8$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State;Lxz8$a;)V
    .locals 1

    const-string p1, "showTransferFailedBottomSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowTransferFailedBottomSheetCommand;->result:Lxz8$a;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowTransferFailedBottomSheetCommand;->result:Lxz8$a;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;->showTransferFailedBottomSheet(Lxz8$a;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowTransferFailedBottomSheetCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;)V

    return-void
.end method
