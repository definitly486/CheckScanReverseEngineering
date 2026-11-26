.class public final Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final interactor:Lq78;

.field private monthPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lld5;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lq78;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->interactor:Lq78;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->flowRouter:Luf3;

    return-void
.end method

.method private final initMonthsPaginator()V
    .locals 4

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$a;

    new-instance v3, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;)V

    invoke-direct {v2, v3}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->monthPaginator:Ls26;

    invoke-virtual {v0}, Ls26;->c()V

    return-void
.end method


# virtual methods
.method public final getInteractor()Lq78;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->interactor:Lq78;

    return-object p0
.end method

.method public final getSelectedMonth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->selectedMonth:Ljava/lang/String;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->initMonthsPaginator()V

    return-void
.end method

.method public final onLoadMoreHots()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;->showLoadMonth(Z)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->monthPaginator:Ls26;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ls26;->a()V

    :cond_1
    return-void
.end method

.method public final setSelectedMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->selectedMonth:Ljava/lang/String;

    return-void
.end method
