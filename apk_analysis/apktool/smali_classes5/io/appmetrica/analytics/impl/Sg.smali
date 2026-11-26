.class public Lio/appmetrica/analytics/impl/Sg;
.super Lio/appmetrica/analytics/impl/Eh;
.source "SourceFile"


# instance fields
.field public final e:Lio/appmetrica/analytics/impl/Ch;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Eh;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Sg;->e:Lio/appmetrica/analytics/impl/Ch;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Sg;->e:Lio/appmetrica/analytics/impl/Ch;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ch;->a:Lio/appmetrica/analytics/impl/a6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    iget p0, p0, Lio/appmetrica/analytics/impl/Ch;->c:I

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Mh;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lio/appmetrica/analytics/internal/IAppMetricaService;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    return-void
.end method
