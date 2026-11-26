.class public Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNoAttemptsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;",
        ">;"
    }
.end annotation


# instance fields
.field public final noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

.field public final taskId:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V
    .locals 1

    const-string p1, "showNoAttemptsDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;->taskId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;->taskId:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showNoAttemptsDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowNoAttemptsDialogCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V

    return-void
.end method
