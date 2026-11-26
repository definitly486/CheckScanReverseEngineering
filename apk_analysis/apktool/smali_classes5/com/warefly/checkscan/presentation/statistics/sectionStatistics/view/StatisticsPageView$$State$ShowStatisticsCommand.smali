.class public Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State$ShowStatisticsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowStatisticsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final statistics:Lk78;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State;Lk78;)V
    .locals 1

    const-string p1, "showStatistics"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State$ShowStatisticsCommand;->statistics:Lk78;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State$ShowStatisticsCommand;->statistics:Lk78;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;->showStatistics(Lk78;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView$$State$ShowStatisticsCommand;->apply(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;)V

    return-void
.end method
