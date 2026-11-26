.class public final Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;",
        ">;"
    }
.end annotation


# instance fields
.field private final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 10

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz v0, :cond_7

    new-instance v1, Lzf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    invoke-direct {v1, p0}, Lzf7;-><init>(I)V

    new-array p0, v2, [Llk3;

    aput-object v1, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$BankCards;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$BankCards;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz p0, :cond_7

    new-array v0, v2, [Llk3;

    sget-object v1, Lch7;->a:Lch7;

    aput-object v1, v0, v3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$BankCardOptions;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz v0, :cond_7

    new-instance v1, Lpf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$BankCardOptions;

    iget-wide v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$BankCardOptions;->c:J

    invoke-direct {v1, v4, v5}, Lpf7;-><init>(J)V

    new-array p0, v2, [Llk3;

    aput-object v1, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_2
    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$Operations;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$Operations;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz p0, :cond_7

    new-instance v0, Lnh7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [Llk3;

    aput-object v0, v1, v3

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$AddScreenshotCashback;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz v0, :cond_7

    new-instance v1, Lkf7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$AddScreenshotCashback;

    iget-wide v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$AddScreenshotCashback;->c:J

    invoke-direct {v1, v4, v5}, Lkf7;-><init>(J)V

    new-array p0, v2, [Llk3;

    aput-object v1, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_4
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz v0, :cond_7

    new-instance v4, Lrh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;

    iget v5, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    invoke-direct/range {v4 .. v9}, Lrh7;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    new-array p0, v2, [Llk3;

    aput-object v4, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_5
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromocodes;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz v0, :cond_7

    new-instance v1, Lci7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromocodes;

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromocodes;->c:I

    invoke-direct {v1, p0}, Lci7;-><init>(I)V

    new-array p0, v2, [Llk3;

    aput-object v1, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_6
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CreateRedCard;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackView;

    if-eqz p0, :cond_7

    new-instance v0, Lig7;

    sget-object v1, Ld62;->RegisterToCreate:Ld62;

    invoke-direct {v0, v1}, Lig7;-><init>(Ld62;)V

    new-array v1, v2, [Llk3;

    aput-object v0, v1, v3

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_7
    return-void

    :cond_8
    instance-of v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$Balance;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->flowRouter:Luf3;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/warefly/checkscan/presentation/f;

    new-instance v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$Balance;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$Balance;->c:Z

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {v0, v2}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void

    :cond_9
    new-instance p0, Lcom/warefly/checkscan/presentation/f;

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    invoke-direct {v0, v3}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Luf3;->c:Lo87;

    invoke-virtual {v0, p0}, Lo87;->g(Ldf7;)V

    return-void
.end method
