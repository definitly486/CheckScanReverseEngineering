.class public final Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cashBackInteractor:Lp51;

.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;Lp51;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->cashBackInteractor:Lp51;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V

    return-void
.end method

.method private static final onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->handleProgress(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCardClick(J)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->flowRouter:Luf3;

    new-instance v0, Lpf7;

    invoke-direct {v0, p1, p2}, Lpf7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->cashBackInteractor:Lp51;

    iget-object v1, v0, Lp51;->a:Lu51;

    iget-object v0, v0, Lp51;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v0

    invoke-interface {v1, v0}, Lu51;->h(I)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V

    new-instance v2, Lsl0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lsl0;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lwm5;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lwm5;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v0, v3}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
