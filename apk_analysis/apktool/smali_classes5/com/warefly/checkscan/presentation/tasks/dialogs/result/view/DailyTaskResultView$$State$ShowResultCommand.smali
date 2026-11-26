.class public Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State$ShowResultCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResultCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;",
        ">;"
    }
.end annotation


# instance fields
.field public final result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V
    .locals 1

    const-string p1, "showResult"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State$ShowResultCommand;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State$ShowResultCommand;->result:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;->showResult(Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State$ShowResultCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView;)V

    return-void
.end method
