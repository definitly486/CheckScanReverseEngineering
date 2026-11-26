.class public final Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Lmz6;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lgf9;",
        ">;>;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$e;->f:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lb36;

    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Lmz6;

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$e;->f:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showProgress(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgf9;

    invoke-virtual {v3}, Lgf9;->f()Lnz6;

    move-result-object v3

    sget-object v4, Lnz6;->CHEQUE_RECEIVED:Lnz6;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lmz6;->SORT_BY_DATE:Lmz6;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    if-eqz p1, :cond_3

    new-instance v0, Lfw6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showReceipts(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showReceipts(Ljava/util/List;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showThereAreNoReceipts(Z)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
