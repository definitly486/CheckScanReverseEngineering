.class public Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowTaskErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTaskErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final error:Lhn8;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;Lhn8;)V
    .locals 1

    const-string p1, "showTaskError"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowTaskErrorCommand;->error:Lhn8;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowTaskErrorCommand;->error:Lhn8;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showTaskError(Lhn8;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State$ShowTaskErrorCommand;->apply(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;)V

    return-void
.end method
