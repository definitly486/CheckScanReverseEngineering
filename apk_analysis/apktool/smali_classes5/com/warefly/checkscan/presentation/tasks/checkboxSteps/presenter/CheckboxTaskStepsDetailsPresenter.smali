.class public final Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lvm8$b;
.implements Lub1$a;
.implements Lob1$a;
.implements Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;
.implements Llb1$a;
.implements Lrb1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;",
        ">;",
        "Lvm8$b;",
        "Lub1$a;",
        "Lob1$a;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;",
        "Llb1$a;",
        "Lrb1$a;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$a;

.field private static final WAIT_TIME_UNTIL_USER_ON_WEB:J = 0x1388L


# instance fields
.field private final claimCheckboxTaskStepsUseCase:Lfk1;

.field private final desktopInteractor:Lzl2;

.field private final fetchCheckboxStepsDetailsUseCase:Lx63;

.field private final fetchCheckboxStepsSubtaskUseCase:Lz63;

.field private final flowRouter:Luf3;

.field private final sheetContent:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lec1;",
            ">;"
        }
    .end annotation
.end field

.field private final taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->Companion:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$a;

    return-void
.end method

.method public constructor <init>(ILfk1;Lx63;Lz63;Lzl2;Luf3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->claimCheckboxTaskStepsUseCase:Lfk1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->fetchCheckboxStepsDetailsUseCase:Lx63;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->fetchCheckboxStepsSubtaskUseCase:Lz63;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->desktopInteractor:Lzl2;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->flowRouter:Luf3;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    return-void
.end method

.method public static final synthetic access$getSheetContent$p(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Lkk1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->handleClaimResult(Lkk1;)V

    return-void
.end method

.method public static final synthetic access$setActionBlockButtonLoading(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->setActionBlockButtonLoading(Z)V

    return-void
.end method

.method public static final synthetic access$setCheckboxActionButtonLoading(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->setCheckboxActionButtonLoading(Z)V

    return-void
.end method

.method public static final synthetic access$setClaimButtonLoading(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->setClaimButtonLoading(Z)V

    return-void
.end method

.method private final handleClaimResult(Lkk1;)V
    .locals 1

    instance-of v0, p1, Lno8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    check-cast p1, Lno8;

    invoke-interface {v0, p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of v0, p1, Lhn8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz p0, :cond_1

    check-cast p1, Lhn8;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final setActionBlockButtonLoading(Z)V
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lec1;->a:Ljava/util/List;

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

    instance-of v3, v2, Lmb1;

    if-eqz v3, :cond_0

    check-cast v2, Lmb1;

    iget-object v3, v2, Lmb1;->b:Lmb1$a;

    iget-object v5, v3, Lmb1$a;->a:Ljava/lang/String;

    iget-boolean v6, v3, Lmb1$a;->b:Z

    iget-boolean v8, v3, Lmb1$a;->d:Z

    iget-boolean v9, v3, Lmb1$a;->e:Z

    new-instance v4, Lmb1$a;

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lmb1$a;-><init>(Ljava/lang/String;ZZZZ)V

    iget-object p1, v2, Lmb1;->a:Ljava/lang/String;

    iget v3, v2, Lmb1;->c:I

    iget-boolean v2, v2, Lmb1;->d:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lmb1;

    invoke-direct {v5, p1, v4, v3, v2}, Lmb1;-><init>(Ljava/lang/String;Lmb1$a;IZ)V

    move-object v2, v5

    goto :goto_1

    :cond_0
    move v7, p1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v7

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lec1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lec1;->b:Lb06;

    new-instance v2, Lec1;

    invoke-direct {v2, v1, v0}, Lec1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p0, p1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    return-void
.end method

.method private final setCheckboxActionButtonLoading(Z)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lec1;->a:Ljava/util/List;

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

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v4, v2, Lsb1;

    if-eqz v4, :cond_0

    check-cast v2, Lsb1;

    iget-object v4, v2, Lsb1;->e:Lsb1$a;

    iget-object v6, v4, Lsb1$a;->a:Ljava/lang/String;

    iget-boolean v7, v4, Lsb1$a;->b:Z

    iget-boolean v8, v4, Lsb1$a;->c:Z

    iget-boolean v10, v4, Lsb1$a;->e:Z

    new-instance v5, Lsb1$a;

    move v9, p1

    invoke-direct/range {v5 .. v10}, Lsb1$a;-><init>(Ljava/lang/String;ZZZZ)V

    const/16 p1, 0x2f

    invoke-static {v2, v3, v5, p1}, Lsb1;->d(Lsb1;Ljava/util/ArrayList;Lsb1$a;I)Lsb1;

    move-result-object v2

    goto :goto_1

    :cond_0
    move v9, p1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v9

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lec1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lec1;->b:Lb06;

    new-instance v2, Lec1;

    invoke-direct {v2, v1, v0}, Lec1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-interface {p0, p1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    return-void
.end method

.method private final setClaimButtonLoading(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lec1;->a:Ljava/util/List;

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

    instance-of v3, v2, Lpb1;

    if-eqz v3, :cond_0

    check-cast v2, Lpb1;

    iget-object v3, v2, Lpb1;->a:Ljava/lang/String;

    iget-boolean v4, v2, Lpb1;->b:Z

    iget-boolean v2, v2, Lpb1;->d:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lpb1;

    invoke-direct {v5, v3, v4, p1, v2}, Lpb1;-><init>(Ljava/lang/String;ZZZ)V

    move-object v2, v5

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lec1;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lec1;->b:Lb06;

    new-instance v2, Lec1;

    invoke-direct {v2, v1, v0}, Lec1;-><init>(Ljava/util/List;Lb06;)V

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

.method private final subscribeOnEvents()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    invoke-virtual {v0, v1, v2}, Lzl2;->c(Ly22;Lbm3;)V

    return-void
.end method

.method private final updateCheckboxes(Lfc1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    invoke-interface {v2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec1;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v2, Lec1;->a:Ljava/util/List;

    iget-boolean v3, v1, Lfc1;->d:Z

    const/16 v4, 0x3b

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lfc1;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    :cond_1
    invoke-interface {v3}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lec1;

    if-eqz v1, :cond_5

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpz3;

    instance-of v11, v10, Lsb1;

    if-eqz v11, :cond_3

    check-cast v10, Lsb1;

    iget-object v11, v10, Lsb1;->c:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lfc1;

    invoke-static {v13, v5}, Lfc1;->d(Lfc1;Z)Lfc1;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v10, v12, v7, v4}, Lsb1;->d(Lsb1;Ljava/util/ArrayList;Lsb1$a;I)Lsb1;

    move-result-object v10

    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, v1, Lec1;->b:Lb06;

    new-instance v8, Lec1;

    invoke-direct {v8, v9, v1}, Lec1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_2

    :cond_5
    move-object v8, v7

    :goto_2
    invoke-interface {v3, v0, v8}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_6
    iget-object v0, v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    :goto_3
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lec1;

    if-eqz v8, :cond_b

    move-object v9, v2

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpz3;

    instance-of v12, v11, Lsb1;

    if-eqz v12, :cond_9

    check-cast v11, Lsb1;

    iget-object v12, v11, Lsb1;->c:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfc1;

    iget v15, v14, Lfc1;->a:I

    move/from16 v16, v5

    iget v5, v1, Lfc1;->a:I

    if-ne v15, v5, :cond_7

    iget-boolean v5, v14, Lfc1;->d:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v14, v5}, Lfc1;->d(Lfc1;Z)Lfc1;

    move-result-object v14

    :cond_7
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v16

    goto :goto_5

    :cond_8
    move/from16 v16, v5

    invoke-static {v11, v13, v7, v4}, Lsb1;->d(Lsb1;Ljava/util/ArrayList;Lsb1$a;I)Lsb1;

    move-result-object v11

    goto :goto_6

    :cond_9
    move/from16 v16, v5

    :goto_6
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v16

    goto :goto_4

    :cond_a
    move/from16 v16, v5

    iget-object v5, v8, Lec1;->b:Lb06;

    new-instance v8, Lec1;

    invoke-direct {v8, v10, v5}, Lec1;-><init>(Ljava/util/List;Lb06;)V

    goto :goto_7

    :cond_b
    move/from16 v16, v5

    move-object v8, v7

    :goto_7
    invoke-interface {v0, v3, v8}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    return-void

    :cond_c
    move/from16 v5, v16

    goto/16 :goto_3
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->fetchCheckboxStepsDetailsUseCase:Lx63;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lw63;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lw63;-><init>(Lx63;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBadgeQuestionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onButtonStepTaskClicked(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance p2, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x7

    invoke-direct {p2, v0, v0, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, p2}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->fetchCheckboxStepsSubtaskUseCase:Lz63;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ly63;

    invoke-direct {v2, p2, v1, p1, v0}, Ly63;-><init>(Lz63;IILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$c;

    invoke-direct {p2, p0, v0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p1, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onCheckboxButtonClicked(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance p2, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x7

    invoke-direct {p2, v0, v0, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, p2}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->fetchCheckboxStepsSubtaskUseCase:Lz63;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ly63;

    invoke-direct {v2, p2, v1, p1, v0}, Ly63;-><init>(Lz63;IILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$d;

    invoke-direct {p2, p0, v0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p1, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onCheckboxClicked(Lfc1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->updateCheckboxes(Lfc1;)V

    return-void
.end method

.method public onClaimClicked(Z)V
    .locals 3

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->claimCheckboxTaskStepsUseCase:Lfk1;

    iget v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->taskId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lek1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lek1;-><init>(Lfk1;ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$e;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

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

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->sheetContent:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->loadContent()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->subscribeOnEvents()V

    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showOrdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method
