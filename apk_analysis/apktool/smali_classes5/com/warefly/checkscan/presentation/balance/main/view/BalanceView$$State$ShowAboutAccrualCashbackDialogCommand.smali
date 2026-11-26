.class public Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAboutAccrualCashbackDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAboutAccrualCashbackDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final accrual:Lw00;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;Lw00;)V
    .locals 1

    const-string p1, "showAboutAccrualCashbackDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAboutAccrualCashbackDialogCommand;->accrual:Lw00;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAboutAccrualCashbackDialogCommand;->accrual:Lw00;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;->showAboutAccrualCashbackDialog(Lw00;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowAboutAccrualCashbackDialogCommand;->apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V

    return-void
.end method
