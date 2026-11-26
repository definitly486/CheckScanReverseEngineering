.class public final Lio/appmetrica/analytics/impl/Lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qk;

.field public final b:Lio/appmetrica/analytics/impl/pk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/A4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/qk;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lio/appmetrica/analytics/impl/qk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Jk;ILjh2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Lk;->a:Lio/appmetrica/analytics/impl/qk;

    new-instance p1, Lio/appmetrica/analytics/impl/pk;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/pk;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lk;->b:Lio/appmetrica/analytics/impl/pk;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/pk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lk;->b:Lio/appmetrica/analytics/impl/pk;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/qk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lk;->a:Lio/appmetrica/analytics/impl/qk;

    return-object p0
.end method

.method public final getConfig()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleConfig;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lk;->b:Lio/appmetrica/analytics/impl/pk;

    return-object p0
.end method

.method public final getReporter()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleReporter;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lk;->a:Lio/appmetrica/analytics/impl/qk;

    return-object p0
.end method
