.class public final Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingView;",
        ">;"
    }
.end annotation


# instance fields
.field private final bankInteractor:Lca0;

.field private final fromDeeplink:Z

.field private final preferencesRepository:Ljf6;

.field private final router:Luf3;


# direct methods
.method public constructor <init>(Lca0;ZLuf3;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->bankInteractor:Lca0;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->fromDeeplink:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->router:Luf3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->preferencesRepository:Ljf6;

    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    sget-object v0, Lkd$j$d$a;->e:Lkd$j$d$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->fromDeeplink:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->router:Luf3;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luf3;->i()V

    return-void

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/c;

    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/c;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->bankInteractor:Lca0;

    iget-object v1, v0, Lca0;->a:Lpb0;

    invoke-interface {v1}, Lpb0;->e()Ltb7;

    move-result-object v1

    new-instance v2, Laa0;

    invoke-direct {v2, v1, v0}, Laa0;-><init>(Lhd3;Lca0;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v2, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;)V

    const/4 v2, 0x1

    invoke-static {v3, v1, v0, v2}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onIssueCardClick()V
    .locals 4

    sget-object v0, Lyd;->e:Lyd;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;->router:Luf3;

    if-eqz v0, :cond_0

    new-instance v0, Lig7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lig7;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Llk3;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Luf3;->j([Llk3;)V

    return-void

    :cond_0
    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method
