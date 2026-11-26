.class public final Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final interactor:Ld82;

.field private final showcaseAnalytics:Lup8;

.field private final taskId:I


# direct methods
.method public constructor <init>(Luf3;Ld82;ILup8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->interactor:Ld82;

    iput p3, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->showcaseAnalytics:Lup8;

    return-void
.end method

.method public static final synthetic access$getTaskId$p(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    return p0
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->i(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->interactor:Ld82;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    invoke-virtual {v0, v1}, Ld82;->a(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->interactor:Ld82;

    iget-object v0, v0, Ld82;->g:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onGetRewardClicked()V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->showcaseAnalytics:Lup8;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    invoke-interface {v0, v1}, Lup8;->m(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->interactor:Ld82;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Le82;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Le82;-><init>(Ld82;ILe02;)V

    new-instance v4, Ltb7;

    invoke-direct {v4, v2}, Ltb7;-><init>(Lbm3;)V

    new-instance v2, Lf82;

    const/4 v5, 0x3

    invoke-direct {v2, v5, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v5, Lde3;

    invoke-direct {v5, v4, v2}, Lde3;-><init>(Lhd3;Ldm3;)V

    new-instance v2, Lg82;

    invoke-direct {v2, v0, v1, v3}, Lg82;-><init>(Ld82;ILe02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, v5, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$b;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    new-instance v2, Lce3;

    invoke-direct {v2, v0, v1}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v2, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final refreshContent()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->interactor:Ld82;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->taskId:I

    invoke-virtual {v0, p0}, Ld82;->a(I)V

    return-void
.end method
