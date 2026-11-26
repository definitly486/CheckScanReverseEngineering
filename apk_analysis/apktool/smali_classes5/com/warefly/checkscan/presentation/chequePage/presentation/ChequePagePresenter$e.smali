.class public final synthetic Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$e;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lbf1;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->access$showReasonCashbackReject(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
