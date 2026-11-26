.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Ll09$a;
.implements Ls09$a;
.implements Lh09$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;",
        ">;",
        "Ll09$a;",
        "Ls09$a;",
        "Lh09$a;"
    }
.end annotation


# instance fields
.field private final content:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Lu09;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fetchSBPTransferInfoUseCase:Ld83;

.field private final resourceProvider:Ls47;

.field private selectedBank:Lm09;

.field private final sendSBPTransferUseCase:Lvo7;


# direct methods
.method public constructor <init>(Ld83;Lvo7;Ls47;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->fetchSBPTransferInfoUseCase:Ld83;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->sendSBPTransferUseCase:Lvo7;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->resourceProvider:Ls47;

    sget-object p1, Li57$b;->a:Li57$b;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    return-void
.end method

.method public static final synthetic access$getContent$p(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$processTransferResult(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;Lxz8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->processTransferResult(Lxz8;)V

    return-void
.end method

.method public static final synthetic access$setButtonLoading(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->setButtonLoading(Z)V

    return-void
.end method

.method private final checkIfButtonEnabled()V
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li57$c;

    if-eqz v1, :cond_0

    check-cast v0, Li57$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, v0, Li57$c;->a:Ljava/lang/Object;

    check-cast v0, Lu09;

    iget-object v1, v0, Lu09;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lj09;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj09;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-boolean v4, v1, Lj09;->e:Z

    if-nez v4, :cond_5

    iget-wide v4, v1, Lj09;->a:D

    invoke-direct {p0, v1, v4, v5}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->isAmountError(Lj09;D)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    iget-object v4, v0, Lu09;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lq09;

    if-eqz v7, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v5}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq09;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lq09;->a:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm09;

    iget-boolean v5, v5, Lm09;->d:Z

    if-eqz v5, :cond_9

    move v4, v2

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v3

    :goto_6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    :cond_b
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Li57;

    iget-object v6, v0, Lu09;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpz3;

    instance-of v9, v8, Lt09;

    if-eqz v9, :cond_d

    if-nez v1, :cond_c

    if-eqz v4, :cond_c

    move v8, v2

    goto :goto_8

    :cond_c
    move v8, v3

    :goto_8
    new-instance v9, Lt09;

    invoke-direct {v9, v8}, Lt09;-><init>(Z)V

    move-object v8, v9

    :cond_d
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lu09;

    invoke-direct {v6, v7}, Lu09;-><init>(Ljava/util/List;)V

    new-instance v7, Li57$c;

    invoke-direct {v7, v6}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v5, v7}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_9
    return-void
.end method

.method private final isAmountError(Lj09;D)Z
    .locals 2

    iget-wide v0, p1, Lj09;->d:D

    cmpl-double p0, p2, v0

    if-gtz p0, :cond_1

    iget-wide v0, p1, Lj09;->c:D

    cmpg-double p0, p2, v0

    if-ltz p0, :cond_1

    iget-wide p0, p1, Lj09;->b:D

    cmpl-double p0, p2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final processTransferResult(Lxz8;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;

    if-eqz p0, :cond_2

    iget-object v0, p1, Lxz8;->a:Lxz8$b;

    sget-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lxz8;->d:Ljava/lang/String;

    iget-object p1, p1, Lxz8;->c:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;->showTransferSuccessBottomSheet(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lxz8;->f:Lxz8$a;

    if-eqz v0, :cond_1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;->showTransferFailedBottomSheet(Lxz8$a;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object p1, p1, Lxz8;->e:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;->showTransferMoneyError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final setButtonLoading(Z)V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li57$c;

    if-eqz v1, :cond_0

    check-cast v0, Li57$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li57;

    iget-object v2, v0, Li57$c;->a:Ljava/lang/Object;

    check-cast v2, Lu09;

    iget-object v3, v2, Lu09;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    instance-of v6, v5, Lt09;

    if-eqz v6, :cond_3

    new-instance v5, Lt09;

    invoke-direct {v5, p1}, Lt09;-><init>(Z)V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu09;

    invoke-direct {v2, v4}, Lu09;-><init>(Ljava/util/List;)V

    new-instance v3, Li57$c;

    invoke-direct {v3, v2}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, v3}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    return-void
.end method


# virtual methods
.method public onAmountChanged(Ljava/lang/Double;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    invoke-interface {v1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Li57$c;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Li57$c;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    :cond_2
    invoke-interface {v2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Li57;

    iget-object v5, v1, Li57$c;->a:Ljava/lang/Object;

    check-cast v5, Lu09;

    iget-object v6, v5, Lu09;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpz3;

    instance-of v9, v8, Lj09;

    const v10, 0x7f14057b

    if-eqz v9, :cond_4

    if-eqz p1, :cond_4

    move-object v11, v8

    check-cast v11, Lj09;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v0, v11, v8, v9}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->isAmountError(Lj09;D)Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    if-eqz v14, :cond_3

    iget-object v8, v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->resourceProvider:Ls47;

    invoke-interface {v8, v10}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    goto :goto_2

    :cond_3
    move-object v15, v3

    :goto_2
    const/16 v16, 0xe

    invoke-static/range {v11 .. v16}, Lj09;->d(Lj09;DZLjava/lang/String;I)Lj09;

    move-result-object v8

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_5

    move-object v9, v8

    check-cast v9, Lj09;

    iget-object v8, v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->resourceProvider:Ls47;

    invoke-interface {v8, v10}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xf

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-static/range {v9 .. v14}, Lj09;->d(Lj09;DZLjava/lang/String;I)Lj09;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lu09;

    invoke-direct {v5, v7}, Lu09;-><init>(Ljava/util/List;)V

    new-instance v6, Li57$c;

    invoke-direct {v6, v5}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v6}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->checkIfButtonEnabled()V

    return-void
.end method

.method public onBankSelected(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li57$c;

    if-eqz v1, :cond_0

    check-cast v0, Li57$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    :cond_2
    invoke-interface {v1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Li57;

    iget-object v3, v0, Li57$c;->a:Ljava/lang/Object;

    check-cast v3, Lu09;

    iget-object v4, v3, Lu09;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpz3;

    instance-of v8, v7, Lq09;

    if-eqz v8, :cond_5

    check-cast v7, Lq09;

    iget-object v7, v7, Lq09;->a:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm09;

    iget-object v10, v9, Lm09;->a:Ljava/lang/String;

    invoke-static {v10, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iput-object v9, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->selectedBank:Lm09;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lm09;->d(Lm09;Z)Lm09;

    move-result-object v9

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lm09;->d(Lm09;Z)Lm09;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v7, Lq09;

    invoke-direct {v7, v8}, Lq09;-><init>(Ljava/util/ArrayList;)V

    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lu09;

    invoke-direct {v3, v5}, Lu09;-><init>(Ljava/util/List;)V

    new-instance v4, Li57$c;

    invoke-direct {v4, v3}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v4}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->checkIfButtonEnabled()V

    return-void
.end method

.method public onButtonClicked()V
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li57$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Li57$c;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, v0, Li57$c;->a:Ljava/lang/Object;

    check-cast v0, Lu09;

    iget-object v1, v0, Lu09;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Le19;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le19;

    if-eqz v1, :cond_4

    iget-object v1, v1, Le19;->a:Ljava/lang/String;

    move-object v5, v1

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    iget-object v0, v0, Lu09;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lj09;

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj09;

    if-eqz v0, :cond_7

    iget-wide v0, v0, Lj09;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->selectedBank:Lm09;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lm09;->a:Ljava/lang/String;

    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v4, v2

    :goto_5
    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    iget-object v7, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->sendSBPTransferUseCase:Lvo7;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    double-to-int v6, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Luo7;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Luo7;-><init>(Ljava/lang/String;Ljava/lang/String;ILvo7;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v3}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$b;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    :cond_9
    :goto_6
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->fetchSBPTransferInfoUseCase:Ld83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc83;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc83;-><init>(Ld83;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$c;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;->content:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$d;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method
