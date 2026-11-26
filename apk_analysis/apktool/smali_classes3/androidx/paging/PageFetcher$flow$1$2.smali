.class final Landroidx/paging/PageFetcher$flow$1$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PageFetcher$flow$1$2"
    f = "PageFetcher.kt"
    l = {
        0x5a,
        0x6c,
        0x70,
        0xa2,
        0xa8,
        0xd3
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Landroidx/paging/PageFetcher$GenerationInfo<",
        "TKey;TValue;>;",
        "Landroidx/paging/PageFetcher$LoadRequest;",
        "Le02<",
        "-",
        "Landroidx/paging/PageFetcher$GenerationInfo<",
        "TKey;TValue;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/RemoteMediatorAccessor<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/paging/PageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageFetcher<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/RemoteMediatorAccessor;Landroidx/paging/PageFetcher;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/RemoteMediatorAccessor<",
            "TKey;TValue;>;",
            "Landroidx/paging/PageFetcher<",
            "TKey;TValue;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PageFetcher$flow$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$2;->$remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;

    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/paging/PageFetcher$GenerationInfo;Landroidx/paging/PageFetcher$LoadRequest;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageFetcher$GenerationInfo<",
            "TKey;TValue;>;",
            "Landroidx/paging/PageFetcher$LoadRequest;",
            "Le02<",
            "-",
            "Landroidx/paging/PageFetcher$GenerationInfo<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/PageFetcher$flow$1$2;

    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->$remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;

    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-direct {v0, v1, p0, p3}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Landroidx/paging/RemoteMediatorAccessor;Landroidx/paging/PageFetcher;Le02;)V

    iput-object p1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroidx/paging/PageFetcher$GenerationInfo;

    check-cast p2, Landroidx/paging/PageFetcher$LoadRequest;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/PageFetcher$flow$1$2;->invoke(Landroidx/paging/PageFetcher$GenerationInfo;Landroidx/paging/PageFetcher$LoadRequest;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    const/4 v3, 0x0

    const-string v4, "Refresh key "

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :pswitch_0
    iget-object v0, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lr07;

    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource;

    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v6

    move-object/from16 v6, p1

    goto/16 :goto_8

    :pswitch_2
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lr07;

    iget-object v3, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PagingSource;

    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, v3

    move-object/from16 v3, p1

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lr07;

    iget-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    check-cast v8, Lr07;

    iget-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PagingSource;

    iget-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/PageFetcher$LoadRequest;

    iget-object v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v12, v8

    move-object v8, v2

    move-object v2, v12

    move-object v12, v10

    move-object v10, v11

    move-object/from16 v11, p1

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcher$LoadRequest;

    iget-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    :cond_0
    move-object v10, v2

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object v9, v1

    goto :goto_0

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroidx/paging/PageFetcher$GenerationInfo;

    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcher$LoadRequest;

    instance-of v9, v2, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    if-eqz v9, :cond_16

    move-object v9, v2

    check-cast v9, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    invoke-virtual {v9}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->getTriggerRemoteRefresh()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->$remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroidx/paging/RemoteMediatorConnection;->allowRefresh()V

    :cond_1
    iget-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    if-nez v8, :cond_3

    invoke-static {v9}, Landroidx/paging/PageFetcher;->access$getInitialKey$p(Landroidx/paging/PageFetcher;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-static {v3, v7, v0}, Landroidx/paging/PageFetcher;->access$generateNewPagingSource(Landroidx/paging/PageFetcher;Landroidx/paging/PagingSource;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    goto/16 :goto_c

    :cond_2
    move-object v9, v2

    :goto_0
    move-object v10, v3

    check-cast v10, Landroidx/paging/PagingSource;

    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v1}, Landroidx/paging/PageFetcher;->access$getConfig$p(Landroidx/paging/PageFetcher;)Landroidx/paging/PagingConfig;

    move-result-object v11

    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v1}, Landroidx/paging/PageFetcher;->access$getRetryEvents$p(Landroidx/paging/PageFetcher;)Landroidx/paging/ConflatedEventBus;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/ConflatedEventBus;->getFlow()Lhd3;

    move-result-object v12

    new-instance v1, Landroidx/paging/PageFetcher$flow$1$2$1;

    iget-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-direct {v1, v2}, Landroidx/paging/PageFetcher$flow$1$2$1;-><init>(Ljava/lang/Object;)V

    new-instance v8, Landroidx/paging/PageFetcherSnapshot;

    iget-object v14, v0, Landroidx/paging/PageFetcher$flow$1$2;->$remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;

    const/16 v17, 0x10

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v18}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lhd3;ILandroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lll3;ILjh2;)V

    invoke-static {}, Lqb4;->a()Lnb4;

    move-result-object v0

    new-instance v1, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-direct {v1, v8, v7, v0}, Landroidx/paging/PageFetcher$GenerationInfo;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lmb4;)V

    return-object v1

    :cond_3
    invoke-virtual {v8}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/paging/PageFetcherSnapshot;->getPagingSource$paging_common()Landroidx/paging/PagingSource;

    move-result-object v10

    iput-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-static {v9, v10, v0}, Landroidx/paging/PageFetcher;->access$generateNewPagingSource(Landroidx/paging/PageFetcher;Landroidx/paging/PagingSource;Le02;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    goto/16 :goto_c

    :goto_1
    check-cast v9, Landroidx/paging/PagingSource;

    new-instance v2, Lr07;

    invoke-direct {v2}, Lr07;-><init>()V

    invoke-virtual {v8}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v11

    iput-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    iput v5, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-virtual {v11, v0}, Landroidx/paging/PageFetcherSnapshot;->currentPagingState(Le02;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_4

    goto/16 :goto_c

    :cond_4
    move-object v12, v10

    move-object v10, v8

    move-object v8, v2

    :goto_2
    iput-object v11, v8, Lr07;->b:Ljava/lang/Object;

    iget-object v8, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PagingState;

    invoke-virtual {v8}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getCachedInitialState()Landroidx/paging/PagingState;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    if-ne v8, v6, :cond_5

    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getCachedInitialState()Landroidx/paging/PagingState;

    move-result-object v6

    iput-object v6, v2, Lr07;->b:Ljava/lang/Object;

    :cond_5
    iget-object v6, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PagingState;

    invoke-virtual {v6}, Landroidx/paging/PagingState;->getAnchorPosition()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getCachedInitialState()Landroidx/paging/PagingState;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroidx/paging/PagingState;->getAnchorPosition()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v7

    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getCachedInitialState()Landroidx/paging/PagingState;

    move-result-object v6

    iput-object v6, v2, Lr07;->b:Ljava/lang/Object;

    :cond_7
    check-cast v12, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    invoke-virtual {v12}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->getType()Landroidx/paging/PageFetcher$RefreshType;

    move-result-object v6

    sget-object v8, Landroidx/paging/PageFetcher$RefreshType$Anchor;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$Anchor;

    invoke-static {v6, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PagingState;

    invoke-virtual {v6}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PagingState;

    invoke-virtual {v6}, Landroidx/paging/PagingState;->getAnchorPosition()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v12}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->getType()Landroidx/paging/PageFetcher$RefreshType;

    move-result-object v6

    instance-of v6, v6, Landroidx/paging/PageFetcher$RefreshType$Item;

    if-eqz v6, :cond_f

    invoke-virtual {v12}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->getType()Landroidx/paging/PageFetcher$RefreshType;

    move-result-object v6

    check-cast v6, Landroidx/paging/PageFetcher$RefreshType$Item;

    invoke-virtual {v6}, Landroidx/paging/PageFetcher$RefreshType$Item;->getItem()Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PagingState;

    invoke-virtual {v8}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v12}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12, v6}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_a
    move-object v11, v7

    :goto_4
    check-cast v11, Landroidx/paging/PagingSource$LoadResult$Page;

    if-nez v11, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Refresh item. Item "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PagingState;

    invoke-virtual {v1}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_5

    :cond_b
    const-string v1, " loaded items."

    invoke-static {v0, v1, v3}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v7

    :cond_c
    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v3

    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-virtual {v3, v11, v0}, Landroidx/paging/PageFetcherSnapshot;->getLoadKey$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_d

    goto/16 :goto_c

    :cond_d
    move-object v1, v6

    move-object v6, v10

    :goto_6
    sget-object v8, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    invoke-virtual {v8, v5}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " based around item "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1, v7}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v1}, Landroidx/paging/PageFetcher;->access$getConfig$p(Landroidx/paging/PageFetcher;)Landroidx/paging/PagingConfig;

    move-result-object v1

    iget v1, v1, Landroidx/paging/PagingConfig;->initialLoadSize:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Lb36;

    invoke-direct {v1, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    move-object v10, v9

    goto/16 :goto_b

    :cond_f
    invoke-virtual {v12}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->getType()Landroidx/paging/PageFetcher$RefreshType;

    move-result-object v6

    sget-object v8, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$All;

    invoke-static {v6, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v10}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v6

    iget-object v8, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PagingState;

    invoke-virtual {v8}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    const/4 v11, 0x5

    iput v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-virtual {v6, v8, v0}, Landroidx/paging/PageFetcherSnapshot;->getLoadKey$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Le02;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_10

    goto/16 :goto_c

    :cond_10
    move-object v1, v2

    move-object v2, v9

    :goto_8
    sget-object v8, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    invoke-virtual {v8, v5}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from first item "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PagingState;

    invoke-virtual {v4}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lqn1;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4, v7}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    iget-object v4, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PagingState;

    invoke-virtual {v4}, Landroidx/paging/PagingState;->getPages()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v5}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_9

    :cond_12
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Lb36;

    invoke-direct {v3, v6, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v10

    move-object v10, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_b

    :cond_13
    const-string v0, "should not get here"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_14
    :goto_a
    iget-object v1, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PagingState;

    invoke-virtual {v9, v1}, Landroidx/paging/PagingSource;->getRefreshKey(Landroidx/paging/PagingState;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    invoke-virtual {v3, v5}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned from PagingSource "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v7}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    iget-object v3, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v3}, Landroidx/paging/PageFetcher;->access$getConfig$p(Landroidx/paging/PageFetcher;)Landroidx/paging/PagingConfig;

    move-result-object v3

    iget v3, v3, Landroidx/paging/PagingConfig;->initialLoadSize:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Lb36;

    invoke-direct {v3, v1, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    move-object v6, v10

    goto/16 :goto_7

    :goto_b
    iget-object v3, v1, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v6}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/paging/PageFetcherSnapshot;->close()V

    invoke-virtual {v6}, Landroidx/paging/PageFetcher$GenerationInfo;->getJob()Lmb4;

    move-result-object v3

    invoke-interface {v3, v7}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    new-instance v3, Landroidx/paging/PageFetcher$GenerationInfo;

    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v4}, Landroidx/paging/PageFetcher;->access$getConfig$p(Landroidx/paging/PageFetcher;)Landroidx/paging/PagingConfig;

    move-result-object v11

    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-static {v4}, Landroidx/paging/PageFetcher;->access$getRetryEvents$p(Landroidx/paging/PageFetcher;)Landroidx/paging/ConflatedEventBus;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/paging/ConflatedEventBus;->getFlow()Lhd3;

    move-result-object v12

    new-instance v4, Landroidx/paging/PageFetcher$flow$1$2$7;

    iget-object v5, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Landroidx/paging/PageFetcher;

    invoke-direct {v4, v5}, Landroidx/paging/PageFetcher$flow$1$2$7;-><init>(Ljava/lang/Object;)V

    iget-object v5, v2, Lr07;->b:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Landroidx/paging/PagingState;

    new-instance v8, Landroidx/paging/PageFetcherSnapshot;

    iget-object v14, v0, Landroidx/paging/PageFetcher$flow$1$2;->$remoteMediatorAccessor:Landroidx/paging/RemoteMediatorAccessor;

    iget-object v9, v1, Lb36;->b:Ljava/lang/Object;

    move-object/from16 v16, v4

    invoke-direct/range {v8 .. v16}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lhd3;ILandroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lll3;)V

    iget-object v0, v2, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PagingState;

    invoke-static {}, Lqb4;->a()Lnb4;

    move-result-object v1

    invoke-direct {v3, v8, v0, v1}, Landroidx/paging/PageFetcher$GenerationInfo;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lmb4;)V

    return-object v3

    :cond_16
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroidx/paging/PageFetcher$GenerationInfo;->getSnapshot()Landroidx/paging/PageFetcherSnapshot;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/paging/PageFetcher$LoadRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v2

    iput-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    invoke-virtual {v3, v2, v0}, Landroidx/paging/PageFetcherSnapshot;->forceSetHint(Landroidx/paging/LoadType;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_17

    :goto_c
    return-object v1

    :cond_17
    return-object v8

    :cond_18
    const-string v0, "Append or Prepend request should be sent after a Refresh. This error indicates a bug in the Paging library. Please file a bug report in Buganizer."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
