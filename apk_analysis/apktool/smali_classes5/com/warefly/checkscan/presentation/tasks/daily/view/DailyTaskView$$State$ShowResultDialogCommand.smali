.class public Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResultDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;",
        ">;"
    }
.end annotation


# instance fields
.field public final result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

.field public final taskId:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V
    .locals 1

    const-string p1, "showResultDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;->taskId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;->taskId:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showResultDialog(ILcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowResultDialogCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V

    return-void
.end method
