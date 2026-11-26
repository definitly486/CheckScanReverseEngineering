.class public abstract Lio/appmetrica/analytics/impl/Ib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/impl/Xe;

    const-string v1, "io.appmetrica.analytics.flutter.AppMetricaPlugin"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Se;->a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v1

    const-string v2, "plugin:Flutter:AppMetrica"

    invoke-direct {v0, v2, v1}, Lio/appmetrica/analytics/impl/Xe;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Te;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Xe;

    const-string v2, "io.appmetrica.analytics.reactnative.AppMetricaPackage"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Se;->a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v2

    const-string v3, "plugin:React:AppMetrica"

    invoke-direct {v1, v3, v2}, Lio/appmetrica/analytics/impl/Xe;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Te;)V

    new-instance v2, Lio/appmetrica/analytics/impl/Xe;

    const-string v3, "com.varioqub.reactnative.VarioqubPackage"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/impl/Se;->a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v3

    const-string v4, "plugin:React:Varioqub"

    invoke-direct {v2, v4, v3}, Lio/appmetrica/analytics/impl/Xe;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Te;)V

    new-instance v3, Lio/appmetrica/analytics/impl/Xe;

    const-string v4, "io.appmetrica.adrevenueadapter.plugin.unity.AdRevenueAdapterProxy"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/Se;->a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v4

    const-string v5, "plugin:Unity:AdRevenueAdapter"

    invoke-direct {v3, v5, v4}, Lio/appmetrica/analytics/impl/Xe;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Te;)V

    new-instance v4, Lio/appmetrica/analytics/impl/Xe;

    const-string v5, "io.appmetrica.analytics.plugin.unity.AppMetricaProxy"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/appmetrica/analytics/impl/Se;->a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;

    move-result-object v5

    const-string v6, "plugin:Unity:AppMetrica"

    invoke-direct {v4, v6, v5}, Lio/appmetrica/analytics/impl/Xe;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Te;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/appmetrica/analytics/impl/Xe;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Ib;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Ib;->a:Ljava/util/List;

    return-object v0
.end method
