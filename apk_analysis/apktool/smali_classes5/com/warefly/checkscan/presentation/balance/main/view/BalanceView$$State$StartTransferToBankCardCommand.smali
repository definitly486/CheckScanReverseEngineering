.class public Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$StartTransferToBankCardCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartTransferToBankCardCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cardId:J


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;J)V
    .locals 1

    const-string p1, "startTransferToBankCard"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$StartTransferToBankCardCommand;->cardId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$StartTransferToBankCardCommand;->cardId:J

    invoke-interface {p1, v0, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferToBankCard(J)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$StartTransferToBankCardCommand;->apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V

    return-void
.end method
