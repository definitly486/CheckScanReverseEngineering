.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$m;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadScreenContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lgf9;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$m;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgf9;

    invoke-virtual {v3}, Lgf9;->f()Lnz6;

    move-result-object v3

    sget-object v4, Lnz6;->CHEQUE_RECEIVED:Lnz6;

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->n()V

    throw v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$m;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->updateChequeQueueCount(I)V

    :cond_4
    if-lez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {p0, v2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->access$setHaveIncorrectCheques$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Z)V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->access$getChequesPaginator$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Ltf3;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p1, p0, Ltf3;->e:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ltf3;->f:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ltf3;->a()V

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
