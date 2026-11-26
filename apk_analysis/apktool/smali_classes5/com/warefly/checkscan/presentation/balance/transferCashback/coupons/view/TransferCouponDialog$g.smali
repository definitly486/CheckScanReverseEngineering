.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->showInfo(Lgq6$a;Ljava/lang/String;)V
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

.field public final synthetic g:Lgq6$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;Lgq6$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;->g:Lgq6$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;->g:Lgq6$a;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgq6$a$b;

    invoke-virtual {v0}, Lgq6$a$b;->a()I

    move-result v3

    invoke-virtual {p1}, Lgq6$a;->a()I

    move-result v4

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgq6$a$b;

    invoke-virtual {v0}, Lgq6$a$b;->b()I

    move-result v5

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgq6$a$b;

    invoke-virtual {p1}, Lgq6$a$b;->f()I

    move-result v6

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->k:[Lze4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->k(Landroid/view/View;IIIII)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
