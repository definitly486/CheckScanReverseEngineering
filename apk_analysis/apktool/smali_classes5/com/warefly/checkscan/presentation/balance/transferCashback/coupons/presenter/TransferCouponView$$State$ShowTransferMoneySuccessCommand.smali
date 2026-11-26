.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferMoneySuccessCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransferMoneySuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;",
        ">;"
    }
.end annotation


# instance fields
.field public final transfer:Le09;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;Le09;)V
    .locals 1

    const-string p1, "showTransferMoneySuccess"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferMoneySuccessCommand;->transfer:Le09;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferMoneySuccessCommand;->transfer:Le09;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showTransferMoneySuccess(Le09;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowTransferMoneySuccessCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V

    return-void
.end method
