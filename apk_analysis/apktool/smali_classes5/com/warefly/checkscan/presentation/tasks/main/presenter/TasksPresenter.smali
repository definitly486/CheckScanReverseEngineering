.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lam8$b;
.implements Lpm8$b;
.implements Lmm8$a;
.implements Ltl8$a;
.implements Leo0$a;
.implements Lar1$a;
.implements Lfe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$a;,
        Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;,
        Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;",
        ">;",
        "Lam8$b;",
        "Lpm8$b;",
        "Lmm8$a;",
        "Ltl8$a;",
        "Leo0$a;",
        "Lar1$a;",
        "Lfe;"
    }
.end annotation


# static fields
.field public static final COUNTDOWN_TICK_MILLIS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$a;


# instance fields
.field private adOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lw48;",
            ">;"
        }
    .end annotation
.end field

.field private final content:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Lyo8;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countdownEnds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private countdownJob:Lmb4;

.field private final countdownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lxg5<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final desktopInteractor:Lzl2;

.field private final fetchAdOrderUseCase:Lp63;

.field private fetchJob:Lmb4;

.field private final fetchTaskActionUseCase:Lo83;

.field private final flowRouter:Luf3;

.field private final interactor:Lvn8;

.field private isBannerFetchInProgress:Z

.field private isFirstFetch:Z

.field private final loadingContent:Li57$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li57$c<",
            "Lyo8;",
            ">;"
        }
    .end annotation
.end field

.field private final resolveTaskOpenTargetUseCase:Lc47;

.field private final saveShowcaseClick:Lbc7;

.field private final saveShowcaseContext:Lcc7;

.field private final sendBannerWatchUseCase:Lmo7;

.field private final showAdLoading:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final showcaseAnalytics:Lup8;

.field private final showcaseRenderState:Lqw7;

.field private showcaseResponse:Lyo8;

