.class public Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWithdrawalCardsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgj9;",
            ">;"
        }
    .end annotation
.end field

.field public final onEvent:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Lwi9;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State;Ljava/util/List;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgj9;",
            ">;",
            "Lnl3<",
            "-",
            "Lwi9;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showWithdrawalCards"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;->cards:Ljava/util/List;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;->onEvent:Lnl3;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;->cards:Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;->onEvent:Lnl3;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showWithdrawalCards(Ljava/util/List;Lnl3;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalCardsCommand;->apply(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;)V

    return-void
.end method
