.class public final Lio/appmetrica/analytics/impl/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/cb;
    .locals 0

    .line 17
    new-instance p0, Lio/appmetrica/analytics/impl/si;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/si;-><init>()V

    return-object p0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    .line 16
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 7
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0

    .line 8
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0

    .line 9
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0

    .line 10
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    .line 11
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->UNKNOWN:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lio/appmetrica/analytics/StartupParamsCallback;->onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 12
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 14
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .line 15
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/pi;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/pi;-><init>()V

    return-object p0
.end method

.method public final clearAppEnvironment()V
    .locals 0

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ka;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/ka;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/ka;-><init>()V

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 6

    new-instance p0, Lio/appmetrica/analytics/AdvIdentifiersResult;

    new-instance v0, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    sget-object v1, Lio/appmetrica/analytics/AdvIdentifiersResult$Details;->INTERNAL_ERROR:Lio/appmetrica/analytics/AdvIdentifiersResult$Details;

    const/4 v2, 0x0

    const-string v3, "Device user is in locked state"

    invoke-direct {v0, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    new-instance v4, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    invoke-direct {v4, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    new-instance v5, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    invoke-direct {v5, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v5}, Lio/appmetrica/analytics/AdvIdentifiersResult;-><init>(Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;)V

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/yc;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/yc;

    new-instance v0, Lio/appmetrica/analytics/impl/Lc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Lc;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/K7;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/K7;-><init>(Lio/appmetrica/analytics/impl/Wa;)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/yc;-><init>(Lio/appmetrica/analytics/impl/Wa;Lio/appmetrica/analytics/impl/K7;)V

    return-object p0
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
