.class public final synthetic Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$f;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Lwi9;",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwi9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
