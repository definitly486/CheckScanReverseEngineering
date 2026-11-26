.class final Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagingDataPresenter$collectFrom$2$1$2"
    f = "PagingDataPresenter.kt"
    l = {
        0x89,
        0x99,
        0xa5,
        0xa8,
        0xdf,
        0xe2
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataPresenter$collectFrom$2$1;->emit(Landroidx/paging/PageEvent;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Landroidx/paging/PageEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $pagingData:Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/paging/PagingDataPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PageEvent;Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent<",
            "TT;>;",
            "Landroidx/paging/PagingDataPresenter<",
            "TT;>;",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iput-object p3, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$pagingData:Landroidx/paging/PagingData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;-><init>(Landroidx/paging/PageEvent;Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :pswitch_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_b

    :pswitch_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_9

    :pswitch_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_c

    :pswitch_5
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    instance-of v1, p1, Landroidx/paging/PageEvent$StaticList;

    if-eqz v1, :cond_2

    iget-object v5, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    new-instance p1, Landroidx/paging/TransformablePage;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast v1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {v1}, Landroidx/paging/PageEvent$StaticList;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v4, v1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getPlaceholdersBefore()I

    move-result v7

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getPlaceholdersAfter()I

    move-result v8

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v9, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v3

    :goto_1
    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v10

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$StaticList;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v11

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-virtual {p1}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v12

    iput v3, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    move-object v13, p0

    invoke-static/range {v5 .. v13}, Landroidx/paging/PagingDataPresenter;->access$presentNewList(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Le02;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, v13

    if-ne p0, v0, :cond_16

    goto/16 :goto_a

    :cond_2
    move-object v9, p0

    instance-of p0, p1, Landroidx/paging/PageEvent$Insert;

    if-eqz p0, :cond_3

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p0

    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_3

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v2

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v3

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v4

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v6

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v7

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$pagingData:Landroidx/paging/PagingData;

    invoke-virtual {p0}, Landroidx/paging/PagingData;->getHintReceiver$paging_common()Landroidx/paging/HintReceiver;

    move-result-object v8

    const/4 p0, 0x2

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v9}, Landroidx/paging/PagingDataPresenter;->access$presentNewList(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    goto/16 :goto_a

    :cond_3
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    instance-of p1, p0, Landroidx/paging/PageEvent$Insert;

    if-eqz p1, :cond_12

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getInGetItem$p(Landroidx/paging/PagingDataPresenter;)Lxg5;

    move-result-object p0

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    invoke-static {v9}, Lh;->g(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto/16 :goto_a

    :cond_4
    :goto_2
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object p1

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;

    move-result-object p1

    const/4 v1, 0x4

    iput v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    invoke-virtual {p0, p1, v9}, Landroidx/paging/PagingDataPresenter;->presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto/16 :goto_a

    :cond_5
    :goto_3
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/MutableCombinedLoadStateCollection;

    move-result-object p0

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object p1

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast v0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/MutableCombinedLoadStateCollection;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/paging/MutableCombinedLoadStateCollection;->getStateFlow()Ly68;

    move-result-object p0

    invoke-interface {p0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/CombinedLoadStates;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/paging/CombinedLoadStates;->getSource()Landroidx/paging/LoadStates;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v2

    :goto_4
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast v0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v0

    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p1

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne p1, v0, :cond_9

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    move p0, v4

    goto :goto_6

    :cond_9
    :goto_5
    move p0, v3

    :goto_6
    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move v3, v4

    :cond_c
    :goto_7
    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    if-nez p0, :cond_d

    invoke-static {p1, v4}, Landroidx/paging/PagingDataPresenter;->access$setLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;Z)V

    goto/16 :goto_c

    :cond_d
    invoke-static {p1}, Landroidx/paging/PagingDataPresenter;->access$getLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;)Z

    move-result p0

    if-nez p0, :cond_e

    if-eqz v3, :cond_16

    :cond_e
    if-nez v3, :cond_10

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getLastAccessedIndex$p(Landroidx/paging/PagingDataPresenter;)I

    move-result p0

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p1}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/PageStore;->getPlaceholdersBefore()I

    move-result p1

    if-lt p0, p1, :cond_10

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getLastAccessedIndex$p(Landroidx/paging/PagingDataPresenter;)I

    move-result p0

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p1}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/PageStore;->getPlaceholdersBefore()I

    move-result p1

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {v0}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/PageStore;->getDataCount()I

    move-result v0

    add-int/2addr v0, p1

    if-le p0, v0, :cond_f

    goto :goto_8

    :cond_f
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0, v4}, Landroidx/paging/PagingDataPresenter;->access$setLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;Z)V

    goto/16 :goto_c

    :cond_10
    :goto_8
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getHintReceiver$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/HintReceiver;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p1}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object p1

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {v0}, Landroidx/paging/PagingDataPresenter;->access$getLastAccessedIndex$p(Landroidx/paging/PagingDataPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/paging/PageStore;->createAccessHintForIndex(I)Landroidx/paging/ViewportHint$Access;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/paging/HintReceiver;->processHint(Landroidx/paging/ViewportHint;)V

    goto/16 :goto_c

    :cond_11
    const-string p0, "PagingDataPresenter.combinedLoadStatesCollection.stateFlow should not hold null CombinedLoadStates after Insert event."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_12
    instance-of p1, p0, Landroidx/paging/PageEvent$Drop;

    if-eqz p1, :cond_15

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getInGetItem$p(Landroidx/paging/PagingDataPresenter;)Lxg5;

    move-result-object p0

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x5

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    invoke-static {v9}, Lh;->g(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;

    move-result-object p1

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;

    move-result-object p1

    const/4 v1, 0x6

    iput v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->label:I

    invoke-virtual {p0, p1, v9}, Landroidx/paging/PagingDataPresenter;->presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_14

    :goto_a
    return-object v0

    :cond_14
    :goto_b
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/MutableCombinedLoadStateCollection;

    move-result-object p0

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Drop;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p1

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0, v4}, Landroidx/paging/PagingDataPresenter;->access$setLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;Z)V

    goto :goto_c

    :cond_15
    instance-of p0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz p0, :cond_16

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/MutableCombinedLoadStateCollection;

    move-result-object p0

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$LoadStateUpdate;->getSource()Landroidx/paging/LoadStates;

    move-result-object p1

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    check-cast v0, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$LoadStateUpdate;->getMediator()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    :cond_16
    :goto_c
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->$event:Landroidx/paging/PageEvent;

    instance-of p1, p0, Landroidx/paging/PageEvent$Insert;

    if-nez p1, :cond_17

    instance-of p1, p0, Landroidx/paging/PageEvent$Drop;

    if-nez p1, :cond_17

    instance-of p0, p0, Landroidx/paging/PageEvent$StaticList;

    if-eqz p0, :cond_18

    :cond_17
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->this$0:Landroidx/paging/PagingDataPresenter;

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->access$getOnPagesUpdatedListeners$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/internal/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lll3;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_d

    :cond_18
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
