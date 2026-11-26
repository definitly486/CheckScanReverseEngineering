.class final Landroidx/paging/PagedList$dispatchStateChangeAsync$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.PagedList$dispatchStateChangeAsync$1"
    f = "PagedList.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagedList;->dispatchStateChangeAsync$paging_common(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
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
.field final synthetic $state:Landroidx/paging/LoadState;

.field final synthetic $type:Landroidx/paging/LoadType;

.field label:I

.field final synthetic this$0:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PagedList;Landroidx/paging/LoadType;Landroidx/paging/LoadState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/LoadState;",
            "Le02<",
            "-",
            "Landroidx/paging/PagedList$dispatchStateChangeAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->this$0:Landroidx/paging/PagedList;

    iput-object p2, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$type:Landroidx/paging/LoadType;

    iput-object p3, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$state:Landroidx/paging/LoadState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0}, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->invokeSuspend$lambda$0(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method private static final invokeSuspend$lambda$0(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    new-instance p1, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;

    iget-object v0, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->this$0:Landroidx/paging/PagedList;

    iget-object v1, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$type:Landroidx/paging/LoadType;

    iget-object p0, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$state:Landroidx/paging/LoadState;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;-><init>(Landroidx/paging/PagedList;Landroidx/paging/LoadType;Landroidx/paging/LoadState;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->this$0:Landroidx/paging/PagedList;

    invoke-static {p1}, Landroidx/paging/PagedList;->access$getLoadStateListeners$p(Landroidx/paging/PagedList;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroidx/paging/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    iget-object p1, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->this$0:Landroidx/paging/PagedList;

    invoke-static {p1}, Landroidx/paging/PagedList;->access$getLoadStateListeners$p(Landroidx/paging/PagedList;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$type:Landroidx/paging/LoadType;

    iget-object p0, p0, Landroidx/paging/PagedList$dispatchStateChangeAsync$1;->$state:Landroidx/paging/LoadState;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbm3;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
