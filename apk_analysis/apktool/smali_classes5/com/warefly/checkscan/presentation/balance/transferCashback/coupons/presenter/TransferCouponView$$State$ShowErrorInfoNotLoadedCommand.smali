.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowErrorInfoNotLoadedCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorInfoNotLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;)V
    .locals 1

    const-string p1, "showErrorInfoNotLoaded"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showErrorInfoNotLoaded()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowErrorInfoNotLoadedCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V

    return-void
.end method
