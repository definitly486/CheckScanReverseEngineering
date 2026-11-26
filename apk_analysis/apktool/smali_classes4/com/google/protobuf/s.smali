.class public Lcom/google/protobuf/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/google/protobuf/a0;

.field public volatile b:Lfx0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/a0;)Lcom/google/protobuf/a0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    sget-object v0, Lfx0;->c:Lfx0$h;

    iput-object v0, p0, Lcom/google/protobuf/s;->b:Lfx0;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    sget-object p1, Lfx0;->c:Lfx0$h;

    iput-object p1, p0, Lcom/google/protobuf/s;->b:Lfx0;

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/a0;

    return-object p0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
