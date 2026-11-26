.class public abstract Landroidx/paging/PagingDataPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingDataPresenter$InitialUiReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _onPagesUpdatedFlow:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final collectFromRunner:Landroidx/paging/SingleRunner;

.field private final combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

.field private hintReceiver:Landroidx/paging/HintReceiver;

.field private final inGetItem:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastAccessedIndex:I

.field private volatile lastAccessedIndexUnfulfilled:Z

.field private final loadStateFlow:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final mainContext:Lo22;

.field private final onPagesUpdatedListeners:Landroidx/paging/internal/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/internal/CopyOnWriteArrayList<",
            "Lll3<",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field private pageStore:Landroidx/paging/PageStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private uiReceiver:Landroidx/paging/UiReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/paging/PagingDataPresenter;-><init>(Lo22;Landroidx/paging/PagingData;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lo22;Landroidx/paging/PagingData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->mainContext:Lo22;

    new-instance p1, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    invoke-direct {p1}, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->uiReceiver:Landroidx/paging/UiReceiver;

    sget-object p1, Landroidx/paging/PageStore;->Companion:Landroidx/paging/PageStore$Companion;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/paging/PagingData;->cachedEvent$paging_common()Landroidx/paging/PageEvent$Insert;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/paging/PageStore$Companion;->initial$paging_common(Landroidx/paging/PageEvent$Insert;)Landroidx/paging/PageStore;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    new-instance p1, Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-direct {p1}, Landroidx/paging/MutableCombinedLoadStateCollection;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/paging/PagingData;->cachedEvent$paging_common()Landroidx/paging/PageEvent$Insert;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    :cond_1
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    new-instance p2, Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-direct {p2}, Landroidx/paging/internal/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter;->onPagesUpdatedListeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    new-instance p2, Landroidx/paging/SingleRunner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v1, v0}, Landroidx/paging/SingleRunner;-><init>(ZILjh2;)V

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter;->collectFromRunner:Landroidx/paging/SingleRunner;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p2

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter;->inGetItem:Lxg5;

    invoke-virtual {p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->getStateFlow()Ly68;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->loadStateFlow:Ly68;

    const/16 p1, 0x40

    sget-object p2, Lcu0;->DROP_OLDEST:Lcu0;

    invoke-static {v2, p1, p2}, Lbt7;->a(IILcu0;)Lzs7;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->_onPagesUpdatedFlow:Lvg5;

    new-instance p1, Lb80;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lb80;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter;->addOnPagesUpdatedListener(Lll3;)V

    return-void
.end method

.method public constructor <init>(Lo22;Landroidx/paging/PagingData;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 109
    sget-object p1, Lqo2;->a:Loi2;

    .line 110
    sget-object p1, Luy4;->a:Lhu3;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 111
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/paging/PagingDataPresenter;-><init>(Lo22;Landroidx/paging/PagingData;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/paging/PagingDataPresenter;)Lj59;
    .locals 1

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->_onPagesUpdatedFlow:Lvg5;

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lvg5;->e(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic a(Landroidx/paging/PagingDataPresenter;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/paging/PagingDataPresenter;->_init_$lambda$0(Landroidx/paging/PagingDataPresenter;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/MutableCombinedLoadStateCollection;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    return-object p0
.end method

.method public static final synthetic access$getHintReceiver$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/HintReceiver;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    return-object p0
.end method

.method public static final synthetic access$getInGetItem$p(Landroidx/paging/PagingDataPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->inGetItem:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getLastAccessedIndex$p(Landroidx/paging/PagingDataPresenter;)I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataPresenter;->lastAccessedIndex:I

    return p0
.end method

.method public static final synthetic access$getLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PagingDataPresenter;->lastAccessedIndexUnfulfilled:Z

    return p0
.end method

.method public static final synthetic access$getMainContext$p(Landroidx/paging/PagingDataPresenter;)Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->mainContext:Lo22;

    return-object p0
.end method

.method public static final synthetic access$getOnPagesUpdatedListeners$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/internal/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->onPagesUpdatedListeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getPageStore$p(Landroidx/paging/PagingDataPresenter;)Landroidx/paging/PageStore;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    return-object p0
.end method

.method public static final synthetic access$presentNewList(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/paging/PagingDataPresenter;->presentNewList(Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/PagingDataPresenter;->lastAccessedIndexUnfulfilled:Z

    return-void
.end method

.method public static final synthetic access$setUiReceiver(Landroidx/paging/PagingDataPresenter;Landroidx/paging/UiReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/paging/PagingDataPresenter;->setUiReceiver(Landroidx/paging/UiReceiver;)V

    return-void
.end method

.method private final presentNewList(Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Le02;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;IIZ",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/HintReceiver;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "|)"

    const-string v9, "Presenting data (\n                            |   first item: "

    instance-of v10, v7, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    if-eqz v10, :cond_0

    move-object v10, v7

    check-cast v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    iget v11, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    const/high16 v12, -0x80000000

    and-int v13, v11, v12

    if-eqz v13, :cond_0

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    invoke-direct {v10, v1, v7}, Landroidx/paging/PagingDataPresenter$presentNewList$1;-><init>(Landroidx/paging/PagingDataPresenter;Le02;)V

    :goto_0
    iget-object v7, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->result:Ljava/lang/Object;

    sget-object v11, La32;->COROUTINE_SUSPENDED:La32;

    iget v12, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_2

    if-ne v12, v13, :cond_1

    iget-boolean v0, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->Z$0:Z

    iget v2, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$1:I

    iget v3, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$0:I

    iget-object v4, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$6:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PageStore;

    iget-object v5, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$5:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/HintReceiver;

    iget-object v6, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$4:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageStore;

    iget-object v11, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$3:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/HintReceiver;

    iget-object v12, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$2:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/LoadStates;

    iget-object v13, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/paging/LoadStates;

    iget-object v10, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    :try_start_0
    invoke-static {v7}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v14

    :cond_2
    invoke-static {v7}, Lr57;->b(Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v14

    :cond_4
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/paging/PagingDataPresenter;->lastAccessedIndexUnfulfilled:Z

    iget-object v7, v1, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    iget-object v12, v1, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    new-instance v15, Landroidx/paging/PageStore;

    invoke-direct {v15, v0, v2, v3}, Landroidx/paging/PageStore;-><init>(Ljava/util/List;II)V

    iget-object v14, v1, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v15, v1, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    iput-object v6, v1, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    :try_start_1
    new-instance v13, Landroidx/paging/PagingDataEvent$Refresh;

    invoke-direct {v13, v15, v14}, Landroidx/paging/PagingDataEvent$Refresh;-><init>(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;)V

    iput-object v0, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$0:Ljava/lang/Object;

    iput-object v5, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$1:Ljava/lang/Object;

    move-object/from16 v14, p6

    iput-object v14, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$2:Ljava/lang/Object;

    iput-object v6, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$3:Ljava/lang/Object;

    iput-object v7, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$4:Ljava/lang/Object;

    iput-object v12, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$5:Ljava/lang/Object;

    iput-object v15, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$6:Ljava/lang/Object;

    iput v2, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$0:I

    iput v3, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$1:I

    iput-boolean v4, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->Z$0:Z

    const/4 v0, 0x1

    iput v0, v10, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    invoke-virtual {v1, v13, v10}, Landroidx/paging/PagingDataPresenter;->presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v11, :cond_5

    return-object v11

    :cond_5
    move-object/from16 v10, p1

    move v0, v4

    move-object v13, v5

    move-object v11, v6

    move-object v6, v7

    move-object v5, v12

    move-object v12, v14

    move-object v4, v15

    :goto_2
    :try_start_2
    sget-object v7, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    const/4 v14, 0x3

    invoke-virtual {v7, v14}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v15

    if-eqz v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/paging/TransformablePage;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n                            |   last item: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/paging/TransformablePage;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v9}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n                            |   placeholdersBefore: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                            |   placeholdersAfter: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                            |   hintReceiver: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                            |   sourceLoadStates: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                        "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v12, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|   mediatorLoadStates: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v14, v2, v3}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, v1, Landroidx/paging/PagingDataPresenter;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v13, v12}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    :cond_a
    invoke-virtual {v4}, Landroidx/paging/PageStore;->getSize()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Landroidx/paging/PageStore;->initializeHint()Landroidx/paging/ViewportHint$Initial;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/paging/HintReceiver;->processHint(Landroidx/paging/ViewportHint;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :catch_1
    move-exception v0

    move-object v6, v7

    move-object v5, v12

    :goto_5
    iput-object v6, v1, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    iput-object v5, v1, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    throw v0
.end method

.method private final setUiReceiver(Landroidx/paging/UiReceiver;)V
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->uiReceiver:Landroidx/paging/UiReceiver;

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->uiReceiver:Landroidx/paging/UiReceiver;

    instance-of p0, v0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    if-eqz p0, :cond_1

    check-cast v0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    invoke-virtual {v0}, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->getShouldRetry()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroidx/paging/UiReceiver;->retry()V

    :cond_0
    invoke-virtual {v0}, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->getShouldRefresh()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Landroidx/paging/UiReceiver;->refresh()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addLoadStateListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {p0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->addListener(Lnl3;)V

    return-void
.end method

.method public final addOnPagesUpdatedListener(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->onPagesUpdatedListeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Landroidx/paging/internal/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final collectFrom(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->collectFromRunner:Landroidx/paging/SingleRunner;

    new-instance v2, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    const/4 v1, 0x0

    invoke-direct {v2, p0, p1, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Le02;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/paging/SingleRunner;->runInIsolation$default(Landroidx/paging/SingleRunner;ILnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->inGetItem:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagingDataPresenter;->lastAccessedIndexUnfulfilled:Z

    iput p1, p0, Landroidx/paging/PagingDataPresenter;->lastAccessedIndex:I

    sget-object v0, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Accessing item index["

    const/16 v3, 0x5d

    invoke-static {v2, p1, v3}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->hintReceiver:Landroidx/paging/HintReceiver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {v1, p1}, Landroidx/paging/PageStore;->createAccessHintForIndex(I)Landroidx/paging/ViewportHint$Access;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/paging/HintReceiver;->processHint(Landroidx/paging/ViewportHint;)V

    :cond_2
    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {v0, p1}, Landroidx/paging/PageStore;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/paging/PagingDataPresenter;->inGetItem:Lxg5;

    :cond_3
    invoke-interface {v2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0, p1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1
.end method

.method public final getLoadStateFlow()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->loadStateFlow:Ly68;

    return-object p0
.end method

.method public final getOnPagesUpdatedFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->_onPagesUpdatedFlow:Lvg5;

    invoke-static {p0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    move-result p0

    return p0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {p0, p1}, Landroidx/paging/PageStore;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract presentPagingDataEvent(Landroidx/paging/PagingDataEvent;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataEvent<",
            "TT;>;",
            "Le02<",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final refresh()V
    .locals 4

    sget-object v0, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Refresh signal received"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->uiReceiver:Landroidx/paging/UiReceiver;

    invoke-interface {p0}, Landroidx/paging/UiReceiver;->refresh()V

    return-void
.end method

.method public final removeLoadStateListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {p0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->removeListener(Lnl3;)V

    return-void
.end method

.method public final removeOnPagesUpdatedListener(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->onPagesUpdatedListeners:Landroidx/paging/internal/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Landroidx/paging/internal/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final retry()V
    .locals 4

    sget-object v0, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Retry signal received"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->uiReceiver:Landroidx/paging/UiReceiver;

    invoke-interface {p0}, Landroidx/paging/UiReceiver;->retry()V

    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->pageStore:Landroidx/paging/PageStore;

    invoke-virtual {p0}, Landroidx/paging/PageStore;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    return-object p0
.end method
