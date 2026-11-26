.class public abstract Landroidx/paging/PagingDataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final differ:Landroidx/paging/AsyncPagingDataDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final loadStateFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final onPagesUpdatedFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private userSetRestorationPolicy:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Lo22;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Lo22;",
            "Lo22;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer;

    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lo22;Lo22;)V

    iput-object v0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    new-instance p1, Landroidx/paging/PagingDataAdapter$1;

    invoke-direct {p1, p0}, Landroidx/paging/PagingDataAdapter$1;-><init>(Landroidx/paging/PagingDataAdapter;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance p1, Landroidx/paging/PagingDataAdapter$2;

    invoke-direct {p1, p0}, Landroidx/paging/PagingDataAdapter$2;-><init>(Landroidx/paging/PagingDataAdapter;)V

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataAdapter;->addLoadStateListener(Lnl3;)V

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer;->getLoadStateFlow()Lhd3;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataAdapter;->loadStateFlow:Lhd3;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer;->getOnPagesUpdatedFlow()Lhd3;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataAdapter;->onPagesUpdatedFlow:Lhd3;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 62
    sget-object p2, Lqo2;->a:Loi2;

    .line 63
    sget-object p2, Luy4;->a:Lhu3;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 64
    sget-object p3, Lqo2;->a:Loi2;

    .line 65
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;)V
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    sget-object v0, Lqo2;->a:Loi2;

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 66
    sget-object p2, Lqo2;->a:Loi2;

    .line 67
    sget-object p2, Luy4;->a:Lhu3;

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;Lr22;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lo22;Lo22;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;Lr22;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 69
    sget-object p2, Lqo2;->a:Loi2;

    .line 70
    sget-object p2, Luy4;->a:Lhu3;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 71
    sget-object p3, Lqo2;->a:Loi2;

    .line 72
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lr22;Lr22;)V

    return-void
.end method

.method private static final _init_$considerAllowingStateRestoration(Landroidx/paging/PagingDataAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/paging/PagingDataAdapter<",
            "TT;TVH;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/paging/PagingDataAdapter;->userSetRestorationPolicy:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$_init_$considerAllowingStateRestoration(Landroidx/paging/PagingDataAdapter;)V
    .locals 0

    invoke-static {p0}, Landroidx/paging/PagingDataAdapter;->_init_$considerAllowingStateRestoration(Landroidx/paging/PagingDataAdapter;)V

    return-void
.end method

.method public static synthetic b(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/PagingDataAdapter;->withLoadStateHeaderAndFooter$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/PagingDataAdapter;->withLoadStateHeader$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/PagingDataAdapter;->withLoadStateFooter$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final withLoadStateFooter$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final withLoadStateHeader$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final withLoadStateHeaderAndFooter$lambda$0(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;Landroidx/paging/CombinedLoadStates;)Lj59;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/paging/CombinedLoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    invoke-virtual {p2}, Landroidx/paging/CombinedLoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final addLoadStateListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->addLoadStateListener(Lnl3;)V

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

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->addOnPagesUpdatedListener(Lll3;)V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer;->getItemCount()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLoadStateFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->loadStateFlow:Lhd3;

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

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->onPagesUpdatedFlow:Lhd3;

    return-object p0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->peek(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final refresh()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer;->refresh()V

    return-void
.end method

.method public final removeLoadStateListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->removeLoadStateListener(Lnl3;)V

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

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagingDataDiffer;->removeOnPagesUpdatedListener(Lll3;)V

    return-void
.end method

.method public final retry()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer;->retry()V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Stable ids are unsupported on PagingDataAdapter."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagingDataAdapter;->userSetRestorationPolicy:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

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

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0}, Landroidx/paging/AsyncPagingDataDiffer;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    return-object p0
.end method

.method public final submitData(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer;->submitData(Landroidx/paging/PagingData;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final submitData(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object p0, p0, Landroidx/paging/PagingDataAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer;->submitData(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    return-void
.end method

.method public final withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lim1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lim1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter;->addLoadStateListener(Lnl3;)V

    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final withLoadStateHeader(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lrf0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lrf0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter;->addLoadStateListener(Lnl3;)V

    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lx26;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lx26;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter;->addLoadStateListener(Lnl3;)V

    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v2, 0x3

    new-array v2, v2, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method
