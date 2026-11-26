.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->openTaskFromDeeplink(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

.field public final synthetic g:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;->f:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;->g:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;->f:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-static {v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)Luf3;

    move-result-object v0

    new-instance v1, Lli7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$m;->g:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    invoke-direct {v1, p0}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
