.class public final Lio/appmetrica/analytics/impl/uc;
.super Lio/appmetrica/analytics/impl/io;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/AppMetricaConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/db;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/io;-><init>(Lio/appmetrica/analytics/impl/db;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/uc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/fb;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/io;->a:Lio/appmetrica/analytics/impl/db;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/db;->a()Lio/appmetrica/analytics/impl/cb;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/cb;->a(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/fb;

    move-result-object p0

    return-object p0
.end method
