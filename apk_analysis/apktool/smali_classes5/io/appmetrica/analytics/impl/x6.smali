.class public final Lio/appmetrica/analytics/impl/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ei;

.field public final b:Lio/appmetrica/analytics/impl/Mh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/O8;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/x6;->a:Lio/appmetrica/analytics/impl/Ei;

    new-instance p3, Lio/appmetrica/analytics/impl/Mh;

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    sget-object v1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->CRASH:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct {v0, p4, v1}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object p4, p4, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-direct {p3, p1, v0, p2, p4}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/x6;->b:Lio/appmetrica/analytics/impl/Mh;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Mh;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x6;->b:Lio/appmetrica/analytics/impl/Mh;

    return-object p0
.end method
