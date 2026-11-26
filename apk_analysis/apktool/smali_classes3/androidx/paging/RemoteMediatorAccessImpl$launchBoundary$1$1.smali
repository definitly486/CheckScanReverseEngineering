.class final Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1"
    f = "RemoteMediatorAccessor.kt"
    l = {
        0x16f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/paging/RemoteMediatorAccessImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/RemoteMediatorAccessImpl<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/RemoteMediatorAccessImpl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/RemoteMediatorAccessImpl<",
            "TKey;TValue;>;",
            "Le02<",
            "-",
            "Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Error;Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend$lambda$2(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/paging/AccessorState;)Lb36;
    .locals 0

    invoke-static {p0}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend$lambda$0(Landroidx/paging/AccessorState;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/paging/AccessorState;)Lb36;
    .locals 0

    invoke-virtual {p0}, Landroidx/paging/AccessorState;->getPendingBoundary()Lb36;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-virtual {p2, p0}, Landroidx/paging/AccessorState;->clearPendingRequest(Landroidx/paging/LoadType;)V

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    invoke-virtual {p1}, Landroidx/paging/RemoteMediator$MediatorResult$Success;->endOfPaginationReached()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/paging/AccessorState$BlockState;->COMPLETED:Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p2, p0, p1}, Landroidx/paging/AccessorState;->setBlockState(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$BlockState;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;Landroidx/paging/AccessorState;)Lj59;
    .locals 1

    invoke-virtual {p2, p0}, Landroidx/paging/AccessorState;->clearPendingRequest(Landroidx/paging/LoadType;)V

    new-instance v0, Landroidx/paging/LoadState$Error;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    invoke-virtual {p1}, Landroidx/paging/RemoteMediator$MediatorResult$Error;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p0, v0}, Landroidx/paging/AccessorState;->setError(Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic m(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Success;Landroidx/paging/AccessorState;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend$lambda$1(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;Landroidx/paging/AccessorState;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-direct {v0, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/LoadType;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {p1}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object p1

    new-instance v1, Landroidx/paging/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb36;

    if-nez p1, :cond_2

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    iget-object v1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/LoadType;

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingState;

    iget-object v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getRemoteMediator$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/RemoteMediator;

    move-result-object v4

    iput-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->label:I

    invoke-virtual {v4, v1, p1, p0}, Landroidx/paging/RemoteMediator;->load(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult;

    instance-of v4, p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object v4

    new-instance v5, Landroidx/paging/n;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    invoke-direct {v5, v1, p1}, Landroidx/paging/n;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Success;)V

    invoke-virtual {v4, v5}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    instance-of v4, p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object v4

    new-instance v5, Landroidx/paging/o;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    invoke-direct {v5, v1, p1}, Landroidx/paging/o;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Error;)V

    invoke-virtual {v4, v5}, Landroidx/paging/AccessorStateHolder;->use(Lnl3;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v2
.end method
