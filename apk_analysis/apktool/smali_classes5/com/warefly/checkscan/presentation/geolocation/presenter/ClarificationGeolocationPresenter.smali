.class public final Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountInteractor:Lc4;

.field private final analyticsRepository:Lqe;

.field private final catalogInteractor:Lp61;

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;

.field private regionId:I

.field private regionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luf3;Lp61;Lc4;Ljf6;Lqe;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->accountInteractor:Lc4;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->preferencesRepository:Ljf6;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->analyticsRepository:Lqe;

    const/4 p1, -0x1

    iput p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkDefinedCity(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;Ll17;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->checkDefinedCity(Ll17;)V

    return-void
.end method

.method public static final synthetic access$getFirstClosestRegions(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;Ldu4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getFirstClosestRegions(Ldu4;)V

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$updateByCity(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateByCity()V

    return-void
.end method

.method private final checkDefinedCity(Ll17;)V
    .locals 2

    invoke-virtual {p1}, Ll17;->a()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lkd$i$a$b$a;

    invoke-direct {p1}, Lkd$i$a$b$a;-><init>()V

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->flowRouter:Luf3;

    new-instance p1, Lcg7;

    sget-object v0, Lfl3;->FailClarification:Lfl3;

    invoke-direct {p1, v0}, Lcg7;-><init>(Lfl3;)V

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void

    :cond_0
    new-instance v0, Lkd$i$a$b$b;

    const-string v1, "Success"

    invoke-direct {v0, v1}, Lkd$i$a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    invoke-virtual {v0, p1}, Lp61;->b(Ll17;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showSuggestCity(Ll17;)V

    :cond_1
    invoke-virtual {p1}, Ll17;->a()I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionId:I

    invoke-virtual {p1}, Ll17;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionName:Ljava/lang/String;

    return-void
.end method

.method private final confirmCity(I)V
    .locals 3

    new-instance v0, Lkd$i$a$a$c;

    const-string v1, "Ok"

    invoke-direct {v0, v1}, Lkd$i$a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->accountInteractor:Lc4;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

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

    new-instance v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v1, Lqk1;

    invoke-direct {v1, v0}, Lqk1;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$a;)V

    new-instance v0, Lwz7;

    invoke-direct {v0, p1, v1}, Lwz7;-><init>(Lmz7;Lqx1;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v1, Lyo0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lyo0;-><init>(Lgh4;I)V

    new-instance p1, Lxz7;

    invoke-direct {p1, v0, v1}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lrk1;

    invoke-direct {v0, p0}, Lrk1;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v1, Luz7;

    invoke-direct {v1, p1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    const-string v0, "confirmCity"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final confirmCity$lambda$6(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final confirmCity$lambda$7(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final confirmCity$lambda$8(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showButtonLoading(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->confirmCity$lambda$8(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getBonusRegionByIP$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private static final getBonusRegionByIP$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getBonusRegionByIP$lambda$5(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getFirstClosestRegions(Ldu4;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    invoke-virtual {v0, p1}, Lp61;->a(Ldu4;)Lp08;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v1, Liv;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Liv;-><init>(Lgh4;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v3, Lpk1;

    invoke-direct {v3, v0}, Lpk1;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$g;)V

    invoke-virtual {p1, v1, v3}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v2, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getFirstClosestRegions$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getFirstClosestRegions$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getFirstClosestRegions$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$e;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getBonusRegionByIP$lambda$5(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->confirmCity$lambda$6(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->confirmCity$lambda$7(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getFirstClosestRegions$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateByCity()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    new-instance v1, Ll17;

    iget v2, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionId:I

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ll17;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lp61;->b(Ll17;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->a0()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->flowRouter:Luf3;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method private static final updateLocation$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final updateLocation$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBonusRegionByIP()V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    iget-object v0, v0, Lp61;->a:Lo17;

    invoke-interface {v0}, Lo17;->a()Lmz7;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v3, Luk1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Luk1;-><init>(Lgh4;I)V

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v5, Lvk1;

    invoke-direct {v5, v2, v4}, Lvk1;-><init>(Lgh4;I)V

    invoke-virtual {v0, v3, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final pressedCorrect()V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->regionId:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->confirmCity(I)V

    return-void
.end method

.method public final pressedNo()V
    .locals 3

    new-instance v0, Lkd$i$a$a$a;

    const-string v1, "Change"

    invoke-direct {v0, v1}, Lkd$i$a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->flowRouter:Luf3;

    new-instance v0, Lcg7;

    sget-object v1, Lfl3;->Location:Lfl3;

    invoke-direct {v0, v1}, Lcg7;-><init>(Lfl3;)V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final setLocationProperty(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->analyticsRepository:Lqe;

    invoke-interface {p0, p1}, Lqe;->a(Z)V

    return-void
.end method

.method public final updateLocation()V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->catalogInteractor:Lp61;

    iget-object v0, v0, Lp61;->h:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq5;

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v3, Lsk1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lsk1;-><init>(Lnl3;I)V

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V

    new-instance v5, Ltk1;

    invoke-direct {v5, v2, v4}, Ltk1;-><init>(Lgh4;I)V

    new-instance v2, Lhh4;

    sget-object v4, Lrm3;->c:Lrm3$d;

    invoke-direct {v2, v3, v5, v4}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {v0, v2}, Ltq5;->a(Lls5;)V

    const/4 v0, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
