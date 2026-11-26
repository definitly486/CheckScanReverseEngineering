.class public Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTaskSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final success:Lno8;

.field public final taskId:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State;ILno8;)V
    .locals 1

    const-string p1, "showTaskSuccess"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;->taskId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;->success:Lno8;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;->taskId:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;->success:Lno8;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showTaskSuccess(ILno8;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowTaskSuccessCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;)V

    return-void
.end method
