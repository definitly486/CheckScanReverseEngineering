.class public final Lp78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V
    .locals 0

    iput-object p1, p0, Lp78;->f:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp78;->f:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->presenter:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;->onLoadMoreHots()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
