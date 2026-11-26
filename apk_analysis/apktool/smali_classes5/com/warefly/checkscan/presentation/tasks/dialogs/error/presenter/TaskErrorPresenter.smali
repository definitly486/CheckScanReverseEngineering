.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;",
        ">;"
    }
.end annotation


# instance fields
.field private final taskError:Lhn8;


# direct methods
.method public constructor <init>(Lhn8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;->taskError:Lhn8;

    return-void
.end method


# virtual methods
.method public final onActionClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;->onDismissDialog()V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$s0$f$a$d;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;->taskError:Lhn8;

    iget v1, v1, Lhn8;->a:I

    const-string v2, "Fail"

    invoke-direct {v0, v1, v2}, Lkd$s0$f$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;->taskError:Lhn8;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorView;->showError(Lhn8;)V

    :cond_0
    return-void
.end method
