.class public final Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;->f:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;->f:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->onAdDismissedWithoutReward()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
