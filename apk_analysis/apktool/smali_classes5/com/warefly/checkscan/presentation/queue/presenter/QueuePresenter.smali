.class public final Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;",
        ">;"
    }
.end annotation


# instance fields
.field private final authDisposables:Lfu1;

.field private final flowRouter:Luf3;

.field private final interactor:Lyg1;

.field private final qrData:Ljava/lang/String;

.field private final sortTypeSubject:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lmz6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luf3;Lyg1;Lfu1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->interactor:Lyg1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->authDisposables:Lfu1;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->qrData:Ljava/lang/String;

    sget-object p1, Lmz6;->SORT_BY_CREATION:Lmz6;

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->sortTypeSubject:Lhi0;

    return-void
.end method

.method public static final synthetic access$compareReceipts(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->compareReceipts(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final compareReceipts(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgf9;",
            ">;",
            "Ljava/util/List<",
            "Lgf9;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_4

    check-cast v2, Lgf9;

    invoke-virtual {v2}, Lgf9;->b()J

    move-result-wide v5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgf9;

    invoke-virtual {v7}, Lgf9;->b()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v2}, Lgf9;->f()Lnz6;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgf9;

    invoke-virtual {v0}, Lgf9;->f()Lnz6;

    move-result-object v0

    if-ne v2, v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_8
    return v3
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$b;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->onFirstViewAttach$lambda$0(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->onFirstViewAttach$lambda$1(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method private static final onFirstViewAttach$lambda$0(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final onFirstViewAttach$lambda$1(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;
    .locals 0

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0
.end method


# virtual methods
.method public final applyActionToReceipt(Lgf9;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lgf9;->f()Lnz6;

    move-result-object v0

    sget-object v1, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lei7;

    sget-object v1, Lfi7;->NotCorrectFormat:Lfi7;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgf9;->b()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lei7;-><init>(JLfi7;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lei7;

    sget-object v1, Lfi7;->INVALID:Lfi7;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgf9;->b()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lei7;-><init>(JLfi7;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lei7;

    sget-object v1, Lfi7;->AlreadyScanned:Lfi7;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgf9;->b()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lei7;-><init>(JLfi7;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Lgf9;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lzf7;

    invoke-direct {v0, p1}, Lzf7;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lei7;

    sget-object v1, Lfi7;->NoShopReceived:Lfi7;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgf9;->b()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lei7;-><init>(JLfi7;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    new-instance v0, Lei7;

    sget-object v1, Lfi7;->FnsNotResponding:Lfi7;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgf9;->b()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lei7;-><init>(JLfi7;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final changeSort(Lmz6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->sortTypeSubject:Lhi0;

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 12

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showProgress(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->interactor:Lyg1;

    invoke-virtual {v0}, Lyg1;->b()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->interactor:Lyg1;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0}, Lzg1;->h()Lh08;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->qrData:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    sget-object v3, Lne7;->b:Lhe7;

    const-string v4, "unit is null"

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v4}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scheduler is null"

    invoke-static {v3, v4}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lsq1;

    invoke-direct {v4, v0, v1, v2, v3}, Lsq1;-><init>(Lqp1;JLhe7;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->sortTypeSubject:Lhi0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->interactor:Lyg1;

    iget-object v1, v1, Lyg1;->a:Lzg1;

    invoke-interface {v1}, Lzg1;->g()Ldh3;

    move-result-object v1

    new-instance v5, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$b;

    const-string v10, "compareReceipts(Ljava/util/List;Ljava/util/List;)Z"

    const/4 v11, 0x0

    const/4 v6, 0x2

    const-class v8, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    const-string v9, "compareReceipts"

    move-object v7, p0

    invoke-direct/range {v5 .. v11}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lff1;

    invoke-direct {p0, v5}, Lff1;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lmg3;

    invoke-direct {v2, v1, p0}, Lmg3;-><init>(Lgg3;Lff1;)V

    new-instance p0, Lkr5;

    invoke-direct {p0, v2}, Lkr5;-><init>(Lmg3;)V

    sget-object v1, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;->c:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$c;

    new-instance v2, Lgd0;

    invoke-direct {v2, v1}, Lgd0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0, v2}, Ltq5;->b(Lwr5;Ltq5;Lli0;)Ltq5;

    move-result-object p0

    const-string v0, "next is null"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsp1;

    invoke-direct {v0, v4, p0}, Lsp1;-><init>(Lsq1;Ltq5;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object p0

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;

    invoke-direct {v0, v7}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$e;

    invoke-direct {v1, v7}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;)V

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object p0

    const-string v0, "synchroniseQueue"

    invoke-virtual {v7, p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public final removeReceipt(Lgf9;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->interactor:Lyg1;

    invoke-virtual {p1}, Lgf9;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0, p1}, Lzg1;->a(Ljava/lang/String;)Lrp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$f;-><init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->authDisposables:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final showSortDialog()Lj59;
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showQueueSortDialog()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
