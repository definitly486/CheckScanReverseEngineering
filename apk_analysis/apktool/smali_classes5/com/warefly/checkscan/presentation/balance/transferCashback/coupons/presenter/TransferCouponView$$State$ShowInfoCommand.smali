.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Lgq6$a;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State;Lgq6$a;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;->info:Lgq6$a;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;->info:Lgq6$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;->url:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;->showInfo(Lgq6$a;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView$$State$ShowInfoCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;)V

    return-void
.end method
