.class public final Lio/appmetrica/analytics/idsync/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/idsync/impl/v;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J

.field public final k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final l:Lio/appmetrica/analytics/idsync/impl/x;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/u;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->b:Ljava/lang/String;

    const-string p2, "adv_id"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->c:Ljava/lang/String;

    const-string p2, "oaid"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->d:Ljava/lang/String;

    const-string p2, "yandex_adv_id"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->e:Ljava/lang/String;

    const-string p2, "uuid"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->f:Ljava/lang/String;

    const-string p2, "deviceid"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->g:Ljava/lang/String;

    const-string p2, "app_set_id"

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->h:Ljava/lang/String;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->i:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->j:J

    new-instance p2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    new-instance p2, Lio/appmetrica/analytics/idsync/impl/x;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/idsync/impl/x;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    iput-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->l:Lio/appmetrica/analytics/idsync/impl/x;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 9

    .line 141
    iget-wide v7, p0, Lio/appmetrica/analytics/idsync/impl/u;->j:J

    .line 142
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->l:Lio/appmetrica/analytics/idsync/impl/x;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/idsync/impl/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 143
    invoke-virtual/range {v0 .. v8}, Lio/appmetrica/analytics/idsync/impl/u;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V

    :cond_0
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V
    .locals 1

    add-int/lit8 p6, p6, 0x1

    .line 144
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->l:Lio/appmetrica/analytics/idsync/impl/x;

    .line 145
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/idsync/impl/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual/range {p0 .. p8}, Lio/appmetrica/analytics/idsync/impl/u;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getPlatformIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;->getAdvIdentifiersProvider()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsProvider;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/u;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lio/appmetrica/analytics/idsync/impl/u;->c:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v3

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lio/appmetrica/analytics/idsync/impl/u;->d:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lio/appmetrica/analytics/idsync/impl/u;->e:Ljava/lang/String;

    iget-object v1, v1, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/u;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/u;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;->getAppSetIdProvider()Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdProvider;

    move-result-object p2

    invoke-interface {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdProvider;->getAppSetId()Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object p2

    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getSupportIOExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v4

    iget-object p2, p0, Lio/appmetrica/analytics/idsync/impl/u;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {p2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Ljda;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljda;-><init>(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V

    invoke-interface {v4, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V
    .locals 12

    move-wide/from16 v10, p7

    .line 147
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/u;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, p4

    const-wide/16 v4, 0x2

    mul-long v8, v10, v4

    add-long/2addr v2, v8

    .line 148
    iget-wide v4, p0, Lio/appmetrica/analytics/idsync/impl/u;->i:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 149
    new-instance v0, Lida;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lida;-><init>(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V

    invoke-interface {p3, v0, v10, v11}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
