.class public final Lio/appmetrica/analytics/push/impl/Z0;
.super Lio/appmetrica/analytics/push/impl/B2;
.source "SourceFile"


# static fields
.field public static final b:[J


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/appmetrica/analytics/push/impl/Z0;->b:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/B2;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/Z0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;[J)Lio/appmetrica/analytics/push/impl/Y0;
    .locals 7

    .line 340
    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    .line 341
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 342
    const-string v2, "Request lazy push from %s with retry policy %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    .line 343
    :goto_0
    :try_start_0
    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v3, "Request #%d for %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    new-instance v2, Lio/appmetrica/analytics/push/impl/N0;

    .line 345
    invoke-direct {v2, p0}, Lio/appmetrica/analytics/push/impl/N0;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 348
    iget-object v6, v2, Lio/appmetrica/analytics/push/impl/N0;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 349
    :cond_0
    invoke-virtual {v2}, Lio/appmetrica/analytics/push/impl/N0;->a()[B

    move-result-object v2

    .line 350
    sget-object v3, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v4, "Response for %s: \'%s\'"

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 351
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 352
    invoke-virtual {v3, v4, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v3, Lio/appmetrica/analytics/push/impl/Y0;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/push/impl/Y0;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 354
    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 355
    :try_start_1
    aget-wide v3, p2, v1

    .line 356
    sget-object v1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v5, "Wait %d seconds before next request for %s"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 358
    sget-object v3, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    move v1, v2

    goto/16 :goto_0

    .line 360
    :cond_1
    throw v2
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;
    .locals 8

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getLazyPushRequestInfo()Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V

    return-object p0

    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/Z0;->a:Landroid/content/Context;

    invoke-static {v2}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/impl/r;->c()Lio/appmetrica/analytics/push/impl/K1;

    move-result-object v2

    iget-object v2, v2, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/push/impl/P1;->filter(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->isSilence()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Z0;->a:Landroid/content/Context;

    new-instance v2, Lio/appmetrica/analytics/push/impl/B0;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/push/impl/B0;-><init>(Landroid/content/Context;)V

    new-instance v3, Lio/appmetrica/analytics/push/impl/T1;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/T1;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/push/impl/I2;

    invoke-direct {v4, p0}, Lio/appmetrica/analytics/push/impl/I2;-><init>(Landroid/content/Context;)V

    new-instance v5, Lio/appmetrica/analytics/push/impl/e1;

    invoke-direct {v5, p0}, Lio/appmetrica/analytics/push/impl/e1;-><init>(Landroid/content/Context;)V

    new-instance p0, Lio/appmetrica/analytics/push/impl/J;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/J;-><init>()V

    const/4 v6, 0x5

    new-array v6, v6, [Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const/4 v2, 0x4

    aput-object p0, v6, v2

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lio/appmetrica/analytics/push/impl/p2;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/p2;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;

    invoke-interface {v4, p1}, Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;->getRule(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;

    invoke-interface {v3}, Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;->getPatternList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lio/appmetrica/analytics/push/impl/p2;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/push/impl/p2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/push/impl/p2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;->getRetryStrategySeconds()[J

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Lio/appmetrica/analytics/push/impl/Z0;->b:[J

    :goto_4
    invoke-static {p0, v3, v1}, Lio/appmetrica/analytics/push/impl/Z0;->a(Ljava/lang/String;Ljava/util/HashMap;[J)Lio/appmetrica/analytics/push/impl/Y0;

    move-result-object p0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/Y0;->a:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/Y0;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string p0, "Filtered by backend"

    invoke-static {p1, p0, v1}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_8
    :try_start_1
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/Y0;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/push/model/PushMessage;->append(Lorg/json/JSONObject;)Lio/appmetrica/analytics/push/model/PushMessage;

    move-result-object p0

    new-instance v1, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_2
    const-string v1, "Failed merge push messages"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0

    goto :goto_5

    :cond_9
    const-string p0, "Unknown response by backend"

    invoke-static {p1, p0, v1}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    return-object p0

    :goto_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;->getUseCurPushAsFallback()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p0, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Backend not available"

    invoke-static {p1, v0, p0}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Lio/appmetrica/analytics/push/impl/A2;

    iget-object p1, v2, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->category:Ljava/lang/String;

    iget-object v0, v2, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->details:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/A2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
