.class public final Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->setSelectDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lk78;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$b;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lk78;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$b;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->access$getCategoriesFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lk78;->d()V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->access$getRetailersFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lk78;->e()V

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->access$getWeekdaysFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk78;->f(Ljava/util/ArrayList;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->access$setStatistics$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;Lk78;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;->showStatistics(Lk78;)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
