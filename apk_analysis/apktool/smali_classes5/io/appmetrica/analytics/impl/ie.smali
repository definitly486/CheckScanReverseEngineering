.class public final Lio/appmetrica/analytics/impl/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/ie;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/ie;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ie;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/ie;->a:Lio/appmetrica/analytics/impl/ie;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/ie;->b:Ljava/util/LinkedHashMap;

    const-string v0, "8.4.1"

    const-string v1, "50165453"

    const-string v2, "io.appmetrica.analytics"

    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/network/UserAgent;->getFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/ie;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/rm;)Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    .locals 11

    new-instance v0, Lio/appmetrica/analytics/impl/nm;

    new-instance v1, Lio/appmetrica/analytics/impl/re;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/re;-><init>()V

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/nm;-><init>(Lio/appmetrica/analytics/impl/re;Lio/appmetrica/analytics/impl/Ad;)V

    new-instance v9, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;

    invoke-direct {v9, p1}, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;-><init>()V

    new-instance p1, Lio/appmetrica/analytics/impl/A5;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Rm;->a:Landroid/content/Context;

    invoke-direct {p1, v3}, Lio/appmetrica/analytics/impl/A5;-><init>(Landroid/content/Context;)V

    new-instance v10, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;

    sget-object v3, Lio/appmetrica/analytics/impl/ie;->a:Lio/appmetrica/analytics/impl/ie;

    sget-object v4, Lio/appmetrica/analytics/impl/ge;->b:Lio/appmetrica/analytics/impl/ge;

    monitor-enter v3

    :try_start_0
    sget-object v5, Lio/appmetrica/analytics/impl/ie;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;

    new-instance v7, Lio/appmetrica/analytics/impl/La;

    sget-object v8, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lio/appmetrica/analytics/impl/La;-><init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/ge;)V

    const-string v8, "STARTUP"

    invoke-direct {v6, v7, v8}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/HostRetryInfoProvider;Ljava/lang/String;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v6, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-direct {v10, v6}, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;-><init>(Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;)V

    new-instance v3, Lio/appmetrica/analytics/impl/Om;

    new-instance v6, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-direct {v6, v0, v9}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;-><init>(Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    new-instance v7, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    invoke-direct {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;

    invoke-direct {v0}, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;-><init>()V

    invoke-direct {v8, v0}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/ResponseValidityChecker;)V

    new-instance v5, Lio/appmetrica/analytics/impl/hm;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/hm;-><init>()V

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/impl/Om;-><init>(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/hm;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    sget-object v6, Lkx2;->b:Lkx2;

    sget-object v7, Lio/appmetrica/analytics/impl/ie;->c:Ljava/lang/String;

    move-object v5, v3

    move-object v4, v10

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :goto_1
    monitor-exit v3

    throw p0
.end method

.method public static final a(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    .locals 15

    .line 127
    new-instance v7, Lio/appmetrica/analytics/networktasks/internal/AESRSARequestBodyEncrypter;

    invoke-direct {v7}, Lio/appmetrica/analytics/networktasks/internal/AESRSARequestBodyEncrypter;-><init>()V

    .line 128
    new-instance v2, Lio/appmetrica/analytics/impl/gh;

    invoke-direct {v2, v7}, Lio/appmetrica/analytics/impl/gh;-><init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    .line 129
    new-instance v3, Lio/appmetrica/analytics/impl/Nb;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/impl/Nb;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 130
    new-instance v8, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 131
    new-instance v9, Lio/appmetrica/analytics/coreutils/internal/executors/BlockingExecutor;

    invoke-direct {v9}, Lio/appmetrica/analytics/coreutils/internal/executors/BlockingExecutor;-><init>()V

    .line 132
    new-instance v10, Lio/appmetrica/analytics/impl/A5;

    .line 133
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    .line 134
    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/A5;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v11, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;

    sget-object v1, Lio/appmetrica/analytics/impl/ie;->a:Lio/appmetrica/analytics/impl/ie;

    sget-object v0, Lio/appmetrica/analytics/impl/ge;->a:Lio/appmetrica/analytics/impl/ge;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v4, Lio/appmetrica/analytics/impl/ie;->b:Ljava/util/LinkedHashMap;

    .line 137
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 138
    new-instance v5, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;

    .line 139
    new-instance v6, Lio/appmetrica/analytics/impl/La;

    .line 140
    sget-object v12, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    .line 141
    invoke-virtual {v12}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v12

    .line 142
    invoke-direct {v6, v12, v0}, Lio/appmetrica/analytics/impl/La;-><init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/ge;)V

    .line 143
    const-string v12, "REPORT"

    .line 144
    invoke-direct {v5, v6, v12}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/HostRetryInfoProvider;Ljava/lang/String;)V

    .line 145
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 146
    :cond_0
    :goto_0
    check-cast v5, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 147
    invoke-direct {v11, v5}, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;-><init>(Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;)V

    .line 148
    new-instance v0, Lio/appmetrica/analytics/impl/Ah;

    .line 149
    new-instance v4, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-direct {v4, v2, v3}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;-><init>(Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    .line 150
    new-instance v5, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    invoke-direct {v5}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;-><init>()V

    .line 151
    new-instance v6, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 152
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;

    invoke-direct {v1}, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;-><init>()V

    .line 153
    invoke-direct {v6, v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/ResponseValidityChecker;)V

    move-object v1, p0

    .line 154
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Ah;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/gh;Lio/appmetrica/analytics/impl/Nb;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    .line 155
    new-instance p0, Lio/appmetrica/analytics/impl/wo;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/wo;-><init>()V

    .line 156
    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 157
    sget-object v14, Lio/appmetrica/analytics/impl/ie;->c:Ljava/lang/String;

    move-object v12, v0

    .line 158
    invoke-direct/range {v8 .. v14}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object v8

    :goto_1
    monitor-exit v1

    throw p0
.end method
