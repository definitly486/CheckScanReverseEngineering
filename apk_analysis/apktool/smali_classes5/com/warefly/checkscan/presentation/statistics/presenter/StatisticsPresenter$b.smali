.class public final Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->initMonthsPaginator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lmz7<",
        "Ljava/util/List<",
        "+",
        "Lld5;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$b;->f:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter$b;->f:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->getInteractor()Lq78;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_0

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, -0x6

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, -0xc

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->add(II)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/16 v4, 0xc

    if-ge p1, v4, :cond_1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/statistics/presenter/a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;)V

    new-instance p0, Lfh1;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lfh1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
