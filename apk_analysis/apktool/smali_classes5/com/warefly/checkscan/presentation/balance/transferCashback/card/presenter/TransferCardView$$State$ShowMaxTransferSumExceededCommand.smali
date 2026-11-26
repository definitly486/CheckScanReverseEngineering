.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView$$State$ShowMaxTransferSumExceededCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMaxTransferSumExceededCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView$$State;)V
    .locals 1

    const-string p1, "showMaxTransferSumExceeded"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;->showMaxTransferSumExceeded()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView$$State$ShowMaxTransferSumExceededCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardView;)V

    return-void
.end method
