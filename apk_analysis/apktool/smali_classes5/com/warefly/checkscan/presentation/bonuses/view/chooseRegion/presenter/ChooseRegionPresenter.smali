.class public final Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountInteractor:Lc4;

.field private final flowRouter:Luf3;

.field private final fromCome:Lfl3;

.field private final interactor:Lp61;

.field private final preferences:Ljf6;

.field private final querySubject:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luf3;Lp61;Lc4;Ljf6;Lfl3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->accountInteractor:Lc4;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->preferences:Ljf6;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->fromCome:Lfl3;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->querySubject:Lct6;

    return-void
.end method

.method public static final synthetic access$queryRegion(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->queryRegion(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateNearestRegions(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;Ldu4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->updateNearestRegions(Ldu4;)V

    return-void
.end method

.method private final changeCity(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->accountInteractor:Lc4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lc4;->b:Lj5;

    invoke-interface {v1, p1}, Lj5;->j(Ljava/lang/String;)Lp08;

    move-result-object v1

    new-instance v2, Ls4;

    invoke-direct {v2, v0, p1}, Ls4;-><init>(Lc4;Ljava/lang/String;)V

    new-instance p1, Ly3;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Ly3;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, v1, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v0, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$b;

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$c;

    invoke-static {p1, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final exitFromScreen()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->fromCome:Lfl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    new-array v0, v1, [Llk3;

    sget-object v1, Lhi7;->a:Lhi7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method private final queryRegion(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lp61;->a:Lo17;

    new-instance v2, Ldu4;

    iget-object v0, v0, Lp61;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->c()D

    move-result-wide v3

    invoke-interface {v0}, Ljf6;->l()D

    move-result-wide v5

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Ldu4;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    const/16 v0, 0xa

    invoke-interface {v1, p1, v2, v0}, Lo17;->b(Ljava/lang/String;Ldu4;I)Lmz7;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final updateNearestRegions(Ldu4;)V
    .locals 12

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    iget-object v0, p1, Lp61;->c:Ljf6;

    iget-object v1, p1, Lp61;->a:Lo17;

    new-instance v2, Ldu4;

    invoke-interface {v0}, Ljf6;->c()D

    move-result-wide v3

    invoke-interface {v0}, Ljf6;->l()D

    move-result-wide v5

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Ldu4;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    const/16 v0, 0x1e

    const-string v3, ""

    invoke-interface {v1, v3, v2, v0}, Lo17;->b(Ljava/lang/String;Ldu4;I)Lmz7;

    move-result-object v0

    new-instance v1, Lq61;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lq61;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Ln61;

    invoke-direct {p1, v1}, Ln61;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v1, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic updateNearestRegions$default(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;Ldu4;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->updateNearestRegions(Ldu4;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->fromCome:Lfl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->a0()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 6

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    iget-object v0, v0, Lp61;->i:Lct6;

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v3, v2, v4}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    iget-object v0, v0, Lp61;->h:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq5;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;)V

    invoke-static {v0, v3, v1, v4}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    new-instance v1, Ll17;

    iget-object v0, v0, Lp61;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v5

    invoke-interface {v0}, Ljf6;->h1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Ll17;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Ll17;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;->showSelectedRegion(Ll17;)V

    :cond_0
    invoke-static {p0, v3, v2, v3}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->updateNearestRegions$default(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;Ldu4;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->querySubject:Lct6;

    sget-object v1, Ln00;->LATEST:Ln00;

    invoke-virtual {v0, v1}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;)V

    invoke-static {v0, v1, v4}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onQueryChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->querySubject:Lct6;

    invoke-virtual {p0, p1}, Lct6;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRegionSelected(Ll17;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ll17;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->changeCity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->interactor:Lp61;

    invoke-virtual {v0, p1}, Lp61;->b(Ll17;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->flowRouter:Luf3;

    const-string v1, "PERSONAL_DATA_CITY_CHANGED_KEY"

    invoke-virtual {p1}, Ll17;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Luf3;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->exitFromScreen()V

    return-void
.end method
