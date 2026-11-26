.class public final Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;

    check-cast p2, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->presenter:Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingFragment;->providePresenter()Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;

    move-result-object p0

    return-object p0
.end method
