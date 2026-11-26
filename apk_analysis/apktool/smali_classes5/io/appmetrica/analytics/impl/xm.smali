.class public final Lio/appmetrica/analytics/impl/xm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Am;


# instance fields
.field public volatile a:Lio/appmetrica/analytics/impl/vm;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/xm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/vm;
    .locals 0

    .line 60
    iget-object p0, p0, Lio/appmetrica/analytics/impl/xm;->a:Lio/appmetrica/analytics/impl/vm;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "startupState"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lio/appmetrica/analytics/impl/zm;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/hn;->create(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jo;->a()Lio/appmetrica/analytics/impl/Fo;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/vm;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "device_id"

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/zm;

    invoke-direct {v1, v2, v0, p1}, Lio/appmetrica/analytics/impl/vm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Am;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/appmetrica/analytics/impl/xm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lio/appmetrica/analytics/impl/xm;->a:Lio/appmetrica/analytics/impl/vm;

    if-eqz v0, :cond_1

    .line 63
    iget-object p0, p0, Lio/appmetrica/analytics/impl/xm;->a:Lio/appmetrica/analytics/impl/vm;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/Am;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void

    :cond_0
    const-string p0, "startupState"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lio/appmetrica/analytics/impl/xm;->a:Lio/appmetrica/analytics/impl/vm;

    .line 65
    iget-object p0, p0, Lio/appmetrica/analytics/impl/xm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Am;

    .line 67
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Am;->a(Lio/appmetrica/analytics/impl/vm;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/impl/Am;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
