.class public final Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lvm8$b;
.implements Lza1$a;
.implements Lva1$a;
.implements Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;",
        ">;",
        "Lvm8$b;",
        "Lza1$a;",
        "Lva1$a;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;"
    }
.end annotation


# instance fields
.field private final claimCheckboxTaskUseCase:Lhk1;

.field private final fetchCheckboxDetailsUseCase:Lv63;

.field private final fetchCheckboxTaskActionUseCase:Lb73;

.field private final flowRouter:Luf3;

.field private final sheetContent:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljb1;",
            ">;"
        }
    .end annotation
.end field

.field private final taskId:I


# direct methods
.method public constructor <init>(ILv63;Lb73;Lhk1;Luf3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->fetchCheckboxDetailsUseCase:Lv63;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->fetchCheckboxTaskActionUseCase:Lb73;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->claimCheckboxTaskUseCase:Lhk1;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->flowRouter:Luf3;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    return-void
.end method

.method public static final synthetic access$getSheetContent$p(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Lkk1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->handleClaimResult(Lkk1;)V

    return-void
.end method

.method public static final synthetic access$setActionButtonLoading(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->setActionButtonLoading(Z)V

    return-void
.end method

.method public static final synthetic access$setClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->setClaimButtonLoading(Z)V

    return-void
.end method

.method private final checkIfActivateButtonShouldBeEnabled()V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb1;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v0, Ljb1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lgc1;

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgc1;

    iget-boolean v2, v2, Lgc1;->d:Z

    if-nez v2, :cond_4

    move v4, v3

    :cond_5
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v5, v2, Lxa1;

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Lxa1;

    iget-object v6, v5, Lxa1;->a:Lxa1$a;

    sget-object v7, Lxa1$a;->Activate:Lxa1$a;

    if-ne v6, v7, :cond_6

    const/16 v2, 0x1b

    invoke-static {v5, v4, v3, v2}, Lxa1;->d(Lxa1;ZZI)Lxa1;

    move-result-object v2

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_8
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljb1;

    if-eqz v2, :cond_9

    iget-object v2, v2, Ljb1;->b:Lb06;

    new-instance v3, Ljb1;

    invoke-direct {v3, v1, v2}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    invoke-interface {p0, v0, v3}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    return-void
.end method

.method private final handleClaimResult(Lkk1;)V
    .locals 1

    instance-of v0, p1, Lno8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->taskId:I

    check-cast p1, Lno8;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p1, Lhn8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    if-eqz p0, :cond_1

    check-cast p1, Lhn8;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final setActionButtonLoading(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Ljb1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v3, v2, Lxa1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lxa1;

    iget-object v4, v3, Lxa1;->a:Lxa1$a;

    sget-object v5, Lxa1$a;->Activate:Lxa1$a;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x0

    const/16 v4, 0x17

    invoke-static {v3, v2, p1, v4}, Lxa1;->d(Lxa1;ZZI)Lxa1;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljb1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ljb1;->b:Lb06;

    new-instance v2, Ljb1;

    invoke-direct {v2, v1, v0}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0, p1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    return-void
.end method

.method private final setClaimButtonLoading(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Ljb1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v3, v2, Lxa1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lxa1;

    iget-object v4, v3, Lxa1;->a:Lxa1$a;

    sget-object v5, Lxa1$a;->Reward:Lxa1$a;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x0

    const/16 v4, 0x17

    invoke-static {v3, v2, p1, v4}, Lxa1;->d(Lxa1;ZZI)Lxa1;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljb1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ljb1;->b:Lb06;

    new-instance v2, Ljb1;

    invoke-direct {v2, v1, v0}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0, p1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    return-void
.end method

.method private final updateCheckboxes(Lgc1;)V
    .locals 13

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Ljb1;->a:Ljava/util/List;

    iget-boolean v1, p1, Lgc1;->d:Z

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lgc1;->c:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_1
    invoke-interface {v1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljb1;

    if-eqz v5, :cond_4

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpz3;

    instance-of v9, v8, Lgc1;

    if-eqz v9, :cond_2

    check-cast v8, Lgc1;

    invoke-static {v8, v2}, Lgc1;->d(Lgc1;Z)Lgc1;

    move-result-object v8

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v5, v5, Ljb1;->b:Lb06;

    new-instance v6, Ljb1;

    invoke-direct {v6, v7, v5}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_1

    :cond_4
    move-object v6, v4

    :goto_1
    invoke-interface {v1, p1, v6}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    :cond_6
    invoke-interface {v1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljb1;

    if-eqz v6, :cond_9

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpz3;

    instance-of v10, v9, Lgc1;

    if-eqz v10, :cond_7

    iget v10, p1, Lgc1;->a:I

    move-object v11, v9

    check-cast v11, Lgc1;

    iget v12, v11, Lgc1;->a:I

    if-ne v10, v12, :cond_7

    iget-boolean v9, v11, Lgc1;->d:Z

    xor-int/2addr v9, v2

    invoke-static {v11, v9}, Lgc1;->d(Lgc1;Z)Lgc1;

    move-result-object v9

    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v6, v6, Ljb1;->b:Lb06;

    new-instance v7, Ljb1;

    invoke-direct {v7, v8, v6}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_3

    :cond_9
    move-object v7, v4

    :goto_3
    invoke-interface {v1, v5, v7}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_4
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->checkIfActivateButtonShouldBeEnabled()V

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->fetchCheckboxDetailsUseCase:Lv63;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu63;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lu63;-><init>(Lv63;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onActivateClicked(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v0, v2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->fetchCheckboxTaskActionUseCase:Lb73;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->taskId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, La73;

    invoke-direct {v2, p1, v1, v0}, La73;-><init>(Lb73;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$b;

    invoke-direct {v1, p0, v0}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p1, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBadgeQuestionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCheckRewardClicked()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->claimCheckboxTaskUseCase:Lhk1;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lgk1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgk1;-><init>(Lhk1;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$c;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onCheckboxClicked(Lgc1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->updateCheckboxes(Lgc1;)V

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

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->sheetContent:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;->loadContent()V

    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method
