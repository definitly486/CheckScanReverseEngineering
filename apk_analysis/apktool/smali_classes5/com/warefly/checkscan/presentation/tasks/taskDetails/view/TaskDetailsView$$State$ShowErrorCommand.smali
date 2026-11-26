.class public Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State;)V
    .locals 1

    const-string p1, "showError"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;->showError()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView$$State$ShowErrorCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsView;)V

    return-void
.end method
