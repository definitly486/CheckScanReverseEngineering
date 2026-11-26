.class public Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$ShowAdResultCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAdResultCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dailyBonusPoints:Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State;Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;)V
    .locals 1

    const-string p1, "showAdResult"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$ShowAdResultCommand;->dailyBonusPoints:Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$ShowAdResultCommand;->dailyBonusPoints:Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->showAdResult(Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$ShowAdResultCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;)V

    return-void
.end method
