.class public final Lio/appmetrica/analytics/impl/Ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    .line 44
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/Hk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hk;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Gk;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Gk;-><init>()V

    new-instance v2, Lqg;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lqg;-><init>(I)V

    new-instance v3, Lio/appmetrica/analytics/impl/Ka;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Ka;-><init>(Z)V

    new-instance v5, Lio/appmetrica/analytics/impl/un;

    invoke-direct {v5, v1, v1, v3, v2}, Lio/appmetrica/analytics/impl/un;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ka;Lio/appmetrica/analytics/impl/vn;)V

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v2, Lio/appmetrica/analytics/impl/l7;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/Ok;->a:Lio/appmetrica/analytics/impl/n7;

    new-instance v6, Lio/appmetrica/analytics/impl/m7;

    iget-object v7, v3, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/W6;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/n7;->b:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v3, v4}, Lio/appmetrica/analytics/impl/m7;-><init>(Lio/appmetrica/analytics/impl/W6;Ljava/util/ArrayList;Z)V

    invoke-virtual {v6, p0, v0}, Lio/appmetrica/analytics/impl/m7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/k7;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    invoke-direct {v2, p0, v0, v5, v3}, Lio/appmetrica/analytics/impl/l7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/un;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Lio/appmetrica/analytics/impl/f3;

    new-instance v1, Lio/appmetrica/analytics/impl/Jl;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    const-string v2, "binary_data"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/f3;-><init>(Lio/appmetrica/analytics/impl/M6;Ljava/lang/String;)V

    const-string v1, "auto_inapp_collecting_info_data"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/f3;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/Ok;->c(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p0

    const-string v1, "auto_inapp_collecting_info_data"

    invoke-interface {p0, v1, v0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-class p0, Lio/appmetrica/analytics/impl/zm;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hn;->b(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/zm;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/zm;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->o:J

    new-instance v1, Lio/appmetrica/analytics/impl/zm;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ik;->b(Landroid/content/Context;)V

    return-void
.end method
