.class public final Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$a;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->fetchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$a;->c:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$a;->c:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;->showError(Z)V

    :cond_0
    return-void
.end method
