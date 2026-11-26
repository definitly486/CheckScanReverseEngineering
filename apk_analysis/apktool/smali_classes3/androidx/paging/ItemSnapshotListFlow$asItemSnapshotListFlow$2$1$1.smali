.class final Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1"
    f = "ItemSnapshotListFlow.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Landroidx/paging/PageStore<",
        "TT;>;",
        "Landroidx/paging/PageEvent<",
        "TT;>;",
        "Le02<",
        "-",
        "Landroidx/paging/PageStore<",
        "TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $errorCombinedLoadStates:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLoadError:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lr07;Lnl3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$errorCombinedLoadStates:Lr07;

    iput-object p2, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$onLoadError:Lnl3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/paging/PageStore;Landroidx/paging/PageEvent;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageStore<",
            "TT;>;",
            "Landroidx/paging/PageEvent<",
            "TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/PageStore<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;

    iget-object v1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$errorCombinedLoadStates:Lr07;

    iget-object p0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$onLoadError:Lnl3;

    invoke-direct {v0, v1, p0, p3}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;-><init>(Lr07;Lnl3;Le02;)V

    iput-object p1, v0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroidx/paging/PageStore;

    check-cast p2, Landroidx/paging/PageEvent;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->invoke(Landroidx/paging/PageStore;Landroidx/paging/PageEvent;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PageStore;

    iget-object v0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageEvent;

    instance-of v2, v0, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$LoadStateUpdate;->getSource()Landroidx/paging/LoadStates;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/LoadStates;->hasError()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/paging/PageEvent$LoadStateUpdate;->getMediator()Landroidx/paging/LoadStates;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/paging/LoadStates;->hasError()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$errorCombinedLoadStates:Lr07;

    iget-object v2, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/CombinedLoadStates;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$LoadStateUpdate;->getSource()Landroidx/paging/LoadStates;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/paging/PageEvent$LoadStateUpdate;->getMediator()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/paging/MutableCombinedLoadStateCollectionKt;->computeNewState(Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object v0

    iput-object v0, v1, Lr07;->b:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$onLoadError:Lnl3;

    iget-object p0, p0, Landroidx/paging/ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1;->$errorCombinedLoadStates:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_2
    instance-of p0, v0, Landroidx/paging/PageEvent$StaticList;

    if-eqz p0, :cond_3

    new-instance p0, Landroidx/paging/PageStore;

    new-instance p1, Landroidx/paging/TransformablePage;

    check-cast v0, Landroidx/paging/PageEvent$StaticList;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$StaticList;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/paging/PageEvent$StaticList;->getPlaceholdersBefore()I

    move-result v1

    invoke-virtual {v0}, Landroidx/paging/PageEvent$StaticList;->getPlaceholdersAfter()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Landroidx/paging/PageStore;-><init>(Ljava/util/List;II)V

    return-object p0

    :cond_3
    instance-of p0, v0, Landroidx/paging/PageEvent$Insert;

    if-eqz p0, :cond_5

    move-object p0, v0

    check-cast p0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v2

    sget-object v3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne v2, v3, :cond_5

    if-nez p1, :cond_4

    new-instance p1, Landroidx/paging/PageStore;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v1

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Landroidx/paging/PageStore;-><init>(Ljava/util/List;II)V

    return-object p1

    :cond_4
    const-string p0, "PageStore should be null on REFRESH. This likely indicates an error in the library. Please file a bug in the Buganizer"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroidx/paging/PageStore;->processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;

    return-object p1

    :cond_6
    const-string p0, "PageStore should only be null on REFRESH. This likely indicates an error in the library. Please file a bug in the Buganizer"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_7
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method
