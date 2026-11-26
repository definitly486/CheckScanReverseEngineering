.class public final Landroidx/paging/AsyncPagingDataDiffer$presenter$1;
.super Landroidx/paging/PagingDataPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataPresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/AsyncPagingDataDiffer;Lo22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;",
            "Lo22;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Landroidx/paging/PagingDataPresenter;-><init>(Lo22;Landroidx/paging/PagingData;ILjh2;)V

    return-void
.end method


# virtual methods
.method public presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataEvent<",
            "TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    iget v1, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer$presenter$1;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingDataEvent$Refresh;

    iget-object v1, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/AsyncPagingDataDiffer;

    iget-object v0, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PagingDataEvent;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    instance-of p2, p1, Landroidx/paging/PagingDataEvent$Refresh;

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    move-object v5, p1

    check-cast v5, Landroidx/paging/PagingDataEvent$Refresh;

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v6

    invoke-interface {v6}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p0

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    if-lez p0, :cond_15

    invoke-static {p2}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p1

    invoke-interface {p1}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    invoke-interface {p0, v2, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v6

    invoke-interface {v6}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p0

    invoke-interface {p0}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    if-lez p0, :cond_15

    invoke-static {p2}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p1

    invoke-interface {p1}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    invoke-interface {p0, v2, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto/16 :goto_5

    :cond_4
    invoke-static {p2}, Landroidx/paging/AsyncPagingDataDiffer;->access$getPreviousPresenter$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {p2}, Landroidx/paging/AsyncPagingDataDiffer;->access$getWorkerDispatcher$p(Landroidx/paging/AsyncPagingDataDiffer;)Lo22;

    move-result-object v2

    new-instance v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;

    invoke-direct {v6, v5, p2, v4}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1;-><init>(Landroidx/paging/PagingDataEvent$Refresh;Landroidx/paging/AsyncPagingDataDiffer;Le02;)V

    iput-object p1, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    invoke-static {v2, v6, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    :try_start_2
    check-cast p2, Landroidx/paging/PlaceholderPaddedDiffResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Landroidx/paging/AsyncPagingDataDiffer;->access$getPreviousPresenter$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v0

    invoke-static {v1}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v3

    invoke-static {v0, v2, v3, p2}, Landroidx/paging/PlaceholderPaddedListDiffHelperKt;->dispatchDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedDiffResult;)V

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Refresh;->getPreviousList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Refresh;->getNewList()Landroidx/paging/PlaceholderPaddedList;

    move-result-object p1

    invoke-static {v1}, Landroidx/paging/AsyncPagingDataDiffer;->access$getLastAccessedIndex$p(Landroidx/paging/AsyncPagingDataDiffer;)I

    move-result v2

    invoke-static {v0, p2, p1, v2}, Landroidx/paging/PlaceholderPaddedListDiffHelperKt;->transformAnchorIndex(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedDiffResult;Landroidx/paging/PlaceholderPaddedList;I)I

    move-result p1

    invoke-static {v1, p1}, Landroidx/paging/AsyncPagingDataDiffer;->access$setLastAccessedIndex$p(Landroidx/paging/AsyncPagingDataDiffer;I)V

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->get(I)Ljava/lang/Object;

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    move-object v1, p2

    :goto_2
    invoke-static {v1}, Landroidx/paging/AsyncPagingDataDiffer;->access$getPreviousPresenter$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p0

    :cond_6
    instance-of p2, p1, Landroidx/paging/PagingDataEvent$Prepend;

    if-eqz p2, :cond_a

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    check-cast p1, Landroidx/paging/PagingDataEvent$Prepend;

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Prepend;->getInserted()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Prepend;->getOldPlaceholdersBefore()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Prepend;->getOldPlaceholdersBefore()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr p2, v0

    if-lez v0, :cond_7

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v3

    invoke-interface {v3, v1, v0, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_7
    if-lez p2, :cond_8

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v1

    invoke-interface {v1, v2, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_8
    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Prepend;->getNewPlaceholdersBefore()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Prepend;->getOldPlaceholdersBefore()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    if-lez p2, :cond_9

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    invoke-interface {p0, v2, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto/16 :goto_5

    :cond_9
    if-gez p2, :cond_15

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    neg-int p1, p2

    invoke-interface {p0, v2, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto/16 :goto_5

    :cond_a
    instance-of p2, p1, Landroidx/paging/PagingDataEvent$Append;

    if-eqz p2, :cond_e

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    check-cast p1, Landroidx/paging/PagingDataEvent$Append;

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getInserted()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getOldPlaceholdersAfter()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getStartIndex()I

    move-result v1

    sub-int v2, p2, v0

    add-int v3, v1, v0

    if-lez v0, :cond_b

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v5

    invoke-interface {v5, v1, v0, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_b
    if-lez v2, :cond_c

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_c
    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getNewPlaceholdersAfter()I

    move-result v1

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getOldPlaceholdersAfter()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getStartIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$Append;->getNewPlaceholdersAfter()I

    move-result p1

    add-int/2addr p1, v0

    if-lez v1, :cond_d

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto/16 :goto_5

    :cond_d
    if-gez v1, :cond_15

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    neg-int p2, v1

    invoke-interface {p0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto/16 :goto_5

    :cond_e
    instance-of p2, p1, Landroidx/paging/PagingDataEvent$DropPrepend;

    if-eqz p2, :cond_11

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    check-cast p1, Landroidx/paging/PagingDataEvent$DropPrepend;

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropPrepend;->getNewPlaceholdersBefore()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropPrepend;->getDropCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropPrepend;->getOldPlaceholdersBefore()I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_f

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    invoke-interface {v0, v2, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_3

    :cond_f
    if-gez p2, :cond_10

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    neg-int v1, p2

    invoke-interface {v0, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_10
    :goto_3
    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropPrepend;->getOldPlaceholdersBefore()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropPrepend;->getNewPlaceholdersBefore()I

    move-result p1

    sub-int/2addr p1, p2

    if-lez p1, :cond_15

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    invoke-interface {p0, p2, p1, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_5

    :cond_11
    instance-of p2, p1, Landroidx/paging/PagingDataEvent$DropAppend;

    if-eqz p2, :cond_16

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    check-cast p1, Landroidx/paging/PagingDataEvent$DropAppend;

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getNewPlaceholdersAfter()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getDropCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getOldPlaceholdersAfter()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getNewPlaceholdersAfter()I

    move-result v1

    add-int/2addr v1, v0

    if-lez p2, :cond_12

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    sub-int/2addr v1, p2

    invoke-interface {v0, v1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_4

    :cond_12
    if-gez p2, :cond_13

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    neg-int v3, p2

    invoke-interface {v0, v1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_13
    :goto_4
    if-gez p2, :cond_14

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getOldPlaceholdersAfter()I

    move-result v0

    neg-int p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_14
    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getNewPlaceholdersAfter()I

    move-result p2

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getOldPlaceholdersAfter()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p2, v2

    if-lez p2, :cond_15

    invoke-static {p0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/paging/PagingDataEvent$DropAppend;->getStartIndex()I

    move-result p1

    invoke-interface {p0, p1, p2, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_15
    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_16
    invoke-static {}, Lme0;->e()V

    return-object v4
.end method
