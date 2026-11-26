.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferringMoneyCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransferringMoneyCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;Z)V
    .locals 1

    const-string p1, "showTransferringMoney"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferringMoneyCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferringMoneyCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showTransferringMoney(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferringMoneyCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V

    return-void
.end method
