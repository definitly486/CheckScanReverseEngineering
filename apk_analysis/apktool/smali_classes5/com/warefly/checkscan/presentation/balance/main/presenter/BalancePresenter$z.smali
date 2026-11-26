.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onPromotionItemClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La40;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;->f:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La40;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;->f:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showInfoDialog(La40;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
