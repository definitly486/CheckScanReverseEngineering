.class public Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalMethodsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWithdrawalMethodsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lhk9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lhk9;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showWithdrawalMethods"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalMethodsCommand;->methods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalMethodsCommand;->methods:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;->showWithdrawalMethods(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView$$State$ShowWithdrawalMethodsCommand;->apply(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;)V

    return-void
.end method
