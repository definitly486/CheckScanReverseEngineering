.class public final Lrb8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lvv4;

.field public static final c:Lvv4;

.field public static final d:Lvv4;

.field public static final e:Lhw4;


# instance fields
.field public final a:Lua5;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lta5;->a()Lta5;

    move-result-object v0

    const-string v1, "grpc.subchannel.disconnections"

    const-string v2, "EXPERIMENTAL. Number of times the selected subchannel becomes disconnected"

    const-string v3, "{disconnection}"

    const-string v4, "grpc.target"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "grpc.lb.backend_service"

    const-string v6, "grpc.lb.locality"

    const-string v7, "grpc.disconnect_error"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lta5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lvv4;

    move-result-object v1

    sput-object v1, Lrb8;->b:Lvv4;

    const-string v1, "grpc.subchannel.connection_attempts_succeeded"

    const-string v2, "EXPERIMENTAL. Number of successful connection attempts"

    const-string v3, "{attempt}"

    const-string v4, "grpc.target"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "grpc.lb.backend_service"

    const-string v6, "grpc.lb.locality"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lta5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lvv4;

    move-result-object v1

    sput-object v1, Lrb8;->c:Lvv4;

    const-string v1, "grpc.subchannel.connection_attempts_failed"

    const-string v2, "EXPERIMENTAL. Number of failed connection attempts"

    const-string v3, "{attempt}"

    const-string v4, "grpc.target"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "grpc.lb.backend_service"

    const-string v6, "grpc.lb.locality"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lta5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lvv4;

    move-result-object v1

    sput-object v1, Lrb8;->d:Lvv4;

    const-string v1, "grpc.subchannel.open_connections"

    const-string v2, "grpc.target"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "grpc.security_level"

    const-string v4, "grpc.lb.backend_service"

    const-string v5, "grpc.lb.locality"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Li13;->b(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "missing metric name"

    invoke-static {v4, v5}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object v4, v0, Lta5;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lta5;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v0, Lta5;->d:I

    add-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lta5;->c:[Lsa5;

    array-length v8, v7

    if-ne v6, v8, :cond_0

    array-length v6, v7

    add-int/lit8 v6, v6, 0x5

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsa5;

    iput-object v6, v0, Lta5;->c:[Lsa5;

    :cond_0
    new-instance v6, Lhw4;

    invoke-direct {v6, v5, v1, v2, v3}, Le46;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lta5;->c:[Lsa5;

    aput-object v6, v2, v5

    iget-object v2, v0, Lta5;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lta5;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lta5;->d:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v6, Lrb8;->e:Lhw4;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metric with name grpc.subchannel.open_connections already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lua5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb8;->a:Lua5;

    return-void
.end method
