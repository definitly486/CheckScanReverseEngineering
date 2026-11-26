.class public Lcom/google/firebase/inappmessaging/internal/GrpcClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final stub:Ly34$a;


# direct methods
.method public constructor <init>(Ly34$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->stub:Ly34$a;

    return-void
.end method


# virtual methods
.method public fetchEligibleCampaigns(Le73;)Lf73;
    .locals 7

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->stub:Ly34$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lv1;->a:Ly81;

    iget-object p0, p0, Lv1;->b:Lio/grpc/b;

    const-string v2, "units"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lxc2;

    const-wide v2, 0x6fc23ac00L

    invoke-direct {v0, v2, v3}, Lxc2;-><init>(J)V

    invoke-static {p0}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object p0

    iput-object v0, p0, Lio/grpc/b$a;->a:Lxc2;

    new-instance v0, Lio/grpc/b;

    invoke-direct {v0, p0}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    sget-object p0, Ly34;->a:Lra5;

    if-nez p0, :cond_1

    const-class v2, Ly34;

    monitor-enter v2

    :try_start_0
    sget-object p0, Ly34;->a:Lra5;

    if-nez p0, :cond_0

    sget-object p0, Lra5$a;->UNARY:Lra5$a;

    const-string v3, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing/FetchEligibleCampaigns"

    invoke-static {}, Le73;->c()Le73;

    move-result-object v4

    sget-object v5, Lns6;->a:Lcom/google/protobuf/j;

    new-instance v5, Lns6$a;

    invoke-direct {v5, v4}, Lns6$a;-><init>(Lcom/google/protobuf/a0;)V

    invoke-static {}, Lf73;->b()Lf73;

    move-result-object v4

    new-instance v6, Lns6$a;

    invoke-direct {v6, v4}, Lns6$a;-><init>(Lcom/google/protobuf/a0;)V

    new-instance v4, Lra5;

    invoke-direct {v4, p0, v3, v5, v6}, Lra5;-><init>(Lra5$a;Ljava/lang/String;Lns6$a;Lns6$a;)V

    sput-object v4, Ly34;->a:Lra5;

    move-object p0, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v2, Lul1;->a:Ljava/util/logging/Logger;

    new-instance v2, Lul1$d;

    invoke-direct {v2}, Lul1$d;-><init>()V

    sget-object v3, Lul1;->c:Lio/grpc/b$b;

    sget-object v4, Lul1$c;->BLOCKING:Lul1$c;

    invoke-virtual {v0, v3, v4}, Lio/grpc/b;->d(Lio/grpc/b$b;Ljava/lang/Object;)Lio/grpc/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v0

    iput-object v2, v0, Lio/grpc/b$a;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/b;

    invoke-direct {v3, v0}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    invoke-virtual {v1, p0, v3}, Ly81;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lul1;->b(Lrl1;Le73;)Lul1$a;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Ll0;->isDone()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lul1$d;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    const-string v3, "Thread interrupted"

    invoke-virtual {p0, v3, v0}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v1

    goto :goto_3

    :catchall_2
    move-exception p0

    move v0, v1

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_4
    move v0, v1

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_4

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lul1$d;->shutdown()V

    invoke-static {p1}, Lul1;->c(Lul1$a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    check-cast p0, Lf73;

    return-object p0

    :goto_5
    :try_start_5
    invoke-static {p0, p1}, Lul1;->a(Lrl1;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw p0
.end method
