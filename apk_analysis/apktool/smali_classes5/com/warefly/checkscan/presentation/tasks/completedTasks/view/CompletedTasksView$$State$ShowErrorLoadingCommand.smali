.class public Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State$ShowErrorLoadingCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorLoadingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isShow:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State;Z)V
    .locals 1

    const-string p1, "showErrorLoading"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State$ShowErrorLoadingCommand;->isShow:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State$ShowErrorLoadingCommand;->isShow:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;->showErrorLoading(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView$$State$ShowErrorLoadingCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksView;)V

    return-void
.end method
