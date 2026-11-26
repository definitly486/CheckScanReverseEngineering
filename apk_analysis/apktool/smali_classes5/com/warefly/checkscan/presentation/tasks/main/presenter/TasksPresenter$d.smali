.class public final Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->fetchContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Li57<",
        "+",
        "Lyo8;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lde3;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;


# direct methods
.method public constructor <init>(Lde3;ZLcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->b:Lde3;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->c:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->d:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d$a;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->c:Z

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->d:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-direct {v0, p1, v1, v2}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d$a;-><init>(Lid3;ZLcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter$d;->b:Lde3;

    invoke-virtual {p0, v0, p2}, Lde3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
