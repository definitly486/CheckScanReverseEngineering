.class public final Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;",
        ">;"
    }
.end annotation


# instance fields
.field private final categoriesFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fromDateFilter:Ljava/util/Date;

.field private final futureMonth:Ljava/lang/Boolean;

.field private final interactor:Lq78;

.field private final month:J

.field private final retailersFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statistics:Lk78;

.field private toDateFilter:Ljava/util/Date;

.field private final weekdaysFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Boolean;Lq78;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->month:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->futureMonth:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->interactor:Lq78;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->categoriesFilters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->weekdaysFilters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->retailersFilters:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getCategoriesFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->categoriesFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getRetailersFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->retailersFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getWeekdaysFilters$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->weekdaysFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setStatistics$p(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;Lk78;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->statistics:Lk78;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->setSelectDate$lambda$0(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V

    return-void
.end method

.method private final getFilter(Z)Lha3;
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->fromDateFilter:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lpb2;->a:Lpb2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpb2;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->toDateFilter:Ljava/util/Date;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    sget-object p1, Lpb2;->a:Lpb2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpb2;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->categoriesFilters:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v5, p1

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->retailersFilters:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v6, p1

    goto :goto_5

    :cond_5
    move-object v6, v1

    :goto_5
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->weekdaysFilters:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    move-object v7, p0

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    new-instance v2, Lha3;

    invoke-direct/range {v2 .. v7}, Lha3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static synthetic getFilter$default(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;ZILjava/lang/Object;)Lha3;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->getFilter(Z)Lha3;

    move-result-object p0

    return-object p0
.end method

.method private final setSelectDate()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lpb2;->a:Lpb2;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->month:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->fromDateFilter:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    iget-wide v3, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->month:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->toDateFilter:Ljava/util/Date;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;->showLoadingStatistics(Z)V

    :cond_0
    iget-object v1, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->interactor:Lq78;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->getFilter$default(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;ZILjava/lang/Object;)Lha3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lq78;->a(Lha3;)Lmz7;

    move-result-object v1

    sget-object v3, Lne7;->c:Lhe7;

    invoke-virtual {v1, v3}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v1

    new-instance v3, Lz78;

    invoke-direct {v3, v0}, Lz78;-><init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V

    new-instance v5, Luz7;

    invoke-direct {v5, v1, v3}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$b;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V

    sget-object v3, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;

    invoke-static {v5, v3, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v1

    invoke-static {v0, v1, v4, v2, v4}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setSelectDate$lambda$0(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;->showLoadingStatistics(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->setSelectDate()V

    return-void
.end method
