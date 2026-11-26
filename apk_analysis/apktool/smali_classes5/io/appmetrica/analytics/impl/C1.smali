.class public final Lio/appmetrica/analytics/impl/C1;
.super Lio/appmetrica/analytics/internal/IAppMetricaService$Stub;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/E1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/E1;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/internal/IAppMetricaService$Stub;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/C1;->a:Lio/appmetrica/analytics/impl/E1;

    return-void
.end method


# virtual methods
.method public final pauseUserSession(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/C1;->a:Lio/appmetrica/analytics/impl/E1;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/E1;->pauseUserSession(Landroid/os/Bundle;)V

    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/C1;->a:Lio/appmetrica/analytics/impl/E1;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/E1;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final resumeUserSession(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/C1;->a:Lio/appmetrica/analytics/impl/E1;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/E1;->resumeUserSession(Landroid/os/Bundle;)V

    return-void
.end method
