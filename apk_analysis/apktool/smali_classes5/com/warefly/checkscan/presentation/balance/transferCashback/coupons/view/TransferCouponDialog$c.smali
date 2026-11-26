.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->k(Landroid/view/View;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    iput p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;->g:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->j()Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    move-result-object p1

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;->g:I

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->onClickTransfer(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