.field private showcaseRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lsw7;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tasksReason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->Companion:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Lvn8;Lzl2;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lp63;Lo83;Lc47;Lmo7;Lup8;Lcc7;Lbc7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->interactor:Lvn8;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->desktopInteractor:Lzl2;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->tasksReason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchAdOrderUseCase:Lp63;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchTaskActionUseCase:Lo83;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendBannerWatchUseCase:Lmo7;

    iput-object p9, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    iput-object p10, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->saveShowcaseContext:Lcc7;

    iput-object p11, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->saveShowcaseClick:Lbc7;

    new-instance p1, Lrw7;

    invoke-direct {p1}, Lrw7;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRenderState:Lqw7;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRows:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownEnds:Ljava/util/Map;

    sget-object p1, Lw48;->YANDEX:Lw48;

    sget-object p2, Lw48;->VK:Lw48;

    filled-new-array {p1, p2}, [Lw48;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->adOrder:Ljava/util/List;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showAdLoading:Lxg5;

    new-instance p7, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-direct {p7, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    if-nez p2, :cond_0

    sget-object p3, Lyl8;->a:Lyl8;

    goto :goto_1

    :cond_0
    sget-object p3, Lem8;->a:Lem8;

    :goto_1
    invoke-virtual {p7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lyo8;

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-direct/range {p2 .. p7}, Lyo8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Li57$c;

    invoke-direct {p1, p2}, Li57$c;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->loadingContent:Li57$c;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isFirstFetch:Z

    return-void
.end method

.method public static final synthetic access$getContent$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getCountdownEnds$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownEnds:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getCountdownMap$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ILkk1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->handleClaimResult(ILkk1;)V

    return-void
.end method

.method public static final synthetic access$hasLoadedContent(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->hasLoadedContent()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$keepShownBanner(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Li57;)Li57;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->keepShownBanner(Li57;)Li57;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendBannerShown(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendBannerShown(Z)V

    return-void
.end method

.method public static final synthetic access$setAdOrder$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->adOrder:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setBannerFetchInProgress$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isBannerFetchInProgress:Z

    return-void
.end method

.method public static final synthetic access$setClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->setClaimButtonLoading(IZ)V

    return-void
.end method

.method public static final synthetic access$setShowcaseResponse$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lyo8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseResponse:Lyo8;

    return-void
.end method

.method public static final synthetic access$setShowcaseRows$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRows:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTimersForBonusPoints(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->setTimersForBonusPoints(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$updateCountdowns(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->updateCountdowns()V

    return-void
.end method

.method private final fetchContent(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isBannerFetchInProgress:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isBannerFetchInProgress:Z

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->interactor:Lvn8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lpn8;

    invoke-direct {v2, v0, p1, v1}, Lpn8;-><init>(Lvn8;ZLe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v0, v2}, Lud3;->b(Lhd3;Lo22;)Lhd3;

    move-result-object v0

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;

    invoke-direct {v2, v0, p1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;-><init>(Lde3;ZLcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$e;

    invoke-direct {p1, p0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, v2, p1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$f;

    invoke-direct {p1, p0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v0, p1}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchJob:Lmb4;

    return-void
.end method

.method public static synthetic fetchContent$default(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent(Z)V

    return-void
.end method

.method private final handleClaimResult(ILkk1;)V
    .locals 1

    instance-of v0, p2, Lno8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {v0, p1}, Lup8;->p(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_1

    check-cast p2, Lno8;

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p2, Lhn8;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {v0, p1}, Lup8;->j(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_1

    check-cast p2, Lhn8;

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final hasLoadedContent()Z
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li57;

    instance-of v1, v0, Li57$c;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->loadingContent:Li57$c;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final keepShownBanner(Li57;)Li57;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li57<",
            "Lyo8;",
            ">;)",
            "Li57<",
            "Lyo8;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Li57$c;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li57$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Li57$c;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_6

    iget-object p0, p0, Li57$c;->a:Ljava/lang/Object;

    check-cast p0, Lyo8;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lyo8;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lso8;

    instance-of v2, v2, Lzl8;

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_3
    check-cast v1, Lso8;

    if-eqz v1, :cond_6

    check-cast p1, Li57$c;

    iget-object p0, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p0, Lyo8;

    iget-object p1, p0, Lyo8;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lso8;

    instance-of v3, v2, Lzl8;

    if-eqz v3, :cond_4

    move-object v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {p0, v0}, Lyo8;->a(Lyo8;Ljava/util/ArrayList;)Lyo8;

    move-result-object p0

    new-instance p1, Li57$c;

    invoke-direct {p1, p0}, Li57$c;-><init>(Ljava/lang/Object;)V

    :cond_6
    return-object p1
.end method

.method private final openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$k;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->resolveTaskOpenTarget(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lll3;)V

    return-void
.end method

.method private final openTaskAction(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchTaskActionUseCase:Lo83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln83;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Ln83;-><init>(Lo83;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$l;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final openTaskFromDeeplink(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;)V
    .locals 2

    iget v0, p1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;->b:I

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->resolveTaskOpenTarget(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lll3;)V

    return-void
.end method

.method private final resolveTaskOpenTarget(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lll3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->resolveTaskOpenTargetUseCase:Lc47;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lb47;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lb47;-><init>(Lc47;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$n;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lll3;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Le02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public static synthetic sendAdWatched$default(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendAdWatched(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final sendBannerShown(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lkd$s0$c$a$b;

    invoke-direct {p0}, Lkd$s0$c$a$b;-><init>()V

    invoke-virtual {p0}, Lkd;->a()V

    :cond_0
    return-void
.end method

.method private final sendNewCurrencyBlockEvent(Lfo0$c;)V
    .locals 0

    sget-object p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lkd$s0$c$b$a;->e:Lkd$s0$c$b$a;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_1
    sget-object p0, Lkd$s0$b$a;->e:Lkd$s0$b$a;

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method private final sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->saveShowcaseClick:Lbc7;

    iget-object v2, v2, Lbc7;->a:Lxp8;

    invoke-interface {v2, v1, v0}, Lxp8;->b(ILwp8;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseItemOf(ILjava/lang/String;)Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;->a:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v3

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget v0, v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseListSize()I

    move-result p0

    invoke-interface {v2, p1, p0, p2, v0}, Lup8;->q(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final setClaimButtonLoading(IZ)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li57;

    instance-of v3, v2, Li57$c;

    if-eqz v3, :cond_3

    check-cast v2, Li57$c;

    iget-object v2, v2, Li57$c;->a:Ljava/lang/Object;

    check-cast v2, Lyo8;

    iget-object v3, v2, Lyo8;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lso8;

    instance-of v6, v5, Lkz7;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lkz7;

    iget v8, v6, Lkz7;->a:I

    move/from16 v7, p1

    if-ne v8, v7, :cond_1

    iget-object v9, v6, Lkz7;->b:Ljava/lang/String;

    iget-object v10, v6, Lkz7;->c:Ljava/lang/String;

    iget-object v11, v6, Lkz7;->d:Ljava/lang/String;

    iget-object v12, v6, Lkz7;->e:Ljava/util/List;

    iget-boolean v13, v6, Lkz7;->f:Z

    iget-boolean v14, v6, Lkz7;->g:Z

    iget-boolean v15, v6, Lkz7;->h:Z

    iget-object v5, v6, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    move-object/from16 p0, v3

    iget-object v3, v6, Lkz7;->k:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-boolean v3, v6, Lkz7;->l:Z

    iget-object v6, v6, Lkz7;->m:Lpw7;

    new-instance v7, Lkz7;

    move/from16 v16, p2

    move/from16 v19, v3

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    invoke-direct/range {v7 .. v20}, Lkz7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Ljava/lang/String;ZLpw7;)V

    move-object v5, v7

    goto :goto_1

    :cond_1
    move-object/from16 p0, v3

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    goto :goto_0

    :cond_2
    invoke-static {v2, v4}, Lyo8;->a(Lyo8;Ljava/util/ArrayList;)Lyo8;

    move-result-object v2

    new-instance v3, Li57$c;

    invoke-direct {v3, v2}, Li57$c;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    :cond_3
    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final setCountdowns(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownEnds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownEnds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->updateCountdowns()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$p;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$p;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownJob:Lmb4;

    return-void
.end method

.method private final setTimersForBonusPoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lso8;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso8;

    instance-of v2, v1, Lir0;

    if-eqz v2, :cond_2

    check-cast v1, Lir0;

    iget-object v1, v1, Lir0;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfo0;

    iget-object v3, v2, Lfo0;->d:Lfo0$a;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lfo0$a;->d:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget v2, v2, Lfo0;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lrh9;

    if-eqz v2, :cond_0

    check-cast v1, Lrh9;

    iget-object v2, v1, Lrh9;->d:Lrh9$a;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lrh9$a;->d:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget v1, v1, Lrh9;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->setCountdowns(Ljava/util/Map;)V

    return-void
.end method

.method private final showcaseItemOf(ILjava/lang/String;)Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;
    .locals 5

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRows:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsw7;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;

    invoke-interface {v3}, Lsw7;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v4

    :cond_4
    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private final showcaseListSize()I
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRows:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final subscribeOnEvents()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$q;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    invoke-virtual {v0, v1, v2}, Lzl2;->c(Ly22;Lbm3;)V

    return-void
.end method

.method private final toShowcaseBlock(Lfo0$c;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const-string p0, "daily_bonus"

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "daily_ad"

    return-object p0
.end method

.method private final updateCountdowns()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownEnds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;

    invoke-direct {v3, v0, v1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$r;-><init>(JLcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    invoke-static {v2, v3}, Lnn1;->z(Ljava/lang/Iterable;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final getCountdownFlow(I)Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ly68<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->countdownMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly68;

    return-object p0
.end method

.method public final getShowcaseRenderState()Lqw7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRenderState:Lqw7;

    return-object p0
.end method

.method public final getShowcaseRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsw7;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseRows:Ljava/util/List;

    return-object p0
.end method

.method public final onAdDismissedWithoutReward()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    const-string v0, "dismissed"

    invoke-interface {p0, v0}, Lup8;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdNoFill()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    const-string v0, "no_fill"

    invoke-interface {p0, v0}, Lup8;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdShown()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {p0}, Lup8;->d()V

    return-void
.end method

.method public onBannerClicked(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$s0$a$a$a;

    const-string v1, "Clicks"

    invoke-direct {v0, p1, v1}, Lkd$s0$a$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    const-string v0, "banner"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBannerOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onBonusPointsClaimClicked(ILfo0$c;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendNewCurrencyBlockEvent(Lfo0$c;)V

    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->toShowcaseBlock(Lfo0$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance p2, Lli7;

    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;-><init>(I)V

    invoke-direct {p2, v0}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p2}, Lo87;->d(Ldf7;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->adOrder:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showAd(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClaimReward(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->interactor:Lvn8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lnn8;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lnn8;-><init>(Lvn8;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;ILe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onCompletedTasksClicked()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance v0, Lli7;

    sget-object v1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CompletedTasks;->b:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CompletedTasks;

    invoke-direct {v0, v1}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onDailyBannerClicked(I)V
    .locals 2

    new-instance v0, Lkd$s0$c$a$a;

    invoke-direct {v0}, Lkd$s0$c$a$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    const-string v0, "daily_bonus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance v0, Lli7;

    new-instance v1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    invoke-direct {v1, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;-><init>(I)V

    invoke-direct {v0, v1}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onDailyTaskCardClicked(I)V
    .locals 2

    new-instance v0, Lkd$s0$c$a$a;

    invoke-direct {v0}, Lkd$s0$c$a$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$s0$f$a$c;

    invoke-direct {v0, p1}, Lkd$s0$f$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    const-string v0, "daily_bonus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance v0, Lli7;

    new-instance v1, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    invoke-direct {v1, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;-><init>(I)V

    invoke-direct {v0, v1}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showToolbar(Z)V

    :cond_0
    new-instance v0, Lkd$s0$e$a;

    const-string v1, "Shows"

    invoke-static {v1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Tasks Showcase"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchAdOrderUseCase:Lp63;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lo63;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo63;-><init>(Lp63;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$h;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->subscribeOnEvents()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showAdLoading:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$j;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->tasksReason:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    instance-of v1, v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->openTaskFromDeeplink(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance v1, Lli7;

    invoke-direct {v1, v0}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isFirstFetch:Z

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->isFirstFetch:Z

    return-void
.end method

.method public final onShowcaseItemShown(Llw7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {p0, p1}, Lup8;->t(Llw7;)V

    return-void
.end method

.method public final onShowcaseRenderStarted(Z)V
    .locals 8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseResponse:Lyo8;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->saveShowcaseContext:Lcc7;

    new-instance v1, Lwp8;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lyo8;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object v4, p1, Lyo8;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz p1, :cond_2

    iget-object v5, p1, Lyo8;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz p1, :cond_3

    iget-object v2, p1, Lyo8;->e:Ljava/lang/String;

    :cond_3
    const/4 v6, 0x0

    move-object v7, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lwp8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcc7;->a:Lxp8;

    invoke-interface {p1, v1}, Lxp8;->a(Lwp8;)V

    :cond_4
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseListSize()I

    move-result p0

    invoke-interface {p1, p0}, Lup8;->n(I)V

    return-void
.end method

.method public onTaskClicked(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Z)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$s0$f$a$c;

    invoke-direct {v0, p1}, Lkd$s0$f$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    const-string v0, "task"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendShowcaseClick(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->flowRouter:Luf3;

    new-instance p1, Lli7;

    invoke-direct {p1, p2}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    instance-of p3, p2, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->openSkipDetailsTask(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->openTaskAction(I)V

    return-void
.end method

.method public final refreshContent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->content:Lxg5;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->loadingContent:Li57$c;

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->turnOffRefreshing()V

    :cond_0
    return-void
.end method

.method public final sendAdWatched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$s0$b$b;->e:Lkd$s0$b$b;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showcaseAnalytics:Lup8;

    invoke-interface {v0}, Lup8;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->interactor:Lvn8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lun8;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lun8;-><init>(Lvn8;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;

    invoke-direct {p2, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p1, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final sendBannerShownEvent(I)V
    .locals 2

    new-instance v0, Lkd$s0$a$a$b;

    const-string v1, "Shows"

    invoke-direct {v0, p1, v1}, Lkd$s0$a$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

.method public sendDailyTaskShownEvent()V
    .locals 0

    new-instance p0, Lkd$s0$c$a$b;

    invoke-direct {p0}, Lkd$s0$c$a$b;-><init>()V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public sendTaskShownEvent(I)V
    .locals 0

    new-instance p0, Lkd$s0$f$a$e;

    invoke-direct {p0, p1}, Lkd$s0$f$a$e;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->showAdLoading:Lxg5;

    :cond_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
