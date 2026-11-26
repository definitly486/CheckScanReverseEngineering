.class public Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State$ShowErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;",
        ">;"
    }
.end annotation


# instance fields
.field public final taskError:Lhn8;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State;Lhn8;)V
    .locals 1

    const-string p1, "showError"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State$ShowErrorCommand;->taskError:Lhn8;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State$ShowErrorCommand;->taskError:Lhn8;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;->showError(Lhn8;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView$$State$ShowErrorCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;)V

    return-void
.end method
