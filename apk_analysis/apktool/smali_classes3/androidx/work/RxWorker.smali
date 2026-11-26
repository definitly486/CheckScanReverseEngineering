.class public abstract Landroidx/work/RxWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# static fields
.field static final INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/SynchronousExecutor;

    invoke-direct {v0}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    sput-object v0, Landroidx/work/RxWorker;->INSTANT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static synthetic b(Landroidx/work/RxWorker;Lmz7;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/RxWorker;->lambda$convert$0(Lmz7;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private convert(Lmz7;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmz7<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll97;

    invoke-direct {v0, p0, p1}, Ll97;-><init>(Landroidx/work/RxWorker;Lmz7;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private lambda$convert$0(Lmz7;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/RxWorker;->getBackgroundScheduler()Lhe7;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    sget-object v1, Lne7;->a:Lhe7;

    new-instance v1, Lw13;

    invoke-direct {v1, v0}, Lw13;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Landroidx/work/RxWorker$1;

    invoke-direct {v0, p0, p2}, Landroidx/work/RxWorker$1;-><init>(Landroidx/work/RxWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {p1, v0}, Lmz7;->d(Lt08;)V

    const-string p0, "converted single to future"

    return-object p0
.end method


# virtual methods
.method public abstract createWork()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method public getBackgroundScheduler()Lhe7;
    .locals 1

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    sget-object v0, Lne7;->a:Lhe7;

    new-instance v0, Lw13;

    invoke-direct {v0, p0}, Lw13;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public getForegroundInfo()Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lrm3$j;

    invoke-direct {v0, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Ld08;

    invoke-direct {p0, v0}, Ld08;-><init>(Lrm3$j;)V

    return-object p0
.end method

.method public getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/RxWorker;->getForegroundInfo()Lmz7;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/RxWorker;->convert(Lmz7;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final setCompletableProgress(Landroidx/work/Data;)Lqp1;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "future is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lrm3$h;

    invoke-direct {p1, p0}, Lrm3$h;-><init>(Ljava/util/concurrent/Future;)V

    new-instance p0, Lcq1;

    invoke-direct {p0, p1}, Lcq1;-><init>(Lh6;)V

    return-object p0
.end method

.method public final setForeground(Landroidx/work/ForegroundInfo;)Lqp1;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "future is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lrm3$h;

    invoke-direct {p1, p0}, Lrm3$h;-><init>(Ljava/util/concurrent/Future;)V

    new-instance p0, Lcq1;

    invoke-direct {p0, p1}, Lcq1;-><init>(Lh6;)V

    return-object p0
.end method

.method public final setProgress(Landroidx/work/Data;)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Data;",
            ")",
            "Lmz7<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget p1, Lgg3;->b:I

    const-string p1, "future is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyg3;

    invoke-direct {p1, p0}, Lyg3;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance p0, Lph3;

    invoke-direct {p0, p1}, Lph3;-><init>(Lyg3;)V

    return-object p0
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/RxWorker;->createWork()Lmz7;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/RxWorker;->convert(Lmz7;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
