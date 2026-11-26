.class public final Lio/appmetrica/analytics/impl/nm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/re;

.field public final b:Lio/appmetrica/analytics/impl/Ad;

.field public final c:Lio/appmetrica/analytics/impl/Wb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/re;Lio/appmetrica/analytics/impl/Ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/nm;->b:Lio/appmetrica/analytics/impl/Ad;

    new-instance p1, Lio/appmetrica/analytics/impl/Wb;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Wb;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nm;->c:Lio/appmetrica/analytics/impl/Wb;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;Lio/appmetrica/analytics/impl/Wb;)V
    .locals 6

    .line 816
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    sget-object p3, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    .line 818
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/X;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object p3

    const-string v0, "yandex_adv_id"

    const-string v1, "oaid"

    const-string v2, "adv_id"

    const-string v3, ""

    if-eqz p3, :cond_4

    .line 819
    invoke-interface {p2}, Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;->isRestrictedForSdk()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 820
    :cond_0
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 821
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result v4

    .line 822
    iget-object v5, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    if-nez v4, :cond_1

    .line 823
    invoke-virtual {v5, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {v5, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 825
    invoke-virtual {p1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 826
    :goto_0
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 827
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result v2

    .line 828
    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    if-nez v2, :cond_2

    .line 829
    invoke-virtual {v4, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 830
    :cond_2
    invoke-virtual {v4, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 831
    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 832
    :goto_1
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 833
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result p3

    .line 834
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    if-nez p3, :cond_3

    .line 835
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void

    .line 836
    :cond_3
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 837
    invoke-virtual {p1, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void

    .line 838
    :cond_4
    :goto_2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    .line 839
    invoke-virtual {p2, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 840
    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 841
    iget-object p2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    .line 842
    invoke-virtual {p2, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 843
    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 844
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    .line 845
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 846
    invoke-virtual {p1, p0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public final a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/rm;)V
    .locals 12

    const-string v0, "analytics/startup"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "deviceid"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/nm;->c:Lio/appmetrica/analytics/impl/Wb;

    invoke-virtual {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/nm;->a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;Lio/appmetrica/analytics/impl/Wb;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "app_set_id"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "app_set_id_scope"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetIdScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "app_platform"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "protocol_version"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getProtocolVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "analytics_sdk_version_name"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "model"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "os_version"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "screen_width"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "screen_height"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "screen_dpi"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenDpi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "scalefactor"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "device_type"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v1, "queries"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "query_hosts"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "features"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/nm;->b:Lio/appmetrica/analytics/impl/Ad;

    check-cast v3, Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Nk;->g()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v5, "permissions_collecting"

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v7, "features_collecting"

    invoke-virtual {v4, v7}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v8, "google_aid"

    invoke-virtual {v4, v8}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v9, "huawei_oaid"

    invoke-virtual {v4, v9}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v10, "sim_info"

    invoke-virtual {v4, v10}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v11, "ssl_pinning"

    invoke-virtual {v4, v11}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->wrapFeatures([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "app_debuggable"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Lio/appmetrica/analytics/impl/Y5;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "app_version_name"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "app_build_number"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-boolean v0, p2, Lio/appmetrica/analytics/impl/rm;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lio/appmetrica/analytics/impl/rm;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v4, "country_init"

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "detect_locale"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    :goto_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/rm;->i:Lio/appmetrica/analytics/impl/F3;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v4, "distribution_customization"

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v6, "clids_set"

    invoke-virtual {v4, v6}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F3;->b:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, "retail"

    goto :goto_1

    :cond_3
    const-string v0, "satellite"

    goto :goto_1

    :cond_4
    const-string v0, "api"

    :goto_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "clids_set_source"

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/rm;->f:Ljava/lang/String;

    iget-object v2, p2, Lio/appmetrica/analytics/impl/rm;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p2, Lio/appmetrica/analytics/impl/rm;->o:Lio/appmetrica/analytics/impl/sg;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/sg;->b:Lio/appmetrica/analytics/impl/yg;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lio/appmetrica/analytics/impl/yg;->a()Lio/appmetrica/analytics/impl/og;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_6

    iget-object v0, v3, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    iget v2, v3, Lio/appmetrica/analytics/impl/og;->d:I

    invoke-static {v2}, Lio/appmetrica/analytics/impl/ng;->a(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v4, "install_referrer"

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez v2, :cond_7

    const-string v2, "null"

    :cond_7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "install_referrer_source"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_8
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "time"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "stat_sending"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "retry_policy"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "cache_control"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    invoke-virtual {v0, v5}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v2, "app_system_flag"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Y5;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v0, "attribution"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v0, "startup_update"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/nm;->a:Lio/appmetrica/analytics/impl/re;

    const-string v0, "external_attribution"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/re;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nm;->b:Lio/appmetrica/analytics/impl/Ad;

    check-cast p0, Lio/appmetrica/analytics/impl/Nk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nk;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    :cond_a
    return-void
.end method

.method public final bridge synthetic appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/appmetrica/analytics/impl/rm;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/nm;->a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/rm;)V

    return-void
.end method
