.class public final Lio/appmetrica/analytics/impl/Pk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Nl;

.field public final c:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Nl;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Pk;->b:Lio/appmetrica/analytics/impl/Nl;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Pk;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public final createBinaryStateStorageFactory(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufBinaryStateStorageFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lio/appmetrica/analytics/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer<",
            "TP;>;",
            "Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter<",
            "TT;TP;>;)",
            "Lio/appmetrica/analytics/coreapi/internal/data/ProtobufBinaryStateStorageFactory<",
            "TT;>;"
        }
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/en;->a:Lio/appmetrica/analytics/impl/fn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/dn;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/dn;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)V

    return-object p0
.end method

.method public final getAppDataStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getAppFileStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getDbStorage()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method public final getSdkDataStorage()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->sdkStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getTempCacheStorage()Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;
    .locals 6

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->a:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ok;->h:Lio/appmetrica/analytics/impl/Gn;

    if-nez v1, :cond_1

    new-instance v1, Lio/appmetrica/analytics/impl/Gn;

    sget-object v2, Lio/appmetrica/analytics/impl/in;->a:Lio/appmetrica/analytics/impl/in;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ok;->g:Lio/appmetrica/analytics/impl/Fn;

    if-nez v3, :cond_0

    new-instance v3, Lio/appmetrica/analytics/impl/Fn;

    new-instance v4, Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Ok;->f(Landroid/content/Context;)Lio/appmetrica/analytics/impl/l7;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/Jl;-><init>(Lio/appmetrica/analytics/impl/l7;)V

    const-string v5, "temp_cache"

    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/Fn;-><init>(Lio/appmetrica/analytics/impl/M6;Ljava/lang/String;)V

    iput-object v3, v0, Lio/appmetrica/analytics/impl/Ok;->g:Lio/appmetrica/analytics/impl/Fn;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {v1, p0, v2, v3}, Lio/appmetrica/analytics/impl/Gn;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Ok;->h:Lio/appmetrica/analytics/impl/Gn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final legacyModulePreferences()Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Ob;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->b:Lio/appmetrica/analytics/impl/Nl;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Ob;-><init>(Lio/appmetrica/analytics/impl/Nl;)V

    return-object v0
.end method

.method public final modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/jd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pk;->b:Lio/appmetrica/analytics/impl/Nl;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/jd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Nl;)V

    return-object v0
.end method
