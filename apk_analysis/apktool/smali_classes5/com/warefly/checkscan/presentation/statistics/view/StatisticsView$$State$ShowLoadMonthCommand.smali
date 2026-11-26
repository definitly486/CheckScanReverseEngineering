.class public Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State$ShowLoadMonthCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLoadMonthCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State;Z)V
    .locals 1

    const-string p1, "showLoadMonth"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State$ShowLoadMonthCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State$ShowLoadMonthCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;->showLoadMonth(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView$$State$ShowLoadMonthCommand;->apply(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;)V

    return-void
.end method
