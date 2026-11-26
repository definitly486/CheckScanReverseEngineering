.class public final Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lvq6$a;
.implements Lpq6$a;
.implements Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;",
        ">;",
        "Lvq6$a;",
        "Lpq6$a;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;"
    }
.end annotation


# instance fields
.field private final claimPromocodeTaskUseCase:Ljk1;

.field private final desktopInteractor:Lzl2;

.field private final fetchPromocodeCodeUseCase:Lw73;

.field private final fetchPromocodeTaskUseCase:Ly73;

.field private final flowRouter:Luf3;

.field private final sheetContent:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ltq6;",
            ">;"
        }
    .end annotation
.end field

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method public constructor <init>(ILuf3;Ly73;Lw73;Ljk1;Lzl2;Lup8;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->fetchPromocodeTaskUseCase:Ly73;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->fetchPromocodeCodeUseCase:Lw73;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->claimPromocodeTaskUseCase:Ljk1;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->desktopInteractor:Lzl2;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    return-void
.end method

.method public static final synthetic access$getDesktopInteractor$p(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;)Lzl2;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->desktopInteractor:Lzl2;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getSheetContent$p(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Lkk1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->handleClaimResult(Lkk1;)V

    return-void
.end method

.method public static final synthetic access$handlePromocodeActivate(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->handlePromocodeActivate(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showActivateButtonLoading(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showActivateButtonLoading(Z)V

    return-void
.end method

.method public static final synthetic access$showClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showClaimButtonLoading(Z)V

    return-void
.end method

.method private final handleClaimResult(Lkk1;)V
    .locals 2

    instance-of v0, p1, Lno8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->p(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    check-cast p1, Lno8;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p1, Lhn8;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->j(I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    if-eqz p0, :cond_1

    check-cast p1, Lhn8;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final handlePromocodeActivate(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq6;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Ltq6;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    instance-of v5, v5, Lsq6;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_7

    :goto_3
    if-eqz v3, :cond_7

    iget-object v0, v0, Ltq6;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lsq6;

    if-eqz v4, :cond_4

    check-cast v0, Lsq6;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Lsq6;

    invoke-direct {v3, p1}, Lsq6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_5
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ltq6;

    if-eqz v0, :cond_6

    iget v3, v0, Ltq6;->a:I

    iget-object v0, v0, Ltq6;->c:Lb06;

    new-instance v4, Ltq6;

    invoke-direct {v4, v3, v1, v0}, Ltq6;-><init>(ILjava/util/List;Lb06;)V

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-interface {p0, p1, v4}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_7
    return-void
.end method

.method private final showActivateButtonLoading(Z)V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq6;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Ltq6;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    instance-of v6, v5, Lqq6;

    if-eqz v6, :cond_0

    check-cast v5, Lqq6;

    iget-object v5, v5, Lqq6;->a:Lqq6$a;

    sget-object v6, Lqq6$a;->Activate:Lqq6$a;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_7

    :goto_3
    if-eqz v3, :cond_7

    iget-object v0, v0, Ltq6;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lqq6;

    if-eqz v4, :cond_4

    check-cast v0, Lqq6;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, p1}, Lqq6;->d(Lqq6;Z)Lqq6;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_5
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ltq6;

    if-eqz v0, :cond_6

    iget v3, v0, Ltq6;->a:I

    iget-object v0, v0, Ltq6;->c:Lb06;

    new-instance v4, Ltq6;

    invoke-direct {v4, v3, v1, v0}, Ltq6;-><init>(ILjava/util/List;Lb06;)V

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-interface {p0, p1, v4}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_7
    return-void
.end method

.method private final showClaimButtonLoading(Z)V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq6;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Ltq6;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    instance-of v6, v5, Lqq6;

    if-eqz v6, :cond_0

    check-cast v5, Lqq6;

    iget-object v5, v5, Lqq6;->a:Lqq6$a;

    sget-object v6, Lqq6$a;->Reward:Lqq6$a;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_7

    :goto_3
    if-eqz v3, :cond_7

    iget-object v0, v0, Ltq6;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lqq6;

    if-eqz v4, :cond_4

    check-cast v0, Lqq6;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, p1}, Lqq6;->d(Lqq6;Z)Lqq6;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_5
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ltq6;

    if-eqz v0, :cond_6

    iget v3, v0, Ltq6;->a:I

    iget-object v0, v0, Ltq6;->c:Lb06;

    new-instance v4, Ltq6;

    invoke-direct {v4, v3, v1, v0}, Ltq6;-><init>(ILjava/util/List;Lb06;)V

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-interface {p0, p1, v4}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_7
    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->fetchPromocodeTaskUseCase:Ly73;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lx73;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lx73;-><init>(Ly73;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onActivatePromocodeClicked(Ljava/lang/String;IZ)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$s0$f$a$a;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-direct {v0, v1}, Lkd$s0$f$a$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->h(I)V

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->fetchPromocodeCodeUseCase:Lw73;

    iget v6, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lv73;

    const/4 v7, 0x0

    move v5, p2

    move v3, p3

    invoke-direct/range {v2 .. v7}, Lv73;-><init>(ZLw73;IILe02;)V

    new-instance p2, Ltb7;

    invoke-direct {p2, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p2}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p2

    new-instance p3, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Ljava/lang/String;Le02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, p2, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBadgeQuestionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCheckRewardClicked()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->claimPromocodeTaskUseCase:Ljk1;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lik1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lik1;-><init>(Ljk1;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$c;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onConditionsClicked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->e(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;->sheetContent:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method
