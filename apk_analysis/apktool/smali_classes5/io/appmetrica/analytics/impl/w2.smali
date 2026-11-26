.class public final Lio/appmetrica/analytics/impl/w2;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Go;

.field public final c:Lio/appmetrica/analytics/impl/nk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->u()Lio/appmetrica/analytics/impl/Go;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/impl/nk;->c()Lio/appmetrica/analytics/impl/nk;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/w2;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/nk;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/nk;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 13
    iput-object p2, p0, Lio/appmetrica/analytics/impl/w2;->b:Lio/appmetrica/analytics/impl/Go;

    .line 14
    iput-object p3, p0, Lio/appmetrica/analytics/impl/w2;->c:Lio/appmetrica/analytics/impl/nk;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 3

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/w2;->b:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/w2;->b:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Go;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/rh;

    iget-boolean p1, p1, Lio/appmetrica/analytics/impl/rh;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/impl/w2;->c:Lio/appmetrica/analytics/impl/nk;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/nk;->b:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/mf;->d(Z)Lio/appmetrica/analytics/impl/mf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->l:Lio/appmetrica/analytics/impl/Y8;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y8;->a()V

    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a9;->b:Ljava/util/Set;

    iput v1, p1, Lio/appmetrica/analytics/impl/a9;->d:I

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/appmetrica/analytics/impl/a9;->a:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y8;->b:Lio/appmetrica/analytics/impl/d9;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/d9;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/d9;->b:Lio/appmetrica/analytics/impl/c9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/b9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/b9;->a(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/G9;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const-string p1, "event_hashes"

    invoke-interface {v0, p1, p0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    :cond_2
    return v1
.end method
