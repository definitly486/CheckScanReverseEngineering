.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountInteractor:Lc4;

.field private bonusProgram:Lgo0;

.field private final bonusProgramInteractor:Lio0;

.field private final cardLinkSuffix:Ljava/lang/String;

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;

.field private final programId:J


# direct methods
.method public constructor <init>(JLuf3;Lio0;Lc4;Ljf6;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->flowRouter:Luf3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgramInteractor:Lio0;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->accountInteractor:Lc4;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->preferencesRepository:Ljf6;

    new-instance p3, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;

    invoke-direct {p3, p1, p2}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;-><init>(J)V

    invoke-virtual {p3}, Lcom/warefly/checkscan/presentation/Deeplink;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->cardLinkSuffix:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$afterProgramLoad(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->afterProgramLoad()V

    return-void
.end method

.method public static final synthetic access$getProgramId$p(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    return-wide v0
.end method

.method public static final synthetic access$setBonusProgram$p(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;Lgo0;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgram:Lgo0;

    return-void
.end method

.method public static final synthetic access$showAgreement(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showAgreement()V

    return-void
.end method

.method private final afterProgramLoad()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showTransfer()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showTermsOfProgram()V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->onBalanceMaybeChanged$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->onBalanceMaybeChanged$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showTermsOfProgram$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showTermsOfProgram$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final loadBonusProgram()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showLoadingProgram(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgramInteractor:Lio0;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    iget-object v0, v0, Lio0;->a:Llo0;

    invoke-interface {v0, v2, v3}, Llo0;->e(J)Lmz7;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    invoke-static {v0, v2, v3}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final onBalanceMaybeChanged$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBalanceMaybeChanged$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showAgreement()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgramInteractor:Lio0;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    iget-object v0, v0, Lio0;->a:Llo0;

    invoke-interface {v0, v1, v2}, Llo0;->d(J)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$f;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final showTermsOfProgram()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgramInteractor:Lio0;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    iget-object v0, v0, Lio0;->a:Llo0;

    invoke-interface {v0, v1, v2}, Llo0;->c(J)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v2, Lh90;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lh90;-><init>(Lgh4;I)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$h;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v4, Ly96;

    invoke-direct {v4, v1}, Ly96;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$h;)V

    invoke-virtual {v0, v2, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final showTermsOfProgram$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showTermsOfProgram$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showTransfer()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->accountInteractor:Lc4;

    iget-object v1, v1, Lc4;->a:Ljf6;

    invoke-interface {v1}, Ljf6;->G0()Z

    move-result v1

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->enableTransfer(ZJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCardLinkSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->cardLinkSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onBalanceMaybeChanged()V
    .locals 5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showUpdatingBalance()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgramInteractor:Lio0;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->programId:J

    iget-object v0, v0, Lio0;->a:Llo0;

    invoke-interface {v0, v1, v2}, Llo0;->a(J)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v2, Lh62;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lh62;-><init>(Lgh4;I)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    new-instance v4, Lf9;

    invoke-direct {v4, v1, v3}, Lf9;-><init>(Lgh4;I)V

    invoke-virtual {v0, v2, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->loadBonusProgram()V

    return-void
.end method

.method public final onRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->loadBonusProgram()V

    return-void
.end method

.method public final onShareCardClicked()V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->cardLinkSuffix:Ljava/lang/String;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgram:Lgo0;

    const/4 v3, 0x0

    const-string v4, "bonusProgram"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lgo0;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v5}, Ljf6;->d()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->bonusProgram:Lgo0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lgo0;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, v1, v2, v5, p0}, Ljs7;->shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v4}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, Laa4;->j(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showLoadingDialog(Z)V

    :cond_0
    return-void
.end method
