.class public final Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    check-cast p2, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->presenter:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->providePresenter()Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    move-result-object p0

    return-object p0
.end method
