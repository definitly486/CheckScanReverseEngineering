.class public final Lio/appmetrica/analytics/impl/Bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/H;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/appmetrica/analytics/impl/S;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Bg;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Bg;->b:Lio/appmetrica/analytics/impl/S;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lio/appmetrica/analytics/impl/S;

    new-instance p3, Lio/appmetrica/analytics/impl/Cg;

    invoke-direct {p3}, Lio/appmetrica/analytics/impl/Cg;-><init>()V

    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/S;-><init>(Lio/appmetrica/analytics/impl/Cg;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Bg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/S;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 1

    .line 148
    new-instance v0, Lio/appmetrica/analytics/impl/ke;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ke;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Bg;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Bg;->b:Lio/appmetrica/analytics/impl/S;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "io.appmetrica.analytics.identifiers.internal.AdvIdentifiersProvider"

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    sget-object p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->IDENTIFIER_PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    const-string p2, "Module io.appmetrica.analytics:analytics-identifiers does not exist"

    invoke-direct {p0, v1, p1, p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    return-object p0

    :cond_0
    move-object v0, p2

    check-cast v0, Lio/appmetrica/analytics/impl/Xn;

    const/4 v2, 0x0

    iput v2, v0, Lio/appmetrica/analytics/impl/Xn;->c:I

    move-object v2, v1

    :catch_0
    :goto_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xn;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Bg;->b:Lio/appmetrica/analytics/impl/S;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Bg;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lio/appmetrica/analytics/impl/S;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    sget-object v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->IDENTIFIER_PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Bg;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception while fetching "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Bg;->a:Ljava/lang/String;

    const-string v7, " adv_id: "

    invoke-static {v5, v6, v7, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v4, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    :try_start_1
    move-object v3, p2

    check-cast v3, Lio/appmetrica/analytics/impl/Xn;

    iget v3, v3, Lio/appmetrica/analytics/impl/Xn;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>()V

    :cond_6
    return-object v2
.end method
