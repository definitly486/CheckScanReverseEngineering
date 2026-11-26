.class public final Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lwb0;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$b;->f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lwb0;

    invoke-virtual {p1}, Lwb0;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt90;

    new-instance v3, Lk90;

    invoke-virtual {v2}, Lt90;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt90$a;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lt90$a;->a()J

    move-result-wide v4

    :goto_1
    move-wide v9, v4

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Lt90;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lt90;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_1

    move-object v5, v6

    :cond_1
    invoke-virtual {v2}, Lt90;->d()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v6

    :cond_2
    invoke-virtual {v2}, Lt90;->c()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v6

    :cond_3
    invoke-virtual {v2}, Lt90;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v11, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v11

    goto :goto_3

    :cond_4
    move-object v6, v7

    move-object v7, v8

    move-object v8, v2

    :goto_3
    invoke-direct/range {v3 .. v10}, Lk90;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lwb0;->b()Lwb0$a;

    move-result-object v0

    invoke-virtual {v0}, Lwb0$a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$b;->f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lwb0;->b()Lwb0$a;

    move-result-object v2

    invoke-virtual {v2}, Lwb0$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->setTitle(Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lwb0;->b()Lwb0$a;

    move-result-object v0

    invoke-virtual {v0}, Lwb0$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lwb0;->b()Lwb0$a;

    move-result-object p1

    invoke-virtual {p1}, Lwb0$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->setDescription(Ljava/lang/String;)V

    :cond_9
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->showNoCards()V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz p0, :cond_b

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->showData(Ljava/util/List;)V

    :cond_b
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
