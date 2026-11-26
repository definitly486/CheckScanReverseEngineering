.class public final Lio/appmetrica/analytics/impl/Q4;
.super Lio/appmetrica/analytics/impl/Mh;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pf;)V
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/O8;

    new-instance v2, Lio/appmetrica/analytics/impl/Kl;

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    const-string v4, "Crash Environment"

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/O8;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/V3;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p0

    sget-object p1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->COMMUTATION:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setReporterType(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
