.class public final Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->showDetails(Lum8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;

.field public final synthetic g:Lum8;


# direct methods
.method public constructor <init>(Lum8;Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;->f:Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;->g:Lum8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;->f:Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;->o()Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$f;->g:Lum8;

    iget p0, p0, Lum8;->a:I

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;->onClaimClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
